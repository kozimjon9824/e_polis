import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';

part 'book_model.g.dart';

@freezed
class BookModel with _$BookModel {
  const factory BookModel(
      {ApplicantModel? applicant,
      CalculationModel? calculation,
      String? startDate,
      List<DriverModel>? drivers}) = _BookModel;

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);
}

@freezed
class ApplicantPassport with _$ApplicantPassport {
  const factory ApplicantPassport({
    String? series,
    String? number,
    String? pinfl,
  }) = _ApplicantPassport;

  factory ApplicantPassport.fromJson(Map<String, dynamic> json) =>
      _$ApplicantPassportFromJson(json);
}

@freezed
class ApplicantModel with _$ApplicantModel {
  const factory ApplicantModel({ApplicantPassport? passport, String? phone}) =
      _ApplicantModel;

  factory ApplicantModel.fromJson(Map<String, dynamic> json) =>
      _$ApplicantModelFromJson(json);
}

@freezed
class CalculationModel with _$CalculationModel {
  const factory CalculationModel({
    String? region,
    String? vehicleType,
    bool? isVip,
    String? period,
  }) = _CalculationModel;

  factory CalculationModel.fromJson(Map<String, dynamic> json) =>
      _$CalculationModelFromJson(json);
}

@freezed
class DriverModel with _$DriverModel {
  const factory DriverModel(
      {String? birthDate,
      int? relative,
      DriverPassport? passport}) = _DriverModel;

  factory DriverModel.fromJson(Map<String, dynamic> json) =>
      _$DriverModelFromJson(json);
}

@freezed
class DriverPassport with _$DriverPassport {
  const factory DriverPassport({String? series, String? number}) =
      _DriverPassport;

  factory DriverPassport.fromJson(Map<String, dynamic> json) =>
      _$DriverPassportFromJson(json);
}
