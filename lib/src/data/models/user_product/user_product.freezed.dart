// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProduct _$UserProductFromJson(Map<String, dynamic> json) {
  return _UserProduct.fromJson(json);
}

/// @nodoc
mixin _$UserProduct {
  List<UserProductData>? get details => throw _privateConstructorUsedError;
  String? get downloadUrl => throw _privateConstructorUsedError;
  bool? get removable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProductCopyWith<UserProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProductCopyWith<$Res> {
  factory $UserProductCopyWith(
          UserProduct value, $Res Function(UserProduct) then) =
      _$UserProductCopyWithImpl<$Res, UserProduct>;
  @useResult
  $Res call(
      {List<UserProductData>? details, String? downloadUrl, bool? removable});
}

/// @nodoc
class _$UserProductCopyWithImpl<$Res, $Val extends UserProduct>
    implements $UserProductCopyWith<$Res> {
  _$UserProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
    Object? downloadUrl = freezed,
    Object? removable = freezed,
  }) {
    return _then(_value.copyWith(
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<UserProductData>?,
      downloadUrl: freezed == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      removable: freezed == removable
          ? _value.removable
          : removable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserProductCopyWith<$Res>
    implements $UserProductCopyWith<$Res> {
  factory _$$_UserProductCopyWith(
          _$_UserProduct value, $Res Function(_$_UserProduct) then) =
      __$$_UserProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserProductData>? details, String? downloadUrl, bool? removable});
}

/// @nodoc
class __$$_UserProductCopyWithImpl<$Res>
    extends _$UserProductCopyWithImpl<$Res, _$_UserProduct>
    implements _$$_UserProductCopyWith<$Res> {
  __$$_UserProductCopyWithImpl(
      _$_UserProduct _value, $Res Function(_$_UserProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
    Object? downloadUrl = freezed,
    Object? removable = freezed,
  }) {
    return _then(_$_UserProduct(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<UserProductData>?,
      downloadUrl: freezed == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      removable: freezed == removable
          ? _value.removable
          : removable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProduct implements _UserProduct {
  const _$_UserProduct(
      {final List<UserProductData>? details, this.downloadUrl, this.removable})
      : _details = details;

  factory _$_UserProduct.fromJson(Map<String, dynamic> json) =>
      _$$_UserProductFromJson(json);

  final List<UserProductData>? _details;
  @override
  List<UserProductData>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? downloadUrl;
  @override
  final bool? removable;

  @override
  String toString() {
    return 'UserProduct(details: $details, downloadUrl: $downloadUrl, removable: $removable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProduct &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            (identical(other.removable, removable) ||
                other.removable == removable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_details), downloadUrl, removable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserProductCopyWith<_$_UserProduct> get copyWith =>
      __$$_UserProductCopyWithImpl<_$_UserProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProductToJson(
      this,
    );
  }
}

abstract class _UserProduct implements UserProduct {
  const factory _UserProduct(
      {final List<UserProductData>? details,
      final String? downloadUrl,
      final bool? removable}) = _$_UserProduct;

  factory _UserProduct.fromJson(Map<String, dynamic> json) =
      _$_UserProduct.fromJson;

  @override
  List<UserProductData>? get details;
  @override
  String? get downloadUrl;
  @override
  bool? get removable;
  @override
  @JsonKey(ignore: true)
  _$$_UserProductCopyWith<_$_UserProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProductData _$UserProductDataFromJson(Map<String, dynamic> json) {
  return _UserProductData.fromJson(json);
}

/// @nodoc
mixin _$UserProductData {
  String? get key => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProductDataCopyWith<UserProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProductDataCopyWith<$Res> {
  factory $UserProductDataCopyWith(
          UserProductData value, $Res Function(UserProductData) then) =
      _$UserProductDataCopyWithImpl<$Res, UserProductData>;
  @useResult
  $Res call({String? key, String? value, String? type});
}

/// @nodoc
class _$UserProductDataCopyWithImpl<$Res, $Val extends UserProductData>
    implements $UserProductDataCopyWith<$Res> {
  _$UserProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserProductDataCopyWith<$Res>
    implements $UserProductDataCopyWith<$Res> {
  factory _$$_UserProductDataCopyWith(
          _$_UserProductData value, $Res Function(_$_UserProductData) then) =
      __$$_UserProductDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? key, String? value, String? type});
}

/// @nodoc
class __$$_UserProductDataCopyWithImpl<$Res>
    extends _$UserProductDataCopyWithImpl<$Res, _$_UserProductData>
    implements _$$_UserProductDataCopyWith<$Res> {
  __$$_UserProductDataCopyWithImpl(
      _$_UserProductData _value, $Res Function(_$_UserProductData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_UserProductData(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProductData implements _UserProductData {
  const _$_UserProductData({this.key, this.value, this.type});

  factory _$_UserProductData.fromJson(Map<String, dynamic> json) =>
      _$$_UserProductDataFromJson(json);

  @override
  final String? key;
  @override
  final String? value;
  @override
  final String? type;

  @override
  String toString() {
    return 'UserProductData(key: $key, value: $value, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProductData &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserProductDataCopyWith<_$_UserProductData> get copyWith =>
      __$$_UserProductDataCopyWithImpl<_$_UserProductData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProductDataToJson(
      this,
    );
  }
}

abstract class _UserProductData implements UserProductData {
  const factory _UserProductData(
      {final String? key,
      final String? value,
      final String? type}) = _$_UserProductData;

  factory _UserProductData.fromJson(Map<String, dynamic> json) =
      _$_UserProductData.fromJson;

  @override
  String? get key;
  @override
  String? get value;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_UserProductDataCopyWith<_$_UserProductData> get copyWith =>
      throw _privateConstructorUsedError;
}
