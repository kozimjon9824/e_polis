import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_days.freezed.dart';
part 'multi_days.g.dart';

@freezed
class MultiDays with _$MultiDays {
  const factory MultiDays({
    List<MultiDayModel>? items,
  }) = _MultiDays;

  factory MultiDays.fromJson(Map<String, dynamic> json) =>
      _$MultiDaysFromJson(json);
}

@freezed
class MultiDayModel with _$MultiDayModel {
  const factory MultiDayModel({
    int? id,
    String? name,
    int? day,
  }) = _MultiDayModel;

  factory MultiDayModel.fromJson(Map<String, dynamic> json) =>
      _$MultiDayModelFromJson(json);
}
