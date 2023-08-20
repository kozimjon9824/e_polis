import 'package:e_polis/injector.dart';
import 'package:e_polis/src/presentation/cubits/buy_travel/buy_travel_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../../../../core/utils/helper_models.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../components/custom_button.dart';
import '../../../../cubits/travel_booking/travel_booking_cubit.dart';
import '../../../payment_success/payment_success.dart';
import 'widgets/insurance_prices.dart';
import 'widgets/payment_types.dart';

class TravellerPaymentView extends StatelessWidget {
  const TravellerPaymentView({
    Key? key,
    required this.travelAttModel,
  }) : super(key: key);
  final TravelAttModel travelAttModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<BuyTravelCubit>(),
      child: BlocBuilder<TravelBookingCubit, TravelBookingState>(
        builder: (context, bookingState) {
          return KeyboardDismisser(
            child: Scaffold(
              body: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                children: [
                  TravelContractPrice(travelAttModel: travelAttModel),
                  const SizedBox(height: 24),
                  const TravelPaymentTypes(),
                ],
              ),
              bottomNavigationBar: BlocConsumer<BuyTravelCubit, BuyTravelState>(
                listener: (context, state) {
                  if (state.status == StateStatus.success) {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.paymentSuccess,
                      arguments: SuccessPageArgs(
                        name:
                            '${bookingState.lName ?? ''} ${bookingState.fName ?? ''}',
                        amount: numberFormat(
                            travelAttModel.calResponse?.insuranceLiability ?? 0),
                      ),
                    );
                  }
                },
                builder: (context, buyState) {
                  return SafeArea(
                    minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                    child: CustomButton(
                      text: AppLocalizations.of(context).next,
                      isLoading: buyState.status == StateStatus.loading,
                      onTap: () {
                        context.read<BuyTravelCubit>().buyTravelInsurance(
                              travelAttModel: travelAttModel,
                              fName: bookingState.fName,
                              lName: bookingState.lName,
                              phone: bookingState.phone,
                              address: bookingState.address,
                              bDate: bookingState.bDate,
                              passportSeries: bookingState.passportSeries,
                              passportNumber: bookingState.passportNumber,
                              inn: bookingState.inn,
                              listOfTravellers: bookingState.listOfTravellers,
                            );
                      },
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
