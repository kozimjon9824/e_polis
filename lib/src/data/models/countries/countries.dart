import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries.freezed.dart';
part 'countries.g.dart';

@freezed
class Countries with _$Countries {
  const factory Countries({
    List<CountryModel>? items,
  }) = _Countries;

  factory Countries.fromJson(Map<String, dynamic> json) =>
      _$CountriesFromJson(json);
}

@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({
    int? id,
    String? name1,
    String? name2,
    String? name3,
    String? ename,
    String? kod,
    int? active,
    @JsonKey(name: 'fond_id') int? fondId,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}
