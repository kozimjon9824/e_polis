import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_response.freezed.dart';
part 'photo_response.g.dart';

@freezed
class PhotoResponse with _$PhotoResponse {
  const factory PhotoResponse({
    String? id,
  }) = _PhotoResponse;

  factory PhotoResponse.fromJson(Map<String, dynamic> json) =>
      _$PhotoResponseFromJson(json);
}
