import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_values.freezed.dart';

part 'select_values.g.dart';

@freezed
class SelectValues with _$SelectValues {
  const factory SelectValues(
      {List<KeyValue>? regions,
      List<KeyValue>? vehicleTypes,
      List<KeyValue>? relative}) = _SelectValues;

  factory SelectValues.fromJson(Map<String, dynamic> json) =>
      _$SelectValuesFromJson(json);
}

@freezed
class KeyValue with _$KeyValue {
  const factory KeyValue({
    int? key,
    String? value,
  }) = _KeyValue;

  factory KeyValue.fromJson(Map<String, dynamic> json) =>
      _$KeyValueFromJson(json);
}
