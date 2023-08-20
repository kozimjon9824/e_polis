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
import 'package:intl/intl.dart';
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
    emit(state.copyWith(
      status: StateStatus.unknown,
      travelAttModel: newModel,
    ));
  }

  void selectPolicyType(PolicyTypeModel policyTypeModel) {
    TravelAttModel model = state.travelAttModel!;
    var newModel = model.copyWith(policyType: policyTypeModel);
    emit(state.copyWith(
      status: StateStatus.unknown,
      travelAttModel: newModel,
    ));
  }

  void selectMultiDays(MultiDayModel multiDayModel) {
    TravelAttModel model = state.travelAttModel!;
    var newModel = model.copyWith(multiDays: multiDayModel);
    if (newModel.startDate != null) {
      _calculateEndDate(newModel, newModel.startDate!);
    } else {
      emit(state.copyWith(
        status: StateStatus.unknown,
        travelAttModel: newModel,
      ));
    }
  }

  void selectStartDate(String startDate) {
    TravelAttModel model = state.travelAttModel!;
    var newModel = model.copyWith(startDate: startDate);
    if (model.policyType?.id == 1) {
      _calculateEndDate(newModel, startDate);
    } else {
      emit(state.copyWith(
        status: StateStatus.unknown,
        travelAttModel: newModel,
      ));
    }
  }

  void _calculateEndDate(TravelAttModel model, String startDate) {
    int period = model.multiDays?.day ?? 0;
    final format = DateFormat('dd.MM.yyyy');
    DateTime gettingDate = format.parse(startDate);
    DateTime newDate = gettingDate.add(Duration(days: period - 1));
    final DateFormat formatter = DateFormat('dd.MM.yyyy');
    final String formatted = formatter.format(newDate);
    var newModelWithEndDate = model.copyWith(endDate: formatted);
    emit(state.copyWith(
      status: StateStatus.initial,
      travelAttModel: newModelWithEndDate,
    ));
  }

  void selectEndDate(String endDate) {
    TravelAttModel model = state.travelAttModel!;
    var newModel = model.copyWith(endDate: endDate);
    emit(state.copyWith(
      status: StateStatus.unknown,
      travelAttModel: newModel,
    ));
  }

  void addCountry(CountryModel country) {
    TravelAttModel model = state.travelAttModel!;
    List<CountryModel> countries = List.of(model.countries ?? []);
    countries.add(country);
    var newModel = model.copyWith(countries: countries);
    final bool isShengen = _getElementsAppearInBothList(
          countries.map((e) => e.id).toList(),
          shengenCountries,
        )?.isNotEmpty ??
        false;
    emit(state.copyWith(
      status: StateStatus.unknown,
      travelAttModel: newModel,
      isShengen: isShengen,
    ));
  }

  void removeCountry(CountryModel country) {
    TravelAttModel model = state.travelAttModel!;
    List<CountryModel> countries = List.of(model.countries ?? []);
    countries.remove(country);
    var newModel = model.copyWith(countries: countries);
    final bool isShengen = _getElementsAppearInBothList(
          countries.map((e) => e.id).toList(),
          shengenCountries,
        )?.isNotEmpty ??
        false;
    emit(state.copyWith(
      status: StateStatus.unknown,
      travelAttModel: newModel,
      isShengen: isShengen,
    ));
  }

  List? _getElementsAppearInBothList(List l1, List l2) {
    return l1.where((e) {
      return l2.contains(e);
    }).toList();
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

  void searchCountry(String word) async {
    List<CountryModel> countries = state.countries?.items ?? [];
    List<CountryModel> result = countries
        .where(
            (country) => country.name2?.contains(word.toUpperCase()) ?? false)
        .toList();
    emit(state.copyWith(
      status: StateStatus.unknown,
      searchResult: result,
    ));
  }

  void addTravellers() {
    TravelAttModel model = state.travelAttModel!;
    List<String> travellers = List.of(model.travellers);
    if (travellers.length == 6) {
      return;
    }
    List<TextEditingController> textControllers =
        List.of(model.textControllers ?? []);
    travellers.add('');
    textControllers.add(TextEditingController());
    var newModel = model.copyWith(
      travellers: travellers,
      textControllers: textControllers,
    );
    emit(state.copyWith(
      status: StateStatus.unknown,
      travelAttModel: newModel,
    ));
  }

  void selectCountOfTravellers(int count) {
    TravelAttModel model = state.travelAttModel!;
    List<String> travellers = List.of(model.travellers);
    List<TextEditingController> textControllers =
        List.of(model.textControllers ?? []);
    if (travellers.length > count) {
      travellers.removeRange(count - 1, travellers.length - 1);
      textControllers.removeRange(count - 1, travellers.length - 1);
      // textControllers.add(TextEditingController());
    } else {
      for (int i = travellers.length; i < count; i++) {
        travellers.add('');
        textControllers.add(TextEditingController());
      }
    }

    var newModel = model.copyWith(
      travellers: travellers,
      textControllers: textControllers,
    );
    emit(state.copyWith(
      status: StateStatus.unknown,
      travelAttModel: newModel,
    ));
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
    emit(state.copyWith(
      status: StateStatus.unknown,
      travelAttModel: newModel,
    ));
  }

  void onBirthDateTraveller({
    required int index,
    required String text,
  }) {
    TravelAttModel model = state.travelAttModel!;
    List<String> travellers = List.of(model.travellers);
    travellers[index] = text;
    var newModel = model.copyWith(travellers: travellers);
    emit(state.copyWith(status: StateStatus.unknown, travelAttModel: newModel));
  }

  void onChangeApplicant({required int index}) {
    TravelAttModel model = state.travelAttModel!;
    var newModel = model.copyWith(selectedTraveller: index);
    emit(state.copyWith(status: StateStatus.unknown, travelAttModel: newModel));
  }

  void validSelection() {
    TravelAttModel model = state.travelAttModel!;
    emit(state.copyWith(status: StateStatus.unknown));
    if (model.travelersType?.id == 1) {
      if (model.travellers.length < 3 || model.travellers.length > 6) {
        emit(state.copyWith(
            status: StateStatus.error, failure: const TravelerCountFailure()));
      } else {
        emit(state.copyWith(status: StateStatus.success));
      }
    } else {
      emit(state.copyWith(status: StateStatus.success));
    }
  }
}
