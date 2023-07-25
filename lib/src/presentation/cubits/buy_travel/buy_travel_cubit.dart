import 'package:bloc/bloc.dart';
import 'package:e_polis/src/core/utils/helper_models.dart';
import 'package:e_polis/src/domain/usecases/travel/travel_booking.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/error/error.dart';
import '../../../core/utils/utils.dart';
import '../../../data/models/travel_booking/travel_booking_request.dart';

part 'buy_travel_state.dart';

part 'buy_travel_cubit.freezed.dart';

class BuyTravelCubit extends Cubit<BuyTravelState> {
  BuyTravelCubit(this._travelBookingUseCase) : super(const BuyTravelState());

  final TravelBookingUseCase _travelBookingUseCase;

  void buyTravelInsurance({
    required TravelAttModel travelAttModel,
    required List<TravellerMainInputs>? listOfTravellers,
    required String? fName,
    required String? lName,
    required String? phone,
    required String? address,
    required String? bDate,
    required String? passportSeries,
    required String? passportNumber,
    required String? inn,
  }) async {
    emit(state.copyWith(status: StateStatus.loading));
    var request = TravelBookingRequest(
      policy: Policy(
        policyType: travelAttModel.policyType?.id,
        multiDays: travelAttModel.multiDays?.id,
        startDate: dateConverter(
            date: travelAttModel.startDate ?? '',
            inFormat: 'dd.MM.yyyy',
            outFormat: 'yyyy-MM-dd'),
        endDate: dateConverter(
            date: travelAttModel.endDate ?? '',
            inFormat: 'dd.MM.yyyy',
            outFormat: 'yyyy-MM-dd'),
        country: travelAttModel.countries?.map((e) => e.id!).toList().join(':'),
        program: travelAttModel.programs?.id,
        tripPurpose: travelAttModel.tripPurpose?.id,
        travelersType: travelAttModel.travelersType?.id,
      ),
      applicant: Applicant(
        pinfl: inn,
        passport: Passport(series: passportSeries, number: passportNumber),
        firstname: fName,
        lastname: lName,
        birthdate: dateConverter(
          date: bDate ?? '',
          inFormat: 'dd.MM.yyyy',
          outFormat: 'yyyy-MM-dd',
        ),
        address: address,
        phone: phone,
      ),
      cost:
          Cost(insurancePremium: travelAttModel.calResponse?.insurancePremium),
      travelers: listOfTravellers
          ?.map(
            (traveller) => Traveler(
              pinfl: traveller.inn,
              passport: Passport(
                  series: traveller.idSeries, number: traveller.idNumber),
              firstname: traveller.firstName,
              lastname: traveller.lastName,
              birthdate: dateConverter(
                date: traveller.birth ?? '',
                inFormat: 'dd.MM.yyyy',
                outFormat: 'yyyy-MM-dd',
              ),
            ),
          )
          .toList(),
    );

    var result = await _travelBookingUseCase.call(
      TravelBookingParams(request: request, id: travelAttModel.productId ?? ''),
    );
    result.fold(
      (failure) =>
          emit(state.copyWith(status: StateStatus.error, failure: failure)),
      (response) => emit(
        state.copyWith(status: StateStatus.success),
      ),
    );
  }
}
