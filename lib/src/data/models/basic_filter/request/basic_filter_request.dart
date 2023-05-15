import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_filter_request.freezed.dart';

part 'basic_filter_request.g.dart';

@freezed
class BasicFilterRequest with _$BasicFilterRequest {
  const factory BasicFilterRequest({
    int? region,
    int? vehicleType,
    bool? isVip,
    String? period,
  }) = _BasicFilterRequest;

  factory BasicFilterRequest.fromJson(Map<String, dynamic> json) =>
      _$BasicFilterRequestFromJson(json);
}
