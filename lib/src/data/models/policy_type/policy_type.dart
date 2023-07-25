import 'package:freezed_annotation/freezed_annotation.dart';

part 'policy_type.freezed.dart';

part 'policy_type.g.dart';

@freezed
class PolicyType with _$PolicyType {
  const factory PolicyType({
    List<PolicyTypeModel>? items,
  }) = _PolicyType;

  factory PolicyType.fromJson(Map<String, dynamic> json) =>
      _$PolicyTypeFromJson(json);
}

@freezed
class PolicyTypeModel with _$PolicyTypeModel {
  const factory PolicyTypeModel({
    int? id,
    String? name,
  }) = _PolicyTypeModel;

  factory PolicyTypeModel.fromJson(Map<String, dynamic> json) =>
      _$PolicyTypeModelFromJson(json);
}
