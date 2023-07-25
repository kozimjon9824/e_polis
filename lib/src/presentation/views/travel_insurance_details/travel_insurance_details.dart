import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_polis/injector.dart';
import 'package:e_polis/src/presentation/components/error_view.dart';
import 'package:e_polis/src/presentation/components/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../generated/l10n.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../core/utils/helper_models.dart';
import '../../../core/utils/utils.dart';
import '../../components/custom_button.dart';
import '../../cubits/travel_calculator/travel_calculator_cubit.dart';
import '../insurcance_details/widgets/price_tile.dart';

class TravelInsuranceDetailsPage extends StatelessWidget {
  const TravelInsuranceDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final travelAtt =
        ModalRoute.of(context)!.settings.arguments as TravelAttModel;
    return BlocProvider(
      create: (context) =>
          inject<TravelCalculatorCubit>()..calculateTravelPrice(travelAtt),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).onlineInsuranceTravel),
        ),
        body: BlocBuilder<TravelCalculatorCubit, TravelCalculatorState>(
          builder: (context, state) {
            if (state.status == StateStatus.loading) {
              return const LoadingWidget();
            }
            if (state.status == StateStatus.error) {
              return ErrorView(
                onTap: () {
                  context
                      .read<TravelCalculatorCubit>()
                      .calculateTravelPrice(travelAtt);
                },
                errorText: state.failure.getLocalizedMessage(context),
              );
            }
            return ListView(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              children: [
                // Align(
                //   alignment: Alignment.topLeft,
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(8),
                //     child: CachedNetworkImage(
                //       imageUrl: '',
                //       height: 44,
                //       width: 200,
                //       fit: BoxFit.contain,
                //       errorWidget: (_, __, ___) => const SizedBox.shrink(),
                //       placeholder: (_, __) =>
                //           const CupertinoActivityIndicator(),
                //     ),
                //   ),
                // ),
                // const SizedBox(height: 24),
                // Text(
                //   AppLocalizations.of(context).travelInsDesc,
                //   style: AppTextStyles.styleW400S14Grey9,
                // ),
                // const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.grey50,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PriceTile(
                        title: AppLocalizations.of(context).polisPrice,
                        price:
                            '${numberFormat(state.calResponse?.insurancePremium ?? 0)} ${AppLocalizations.of(context).sum}',
                        textStyle: AppTextStyles.styleW700S18Green,
                      ),
                      const SizedBox(height: 12),
                      PriceTile(
                        title: AppLocalizations.of(context).insurancePrice,
                        price:
                            '${numberFormat(state.calResponse?.insuranceLiability ?? 0)} ${AppLocalizations.of(context).sum}',
                      ),
                      const SizedBox(height: 12),
                      PriceTile(
                        title: AppLocalizations.of(context).travelStartDate,
                        price: travelAtt.startDate ?? '',
                      ),
                      const SizedBox(height: 12),
                      PriceTile(
                        title: AppLocalizations.of(context).travelEndDate,
                        price: travelAtt.endDate ?? '',
                      ),
                      const SizedBox(height: 12),
                      PriceTile(
                        title: AppLocalizations.of(context).travelCountries,
                        price: travelAtt.countries
                                ?.map((e) => e.name2)
                                .toList()
                                .join(', ') ??
                            '',
                      ),
                      const SizedBox(height: 12),
                      PriceTile(
                        title: AppLocalizations.of(context).travelProgram,
                        price: travelAtt.programs?.name ?? '',
                      ),
                      const SizedBox(height: 12),
                      PriceTile(
                        title: AppLocalizations.of(context).travelPurpose,
                        price: travelAtt.tripPurpose?.name ?? '',
                      ),
                      const SizedBox(height: 12),
                      PriceTile(
                        title: AppLocalizations.of(context).traveller,
                        price: travelAtt.travelersType?.name ?? '',
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
        bottomNavigationBar:
            BlocBuilder<TravelCalculatorCubit, TravelCalculatorState>(
          builder: (context, state) {
            return SafeArea(
              minimum: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: CustomButton(
                text: AppLocalizations.of(context).buy,
                onTap: () {
                  if (state.status == StateStatus.success) {
                    var data =
                        travelAtt.copyWith(calResponse: state.calResponse);
                    Navigator.pushNamed(
                      context,
                      AppRoutes.travelBooking,
                      arguments: data,
                    );
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
