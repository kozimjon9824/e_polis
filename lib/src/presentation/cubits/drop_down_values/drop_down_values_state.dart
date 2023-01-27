part of 'drop_down_values_cubit.dart';

@freezed
class DropDownValuesState with _$DropDownValuesState {
  const factory DropDownValuesState(
      {@Default(StateStatus.unknown) StateStatus status,
      @Default(UnknownFailure()) Failure failure,
      @Default([]) List<KeyValue> regions,
      @Default([]) List<String> regionsList,
      @Default([]) List<KeyValue> vehicles,
      @Default([]) List<String> vehiclesList,
      @Default([]) List<KeyValue> relative,
      @Default([]) List<String> relativeList}) = _DropDownValuesState;
}
