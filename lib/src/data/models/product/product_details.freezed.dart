// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDetailsResponse _$ProductDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _ProductDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailsResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsResponseCopyWith<ProductDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsResponseCopyWith<$Res> {
  factory $ProductDetailsResponseCopyWith(ProductDetailsResponse value,
          $Res Function(ProductDetailsResponse) then) =
      _$ProductDetailsResponseCopyWithImpl<$Res, ProductDetailsResponse>;
  @useResult
  $Res call({String? name, String? description});
}

/// @nodoc
class _$ProductDetailsResponseCopyWithImpl<$Res,
        $Val extends ProductDetailsResponse>
    implements $ProductDetailsResponseCopyWith<$Res> {
  _$ProductDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDetailsResponseCopyWith<$Res>
    implements $ProductDetailsResponseCopyWith<$Res> {
  factory _$$_ProductDetailsResponseCopyWith(_$_ProductDetailsResponse value,
          $Res Function(_$_ProductDetailsResponse) then) =
      __$$_ProductDetailsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? description});
}

/// @nodoc
class __$$_ProductDetailsResponseCopyWithImpl<$Res>
    extends _$ProductDetailsResponseCopyWithImpl<$Res,
        _$_ProductDetailsResponse>
    implements _$$_ProductDetailsResponseCopyWith<$Res> {
  __$$_ProductDetailsResponseCopyWithImpl(_$_ProductDetailsResponse _value,
      $Res Function(_$_ProductDetailsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_ProductDetailsResponse(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetailsResponse implements _ProductDetailsResponse {
  const _$_ProductDetailsResponse({this.name, this.description});

  factory _$_ProductDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailsResponseFromJson(json);

  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString() {
    return 'ProductDetailsResponse(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailsResponse &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailsResponseCopyWith<_$_ProductDetailsResponse> get copyWith =>
      __$$_ProductDetailsResponseCopyWithImpl<_$_ProductDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailsResponseToJson(
      this,
    );
  }
}

abstract class _ProductDetailsResponse implements ProductDetailsResponse {
  const factory _ProductDetailsResponse(
      {final String? name,
      final String? description}) = _$_ProductDetailsResponse;

  factory _ProductDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailsResponse.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailsResponseCopyWith<_$_ProductDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
