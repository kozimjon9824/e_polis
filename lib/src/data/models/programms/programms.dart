import 'package:freezed_annotation/freezed_annotation.dart';

part 'programms.freezed.dart';

part 'programms.g.dart';

@freezed
class Programs with _$Programs {
  const factory Programs({
    List<ProgramModel>? items,
  }) = _Programs;

  factory Programs.fromJson(Map<String, dynamic> json) =>
      _$ProgramsFromJson(json);
}

@freezed
class ProgramModel with _$ProgramModel {
  const factory ProgramModel({
    int? id,
    String? name,
    int? liability,
    int? active,
  }) = _ProgramModel;

  factory ProgramModel.fromJson(Map<String, dynamic> json) =>
      _$ProgramModelFromJson(json);
}
