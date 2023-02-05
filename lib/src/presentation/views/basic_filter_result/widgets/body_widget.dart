import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/data/models/basic_filter/request/basic_filter_request.dart';
import 'package:e_polis/src/presentation/components/loading.dart';
import 'package:e_polis/src/presentation/cubits/insurance_basic_filter/insurance_basic_filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../data/models/basic_filter/response/basic_filter_response.dart';
import '../../../cubits/auth/auth_cubit.dart';
import '../../insurcance_details/insurance_details.dart';
import '../../insurcance_details/widgets/dialog_body.dart';
import 'insurance_details.dart';
import 'nothing_found.dart';

class InsurancesResults extends StatelessWidget {
  const InsurancesResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InsuranceBasicFilterCubit, InsuranceBasicFilterState>(
      builder: (context, state) {
        if (state.status == StateStatus.loading) {
          return const LoadingWidget();
        }
        if (state.data?.isEmpty ?? false) {
          return const NothingFound();
        }
        return BodyWidget(
            list: state.data ?? [],
            request: state.basicFilterRequest,
            text: AppLocalizations.of(context).weFoundSeveralOffers);
      },
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
    required this.list,
    required this.text,
    required this.request,
  }) : super(key: key);
  final List<BasicFilterData> list;
  final BasicFilterRequest request;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      children: [
        Text(text, style: AppTextStyles.styleW400S14Grey6),
        const SizedBox(height: 24),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) => InsuranceDetail(
                  image: list[index].logo,
                  polisPrice: numberFormat(list[index].policyAmount?.toInt()),
                  insurancePrice:
                      numberFormat(list[index].insuranceAmount?.toInt()),
                  onBuy: () {
                    context
                        .read<InsuranceBasicFilterCubit>()
                        .inputProductId(list[index].id ?? '');
                    if (context.read<AuthCubit>().state
                        is UnAuthenticatedState) {
                      showDialog(
                          context: context,
                          builder: (_) => DialogBody(onSubmit: () {
                                Navigator.pop(context);
                                Navigator.pushNamed(context, AppRoutes.login);
                              }));
                    } else {
                      Navigator.pushNamed(
                          context, AppRoutes.insuranceRegistration,
                          arguments: InsurancePageArguments(
                              id: list[index].id ?? '', request: request));
                    }
                  },
                  onDetailTap: () {
                    Navigator.pushNamed(context, AppRoutes.insuranceDetails,
                        arguments: InsurancePageArguments(
                            id: list[index].id ?? '', request: request));
                  },
                ),
            separatorBuilder: (_, __) => const SizedBox(height: 16),
            itemCount: list.length)
      ],
    );
  }
}
