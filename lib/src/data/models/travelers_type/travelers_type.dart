import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'travelers_type.freezed.dart';
part 'travelers_type.g.dart';

@freezed
class TravelersType with _$TravelersType {
  const factory TravelersType({
    List<TravelTypeModel>? items,
  }) = _TravelersType;

  factory TravelersType.fromJson(Map<String, dynamic> json) =>
      _$TravelersTypeFromJson(json);
}

@freezed
class TravelTypeModel with _$TravelTypeModel {
  const factory TravelTypeModel({
    int? id,
    String? name,
  }) = _TravelTypeModel;

  factory TravelTypeModel.fromJson(Map<String, dynamic> json) =>
      _$TravelTypeModelFromJson(json);
}
