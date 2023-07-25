import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/domain/usecases/travel/countries.dart';
import 'package:e_polis/src/domain/usecases/travel/multi_days.dart';
import 'package:e_polis/src/domain/usecases/travel/policy_type.dart';
import 'package:e_polis/src/domain/usecases/travel/programs.dart';
import 'package:e_polis/src/domain/usecases/travel/travel_types.dart';
import 'package:e_polis/src/domain/usecases/travel/trip_purpose.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/error/error.dart';
import '../../../core/utils/helper_models.dart';
import '../../../core/utils/utils.dart';
import '../../../data/models/countries/countries.dart';
import '../../../data/models/multi_days/multi_days.dart';
import '../../../data/models/policy_type/policy_type.dart';
import '../../../data/models/programms/programms.dart';
import '../../../data/models/travelers_type/travelers_type.dart';
import '../../../data/models/trip_purpose/trip_purpose.dart';

part 'travel_attributes_state.dart';

part 'travel_attributes_cubit.freezed.dart';

class TravelAttributesCubit extends Cubit<TravelAttributesState> {
  TravelAttributesCubit(
    this._countriesUseCase,
    this._programsUseCase,
    this._multiDaysUseCase,
    this._policyTypeUseCase,
    this._tripPurposeUseCase,
    this._travelTypesUseCase,
  ) : super(
          TravelAttributesState(
            travelAttModel:
                TravelAttModel(textControllers: [TextEditingController()]),
          ),
        );

  final GetCountriesUseCase _countriesUseCase;
  final GetProgramsUseCase _programsUseCase;
  final GetMultiDaysUseCase _multiDaysUseCase;
  final GetPolicyTypeUseCase _policyTypeUseCase;
  final GetTripPurposeUseCase _tripPurposeUseCase;
  final GetTravelTypesUseCase _travelTypesUseCase;

  void loadAtt() async {
    emit(state.copyWith(status: StateStatus.loading));
    await Future.wait([
      _loadCountries(),
      _loadPrograms(),
      _loadMultiDays(),
      _loadPolicyType(),
      _loadTripPurpose(),
      _loadTravelTypes(),
    ]);
    emit(state.copyWith(status: StateStatus.unknown));
  }

  Future<void> _loadCountries() async {
    var result = await _countriesUseCase.call(NoParams());
    result.fold(
      (failure) =>
          emit(state.copyWith(status: StateStatus.error, failure: failure)),
      (response) => emit(state.copyWith(countries: response)),
    );
  }

  Future<void> _loadPrograms() async {
    var result = await _programsUseCase.call(NoParams());
    result.fold(
      (failure) =>
          emit(state.copyWith(status: StateStatus.error, failure: failure)),
      (response) => emit(state.copyWith(programs: response)),
    );
  }

  Future<void> _loadMultiDays() async {
    var result = await _multiDaysUseCase.call(NoParams());
    result.fold(
      (failure) =>
          emit(state.copyWith(status: StateStatus.error, failure: failure)),
      (response) => emit(state.copyWith(multiDays: response)),
    );
  }

  Future<void> _loadPolicyType() async {
    var result = await _policyTypeUseCase.call(NoParams());
    result.fold(
      (failure) =>
          emit(state.copyWith(status: StateStatus.error, failure: failure)),
      (response) => emit(state.copyWith(policyType: response)),
    );
  }

  Future<void> _loadTripPurpose() async {
    var result = await _tripPurposeUseCase.call(NoParams());
    result.fold(
      (failure) =>
          emit(state.copyWith(status: StateStatus.error, failure: failure)),
      (response) => emit(state.copyWith(tripPurpose: response)),
    );
  }

  Future<void> _loadTravelTypes() async {
    var result = await _travelTypesUseCase.call(NoParams());
    result.fold(
      (failure) =>
          emit(state.copyWith(status: StateStatus.error, failure: failure)),
      (response) => emit(state.copyWith(travelersType: response)),
    );
  }

  void selectProgram(ProgramModel programs) {
    TravelAttModel model = state.travelAttModel!;
    var newModel = model.copyWith(programs: programs);
    emit(state.copyWith(status: StateStatus.unknown, travelAttModel: newModel));
  }

