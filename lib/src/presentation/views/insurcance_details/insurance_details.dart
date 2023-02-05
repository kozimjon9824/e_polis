import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/data/models/basic_filter/request/basic_filter_request.dart';
import 'package:e_polis/src/presentation/components/error_view.dart';
import 'package:e_polis/src/presentation/cubits/insurance_details/insurance_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/insurance_details/insurance_details.dart';
import '../../components/custom_button.dart';
import '../../components/loading.dart';
import '../../cubits/auth/auth_cubit.dart';
import '../../cubits/insurance_basic_filter/insurance_basic_filter_cubit.dart';
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
                return SuccessBody(insuranceDetails: data, argument: arguments);
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
  const SuccessBody({Key? key, this.insuranceDetails, required this.argument})
      : super(key: key);
  final InsuranceDetails? insuranceDetails;
  final InsurancePageArguments argument;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(insuranceDetails?.name ?? '')),
      body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                    imageUrl: insuranceDetails?.logo ?? '', height: 44),
              ),
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
                      title: AppLocalizations.of(context).polisPrice,
                      price:
                          numberFormat(insuranceDetails?.policyAmount?.toInt()),
                      textStyle: AppTextStyles.styleW700S18Green),
                  const SizedBox(height: 12),
                  PriceTile(
                    title: AppLocalizations.of(context).insurancePrice,
                    price: numberFormat(
                        insuranceDetails?.insuranceAmount?.toInt()),
                  ),
                  const SizedBox(height: 12),
                  PriceTile(
                    title:
                        AppLocalizations.of(context).insuranceDamagePriceTitle,
                    price: numberFormat(insuranceDetails?.lifeDamage?.toInt()),
                  ),
                  const SizedBox(height: 12),
                  PriceTile(
                    title: AppLocalizations.of(context).compensationPriceTitle,
                    price:
                        numberFormat(insuranceDetails?.propertyDamage?.toInt()),
                  ),
                ],
              ),
            )
          ]),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: CustomButton(
          text: AppLocalizations.of(context).buy,
          onTap: () {
            context
                .read<InsuranceBasicFilterCubit>()
                .inputProductId(argument.id);
            if (context.read<AuthCubit>().state is UnAuthenticatedState) {
              showDialog(
                  context: context,
                  builder: (_) => DialogBody(onSubmit: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, AppRoutes.login);
                      }));
            } else {
              Navigator.pushNamed(context, AppRoutes.insuranceRegistration,
                  arguments: argument);
            }
          },
        ),
      ),
    );
  }
}
