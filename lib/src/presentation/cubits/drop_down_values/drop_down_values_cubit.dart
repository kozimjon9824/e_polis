import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/data/models/select_values/select_values.dart';
import 'package:e_polis/src/domain/usecases/main/get_drop_down_values.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drop_down_values_state.dart';

part 'drop_down_values_cubit.freezed.dart';

class DropDownValuesCubit extends Cubit<DropDownValuesState> {
  DropDownValuesCubit(this._useCase) : super(const DropDownValuesState());
  final GetDropDownValuesUseCase _useCase;

  void loadValues() async {
    emit(state.copyWith(status: StateStatus.loading));
    var result = await _useCase.call(NoParams());
    result.fold(
      (failure) =>
          emit(state.copyWith(status: StateStatus.error, failure: failure)),
      (response) {
        List<KeyValue> regions = response.regions ?? [];
        List<String> regionsList =
            regions.map((region) => region.value ?? '').toList();
        List<KeyValue> vehicleTypes = response.vehicleTypes ?? [];
        List<String> vehicleTypesList =
            vehicleTypes.map((vehicle) => vehicle.value ?? '').toList();
        List<KeyValue> relatives = response.relative ?? [];
        List<String> relativesList =
            relatives.map((relative) => relative.value ?? '').toList();
        emit(state.copyWith(
          status: StateStatus.success,
          regions: regions,
          regionsList: regionsList,
          vehicles: vehicleTypes,
          vehiclesList: vehicleTypesList,
          relative: relatives,
          relativeList: relativesList,
        ));
      },
    );
  }

  int getRegionKey(String value) {
    var regions = state.regions;
    return regions.singleWhere((element) => element.value == value).key!;
  }

  int getVehicleTypeKey(String value) {
    var vehicles = state.vehicles;
    return vehicles.singleWhere((element) => element.value == value).key!;
  }

  int getRelativeKey(String value) {
    var relatives = state.relative;
    return relatives
        .singleWhere((element) => element.value == value,
            orElse: () => const KeyValue(key: 0))
        .key!;
  }
}