  void selectPolicyType(PolicyTypeModel policyTypeModel) {
    TravelAttModel model = state.travelAttModel!;
    var newModel = model.copyWith(policyType: policyTypeModel);
    emit(state.copyWith(status: StateStatus.unknown, travelAttModel: newModel));
  }

  void selectMultiDays(MultiDayModel multiDayModel) {
    TravelAttModel model = state.travelAttModel!;
    var newModel = model.copyWith(multiDays: multiDayModel);
    emit(state.copyWith(status: StateStatus.unknown, travelAttModel: newModel));
  }

  void selectStartDate(String startDate) {
    TravelAttModel model = state.travelAttModel!;
    var newModel = model.copyWith(startDate: startDate);
    emit(state.copyWith(status: StateStatus.unknown, travelAttModel: newModel));
  }

  void selectEndDate(String endDate) {
    TravelAttModel model = state.travelAttModel!;
    var newModel = model.copyWith(endDate: endDate);
    emit(state.copyWith(status: StateStatus.unknown, travelAttModel: newModel));
  }

  void addCountry(CountryModel country) {
    TravelAttModel model = state.travelAttModel!;
    List<CountryModel> countries = List.of(model.countries ?? []);
    countries.add(country);
    var newModel = model.copyWith(countries: countries);
    emit(state.copyWith(status: StateStatus.unknown, travelAttModel: newModel));
  }

  void removeCountry(CountryModel country) {
    TravelAttModel model = state.travelAttModel!;
    List<CountryModel> countries = List.of(model.countries ?? []);
    countries.remove(country);
    var newModel = model.copyWith(countries: countries);
    emit(state.copyWith(status: StateStatus.unknown, travelAttModel: newModel));
  }

  void selectTripPurpose(TripModel tripModel) {
    TravelAttModel model = state.travelAttModel!;
    var newModel = model.copyWith(tripPurpose: tripModel);
    emit(state.copyWith(status: StateStatus.unknown, travelAttModel: newModel));
  }

  void selectTravellersType(TravelTypeModel travelTypeModel) {
    TravelAttModel model = state.travelAttModel!;
    var newModel = model.copyWith(travelersType: travelTypeModel);
    emit(state.copyWith(status: StateStatus.unknown, travelAttModel: newModel));
  }

  void addTravellers() {
    TravelAttModel model = state.travelAttModel!;
    List<String> travellers = List.of(model.travellers);
    List<TextEditingController> textControllers =
        List.of(model.textControllers ?? []);
    travellers.add('');
    textControllers.add(TextEditingController());
    var newModel = model.copyWith(
      travellers: travellers,
      textControllers: textControllers,
    );
    emit(state.copyWith(status: StateStatus.unknown, travelAttModel: newModel));
  }

  void removeTravellers(int index) {
    TravelAttModel model = state.travelAttModel!;
    List<String> travellers = List.of(model.travellers);
    List<TextEditingController> textControllers =
        List.of(model.textControllers ?? []);
    if (travellers.length == 1) {
      return;
    }
    travellers.removeAt(index);
    textControllers.removeAt(index);
    var newModel = model.copyWith(
        travellers: travellers, textControllers: textControllers);
    emit(state.copyWith(status: StateStatus.unknown, travelAttModel: newModel));
  }

  void onBirthDateTraveller({required int index, required String text}) {
    TravelAttModel model = state.travelAttModel!;
    List<String> travellers = List.of(model.travellers);
    travellers[index] = text;
    var newModel = model.copyWith(travellers: travellers);
    emit(state.copyWith(status: StateStatus.unknown, travelAttModel: newModel));
  }

  void validSelection() {
    TravelAttModel model = state.travelAttModel!;
    if (model.travelersType?.id == 1) {
      if (model.travellers.length < 3 || model.travellers.length > 6) {
        emit(state.copyWith(
            status: StateStatus.error, failure: const TravelerCountFailure()));
      }
    }
    else{
      emit(state.copyWith(status: StateStatus.success));
    }
  }
}
