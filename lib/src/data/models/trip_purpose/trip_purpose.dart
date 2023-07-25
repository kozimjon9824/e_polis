import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_purpose.freezed.dart';

part 'trip_purpose.g.dart';

@freezed
class TripPurpose with _$TripPurpose {
  const factory TripPurpose({
    List<TripModel>? items,
  }) = _TripPurpose;

  factory TripPurpose.fromJson(Map<String, dynamic> json) =>
      _$TripPurposeFromJson(json);
}

@freezed
class TripModel with _$TripModel {
  const factory TripModel({
    int? id,
    String? name,
  }) = _TripModel;

  factory TripModel.fromJson(Map<String, dynamic> json) =>
      _$TripModelFromJson(json);
}
