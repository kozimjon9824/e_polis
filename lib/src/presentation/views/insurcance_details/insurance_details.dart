import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:e_polis/src/data/models/basic_filter/request/basic_filter_request.dart';
import 'package:e_polis/src/presentation/components/error_view.dart';
import 'package:e_polis/src/presentation/cubits/insurance_details/insurance_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/insurance_details/insurance_details.dart';
import '../../components/custom_button.dart';
import '../../components/loading.dart';
import '../../cubits/auth/auth_cubit.dart';
import 'widgets/dialog_body.dart';
import 'widgets/price_tile.dart';

class InsuranceDetailsPage extends StatelessWidget {
  const InsuranceDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as InsurancePageArguments;
    return BlocProvider(
      create: (context) => inject<InsuranceDetailsCubit>()
        ..loadData(arguments.id, arguments.request),
      child: BlocBuilder<InsuranceDetailsCubit, InsuranceDetailsState>(
        builder: (context, state) {
          return state.when(
              loading: () => const LoadingWidget(),
              error: (failure) => ErrorView(onTap: () {}),
              loaded: (data) {
                return SuccessBody(insuranceDetails: data);
              });
        },
      ),
    );
  }
}

class InsurancePageArguments {
  final String id;
  final BasicFilterRequest request;

  InsurancePageArguments({required this.id, required this.request});
}

class SuccessBody extends StatelessWidget {
  const SuccessBody({
    Key? key,
    this.insuranceDetails,
  }) : super(key: key);
  final InsuranceDetails? insuranceDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(insuranceDetails?.name ?? '')),
      body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: CachedNetworkImage(
                  imageUrl: insuranceDetails?.logo ?? '', height: 44),
            ),
            const SizedBox(height: 24),
            Text(insuranceDetails?.description ?? '',
                style: AppTextStyles.styleW400S14Grey9),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.grey50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PriceTile(
                      title: 'Цена полиса',
                      price:
                          insuranceDetails?.policyAmount?.toInt().toString() ??
                              '',
                      textStyle: AppTextStyles.styleW700S18Green),
                  const SizedBox(height: 12),
                  PriceTile(
                    title: 'Страховая сумма',
                    price:
                        insuranceDetails?.insuranceAmount?.toInt().toString() ??
                            '',
                  ),
                  const SizedBox(height: 12),
                  PriceTile(
                    title:
                        'Страхование вреда, причиненного жизни и здоровью пострадавшей стороны',
                    price:
                        insuranceDetails?.lifeDamage?.toInt().toString() ?? '',
                  ),
                  const SizedBox(height: 12),
                  PriceTile(
                    title: 'Возмещение ущерба имуществу потерпевшего',
                    price:
                        insuranceDetails?.propertyDamage?.toInt().toString() ??
                            '',
                  ),
                ],
              ),
            )
          ]),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: CustomButton(
          text: 'КУПИТЬ',
          onTap: () {
            if (context.read<AuthCubit>().state is UnAuthenticatedState) {
              showDialog(
                  context: context,
                  builder: (_) => DialogBody(onSubmit: () {
                        Navigator.pushNamed(context, AppRoutes.login);
                      }));
            } else {
              Navigator.pushNamed(context, AppRoutes.insuranceRegistration);
            }
          },
        ),
      ),
    );
  }
}