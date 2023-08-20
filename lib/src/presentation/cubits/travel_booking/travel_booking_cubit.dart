import 'package:e_polis/src/domain/usecases/travel/get_info_by_passsport.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/error/error.dart';
import '../../../core/utils/helper_models.dart';
import '../../../core/utils/utils.dart';
import '../../../data/models/input_driver/request/driver_passport_input.dart';
import '../../../data/models/passport_data_response/passport_data_response.dart';

part 'travel_booking_state.dart';

part 'travel_booking_cubit.freezed.dart';

class TravelBookingCubit extends Cubit<TravelBookingState> {
  TravelBookingCubit(this._byPassportUseCase)
      : super(const TravelBookingState());
  final GetInfoByPassportUseCase _byPassportUseCase;

  void loadTravellers(TravelAttModel travelAttModel) {
    emit(state.copyWith(status: StateStatus.loading));
    List<TravellerMainInputs> listOfTravellers = travelAttModel.travellers
        .map((e) => TravellerMainInputs(birth: e))
        .toList();
    emit(state.copyWith(
      status: StateStatus.unknown,
      listOfTravellers: listOfTravellers,
    ));
  }

  void loadInfoByPassport(int index) async {
    List<TravellerMainInputs> list = state.listOfTravellers!;
    var model = list[index];
    if ((model.idSeries?.length != 2) ||
        (model.idNumber?.length != 7) ||
        (model.birth?.isEmpty ?? true)) {
      return;
    }
    emit(state.copyWith(status: StateStatus.loading));
    var result = await _byPassportUseCase.call(
      PassportDataParams(
        DriverPassportInputRequest(
          birthdate: dateConverter(
            date: model.birth ?? '',
            inFormat: 'dd.MM.yyyy',
            outFormat: 'yyyy-MM-dd',
          ),
          passport: PassportInputFields(
            series: model.idSeries,
            number: model.idNumber,
          ),
        ),
      ),
    );
    result.fold(
      (failure) {
        _onShow(index: index, show: true);
        emit(state.copyWith(failure: failure, status: StateStatus.error));
        _onDisable(
          index: index,
          isDisable: false,
        );
      },
      (response) {
        var pinfl = response.pinfl ?? '';
        var fName = response.firstName ?? '';
        var lName = response.lastName ?? '';

        onINN(index: index, text: pinfl ?? '');
        onFirstName(index: index, text: fName);
        onLastName(index: index, text: lName);
        _onShow(index: index, show: true);
        _onDisable(
          index: index,
          isDisable: (fName.isNotEmpty && lName.isNotEmpty && pinfl.isNotEmpty),
        );
      },
    );
  }

  void loadApplicantIDDbyBasicData({
    required String bDate,
    required String series,
    required String number,
  }) async {
    if ((series.length != 2) || (number.length != 7) || (bDate.isEmpty)) {
      return;
    }
    emit(state.copyWith(status: StateStatus.loading));
    var result = await _byPassportUseCase.call(
      PassportDataParams(
        DriverPassportInputRequest(
          birthdate: dateConverter(
            date: bDate ?? '',
            inFormat: 'dd.MM.yyyy',
            outFormat: 'yyyy-MM-dd',
          ),
          passport: PassportInputFields(
            series: series,
            number: number,
          ),
        ),
      ),
    );
    result.fold(
      (failure) {
        emit(state.copyWith(failure: failure, status: StateStatus.error));
      },
      (response) {
        emit(state.copyWith(
            status: StateStatus.unknown, applicantData: response));
      },
    );
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

  void _onDisable({required int index, required bool isDisable}) {
    List<TravellerMainInputs> model = state.listOfTravellers!;
    model[index].isDisable = isDisable;
    emit(state.copyWith(status: StateStatus.unknown, listOfTravellers: model));
  }

  void _onShow({required int index, required bool show}) {
    List<TravellerMainInputs> model = state.listOfTravellers!;
    model[index].isHide = show;
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
    List<TravellerMainInputs> model = List.of(state.listOfTravellers!);
    String? bd = model[index].birth;
    model[index] = TravellerMainInputs(birth: bd, idSeries: '', idNumber: '');
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

  void onApplicantSameWithTraveller({
    required int index,
    required String fName,
    required String lName,
    required String bDate,
    required String passportSeries,
    required String passportNumber,
    required String inn,
  }) {
    List<TravellerMainInputs> model = state.listOfTravellers!;
    model[index].lastName = lName;
    model[index].firstName = fName;
    model[index].birth = bDate;
    model[index].idSeries = passportSeries;
    model[index].idNumber = passportNumber;
    model[index].inn = inn;
    model[index].isDisable = true;
    model[index].isHide = true;
    emit(state.copyWith(status: StateStatus.unknown, listOfTravellers: model));
  }
}
