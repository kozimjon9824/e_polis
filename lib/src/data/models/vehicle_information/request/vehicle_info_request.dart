import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_info_request.freezed.dart';
part 'vehicle_info_request.g.dart';

@freezed
class VehicleInfoRequest with _$VehicleInfoRequest {
  const factory VehicleInfoRequest(
      {String? plateNumber,
      TechnicalPassport? technicalPassport}) = _VehicleInfoRequest;

  factory VehicleInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$VehicleInfoRequestFromJson(json);
}

@freezed
class TechnicalPassport with _$TechnicalPassport {
  const factory TechnicalPassport({String? series, String? number}) =
      _TechnicalPassport;

  factory TechnicalPassport.fromJson(Map<String, dynamic> json) =>
      _$TechnicalPassportFromJson(json);
}
