import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/error/error.dart';
import '../../../core/utils/helper_models.dart';
import '../../../core/utils/utils.dart';

part 'travel_booking_state.dart';

part 'travel_booking_cubit.freezed.dart';

class TravelBookingCubit extends Cubit<TravelBookingState> {
  TravelBookingCubit() : super(const TravelBookingState());

  void loadTravellers(TravelAttModel travelAttModel) {
    List<TravellerMainInputs> listOfTravellers = travelAttModel.travellers
        .map((e) => TravellerMainInputs(birth: e))
        .toList();
    emit(state.copyWith(
      status: StateStatus.unknown,
      listOfTravellers: listOfTravellers,
    ));
  }

  void onChangeBD({required int index, required String text}) {
    List<TravellerMainInputs> model = state.listOfTravellers!;
    model[index].birth = text;
    emit(state.copyWith(status: StateStatus.unknown, listOfTravellers: model));
    print('BDDD:${state.listOfTravellers?[index].birth}');
  }

  void onIDSeries({required int index, required String text}) {
    List<TravellerMainInputs> model = state.listOfTravellers!;
    model[index].idSeries = text;
    emit(state.copyWith(status: StateStatus.unknown, listOfTravellers: model));
    print('IDSSS:${state.listOfTravellers?[index].idSeries}');
  }

  void onIDNumber({required int index, required String text}) {
    List<TravellerMainInputs> model = state.listOfTravellers!;
    model[index].idNumber = text;
    print('IDN:${model[index].idNumber}');
    emit(state.copyWith(status: StateStatus.unknown, listOfTravellers: model));
    print('IDNNN:${state.listOfTravellers?[index].idSeries}');
  }

  void onINN({required int index, required String text}) {
    List<TravellerMainInputs> model = state.listOfTravellers!;
    model[index].inn = text;
    emit(state.copyWith(status: StateStatus.unknown, listOfTravellers: model));
  }

  void onFirstName({required int index, required String text}) {
    List<TravellerMainInputs> model = state.listOfTravellers!;
    model[index].firstName = text;
    emit(state.copyWith(status: StateStatus.unknown, listOfTravellers: model));
  }

  void onLastName({required int index, required String text}) {
    List<TravellerMainInputs> model = state.listOfTravellers!;
    model[index].lastName = text;
    emit(state.copyWith(status: StateStatus.unknown, listOfTravellers: model));
  }

  void onClear({required int index}) {
    List<TravellerMainInputs> model = state.listOfTravellers!;
    model[index] = TravellerMainInputs();
    emit(state.copyWith(status: StateStatus.unknown, listOfTravellers: model));
  }

  bool isNext() {
    List<TravellerMainInputs> model = state.listOfTravellers!;
    for (int i = 0; i < model.length; i++) {
      var data = model[i];
      if ((data.birth?.isEmpty ?? true) ||
          (data.idSeries?.isEmpty ?? true) ||
          (data.idNumber?.isEmpty ?? true) ||
          (data.inn?.isEmpty ?? true) ||
          (data.firstName?.isEmpty ?? true) ||
          (data.lastName?.isEmpty ?? true)) {
        return false;
      }
    }
    return true;
  }

  void onApplicantData({
    required String fName,
    required String lName,
    required String phone,
    required String address,
    required String bDate,
    required String passportSeries,
    required String passportNumber,
    required String inn,
  }) {
    emit(
      state.copyWith(
        status: StateStatus.success,
        fName: fName,
        lName: lName,
        phone: phone,
        address: address,
        bDate: bDate,
        passportNumber: passportNumber,
        passportSeries: passportSeries,
        inn: inn,
      ),
    );
  }
}
