// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleInfoResponse _$VehicleInfoResponseFromJson(Map<String, dynamic> json) {
  return _VehicleInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$VehicleInfoResponse {
  bool? get isPassportOK => throw _privateConstructorUsedError;
  int? get region => throw _privateConstructorUsedError;
  VehicleData? get vehicle => throw _privateConstructorUsedError;
  OwnerData? get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleInfoResponseCopyWith<VehicleInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleInfoResponseCopyWith<$Res> {
  factory $VehicleInfoResponseCopyWith(
          VehicleInfoResponse value, $Res Function(VehicleInfoResponse) then) =
      _$VehicleInfoResponseCopyWithImpl<$Res, VehicleInfoResponse>;
  @useResult
  $Res call(
      {bool? isPassportOK,
      int? region,
      VehicleData? vehicle,
      OwnerData? owner});

  $VehicleDataCopyWith<$Res>? get vehicle;
  $OwnerDataCopyWith<$Res>? get owner;
}

/// @nodoc
class _$VehicleInfoResponseCopyWithImpl<$Res, $Val extends VehicleInfoResponse>
    implements $VehicleInfoResponseCopyWith<$Res> {
  _$VehicleInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPassportOK = freezed,
    Object? region = freezed,
    Object? vehicle = freezed,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      isPassportOK: freezed == isPassportOK
          ? _value.isPassportOK
          : isPassportOK // ignore: cast_nullable_to_non_nullable
              as bool?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as VehicleData?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleDataCopyWith<$Res>? get vehicle {
    if (_value.vehicle == null) {
      return null;
    }

    return $VehicleDataCopyWith<$Res>(_value.vehicle!, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerDataCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerDataCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VehicleInfoResponseCopyWith<$Res>
    implements $VehicleInfoResponseCopyWith<$Res> {
  factory _$$_VehicleInfoResponseCopyWith(_$_VehicleInfoResponse value,
          $Res Function(_$_VehicleInfoResponse) then) =
      __$$_VehicleInfoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isPassportOK,
      int? region,
      VehicleData? vehicle,
      OwnerData? owner});

  @override
  $VehicleDataCopyWith<$Res>? get vehicle;
  @override
  $OwnerDataCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$_VehicleInfoResponseCopyWithImpl<$Res>
    extends _$VehicleInfoResponseCopyWithImpl<$Res, _$_VehicleInfoResponse>
    implements _$$_VehicleInfoResponseCopyWith<$Res> {
  __$$_VehicleInfoResponseCopyWithImpl(_$_VehicleInfoResponse _value,
      $Res Function(_$_VehicleInfoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPassportOK = freezed,
    Object? region = freezed,
    Object? vehicle = freezed,
    Object? owner = freezed,
  }) {
    return _then(_$_VehicleInfoResponse(
      isPassportOK: freezed == isPassportOK
          ? _value.isPassportOK
          : isPassportOK // ignore: cast_nullable_to_non_nullable
              as bool?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as VehicleData?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleInfoResponse implements _VehicleInfoResponse {
  const _$_VehicleInfoResponse(
      {this.isPassportOK, this.region, this.vehicle, this.owner});

  factory _$_VehicleInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleInfoResponseFromJson(json);

  @override
  final bool? isPassportOK;
  @override
  final int? region;
  @override
  final VehicleData? vehicle;
  @override
  final OwnerData? owner;

  @override
  String toString() {
    return 'VehicleInfoResponse(isPassportOK: $isPassportOK, region: $region, vehicle: $vehicle, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleInfoResponse &&
            (identical(other.isPassportOK, isPassportOK) ||
                other.isPassportOK == isPassportOK) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isPassportOK, region, vehicle, owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleInfoResponseCopyWith<_$_VehicleInfoResponse> get copyWith =>
      __$$_VehicleInfoResponseCopyWithImpl<_$_VehicleInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleInfoResponseToJson(
      this,
    );
  }
}

abstract class _VehicleInfoResponse implements VehicleInfoResponse {
  const factory _VehicleInfoResponse(
      {final bool? isPassportOK,
      final int? region,
      final VehicleData? vehicle,
      final OwnerData? owner}) = _$_VehicleInfoResponse;

  factory _VehicleInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_VehicleInfoResponse.fromJson;

  @override
  bool? get isPassportOK;
  @override
  int? get region;
  @override
  VehicleData? get vehicle;
  @override
  OwnerData? get owner;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleInfoResponseCopyWith<_$_VehicleInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

VehicleData _$VehicleDataFromJson(Map<String, dynamic> json) {
  return _VehicleData.fromJson(json);
}

/// @nodoc
mixin _$VehicleData {
  String? get model => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  int? get issueYear => throw _privateConstructorUsedError;
  VehicleType? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleDataCopyWith<VehicleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleDataCopyWith<$Res> {
  factory $VehicleDataCopyWith(
          VehicleData value, $Res Function(VehicleData) then) =
      _$VehicleDataCopyWithImpl<$Res, VehicleData>;
  @useResult
  $Res call(
      {String? model, String? address, int? issueYear, VehicleType? type});

  $VehicleTypeCopyWith<$Res>? get type;
}

/// @nodoc
class _$VehicleDataCopyWithImpl<$Res, $Val extends VehicleData>
    implements $VehicleDataCopyWith<$Res> {
  _$VehicleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? address = freezed,
    Object? issueYear = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      issueYear: freezed == issueYear
          ? _value.issueYear
          : issueYear // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VehicleType?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleTypeCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $VehicleTypeCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VehicleDataCopyWith<$Res>
    implements $VehicleDataCopyWith<$Res> {
  factory _$$_VehicleDataCopyWith(
          _$_VehicleData value, $Res Function(_$_VehicleData) then) =
      __$$_VehicleDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? model, String? address, int? issueYear, VehicleType? type});

  @override
  $VehicleTypeCopyWith<$Res>? get type;
}

/// @nodoc
class __$$_VehicleDataCopyWithImpl<$Res>
    extends _$VehicleDataCopyWithImpl<$Res, _$_VehicleData>
    implements _$$_VehicleDataCopyWith<$Res> {
  __$$_VehicleDataCopyWithImpl(
      _$_VehicleData _value, $Res Function(_$_VehicleData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? address = freezed,
    Object? issueYear = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_VehicleData(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      issueYear: freezed == issueYear
          ? _value.issueYear
          : issueYear // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VehicleType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleData implements _VehicleData {
  const _$_VehicleData({this.model, this.address, this.issueYear, this.type});

  factory _$_VehicleData.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleDataFromJson(json);

  @override
  final String? model;
  @override
  final String? address;
  @override
  final int? issueYear;
  @override
  final VehicleType? type;

  @override
  String toString() {
    return 'VehicleData(model: $model, address: $address, issueYear: $issueYear, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleData &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.issueYear, issueYear) ||
                other.issueYear == issueYear) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, model, address, issueYear, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleDataCopyWith<_$_VehicleData> get copyWith =>
      __$$_VehicleDataCopyWithImpl<_$_VehicleData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleDataToJson(
      this,
    );
  }
}

abstract class _VehicleData implements VehicleData {
  const factory _VehicleData(
      {final String? model,
      final String? address,
      final int? issueYear,
      final VehicleType? type}) = _$_VehicleData;

  factory _VehicleData.fromJson(Map<String, dynamic> json) =
      _$_VehicleData.fromJson;

  @override
  String? get model;
  @override
  String? get address;
  @override
  int? get issueYear;
  @override
  VehicleType? get type;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleDataCopyWith<_$_VehicleData> get copyWith =>
      throw _privateConstructorUsedError;
}

OwnerData _$OwnerDataFromJson(Map<String, dynamic> json) {
  return _OwnerData.fromJson(json);
}

/// @nodoc
mixin _$OwnerData {
  String? get fullName => throw _privateConstructorUsedError;
  String? get pinfl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerDataCopyWith<OwnerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerDataCopyWith<$Res> {
  factory $OwnerDataCopyWith(OwnerData value, $Res Function(OwnerData) then) =
      _$OwnerDataCopyWithImpl<$Res, OwnerData>;
  @useResult
  $Res call({String? fullName, String? pinfl});
}

/// @nodoc
class _$OwnerDataCopyWithImpl<$Res, $Val extends OwnerData>
    implements $OwnerDataCopyWith<$Res> {
  _$OwnerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? pinfl = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      pinfl: freezed == pinfl
          ? _value.pinfl
          : pinfl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OwnerDataCopyWith<$Res> implements $OwnerDataCopyWith<$Res> {
  factory _$$_OwnerDataCopyWith(
          _$_OwnerData value, $Res Function(_$_OwnerData) then) =
      __$$_OwnerDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fullName, String? pinfl});
}

/// @nodoc
class __$$_OwnerDataCopyWithImpl<$Res>
    extends _$OwnerDataCopyWithImpl<$Res, _$_OwnerData>
    implements _$$_OwnerDataCopyWith<$Res> {
  __$$_OwnerDataCopyWithImpl(
      _$_OwnerData _value, $Res Function(_$_OwnerData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? pinfl = freezed,
  }) {
    return _then(_$_OwnerData(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      pinfl: freezed == pinfl
          ? _value.pinfl
          : pinfl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OwnerData implements _OwnerData {
  const _$_OwnerData({this.fullName, this.pinfl});

  factory _$_OwnerData.fromJson(Map<String, dynamic> json) =>
      _$$_OwnerDataFromJson(json);

  @override
  final String? fullName;
  @override
  final String? pinfl;

  @override
  String toString() {
    return 'OwnerData(fullName: $fullName, pinfl: $pinfl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OwnerData &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.pinfl, pinfl) || other.pinfl == pinfl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, pinfl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnerDataCopyWith<_$_OwnerData> get copyWith =>
      __$$_OwnerDataCopyWithImpl<_$_OwnerData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnerDataToJson(
      this,
    );
  }
}

abstract class _OwnerData implements OwnerData {
  const factory _OwnerData({final String? fullName, final String? pinfl}) =
      _$_OwnerData;

  factory _OwnerData.fromJson(Map<String, dynamic> json) =
      _$_OwnerData.fromJson;

  @override
  String? get fullName;
  @override
  String? get pinfl;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerDataCopyWith<_$_OwnerData> get copyWith =>
      throw _privateConstructorUsedError;
}

VehicleType _$VehicleTypeFromJson(Map<String, dynamic> json) {
  return _VehicleType.fromJson(json);
}

/// @nodoc
mixin _$VehicleType {
  String? get name => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleTypeCopyWith<VehicleType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleTypeCopyWith<$Res> {
  factory $VehicleTypeCopyWith(
          VehicleType value, $Res Function(VehicleType) then) =
      _$VehicleTypeCopyWithImpl<$Res, VehicleType>;
  @useResult
  $Res call({String? name, int? value});
}

/// @nodoc
class _$VehicleTypeCopyWithImpl<$Res, $Val extends VehicleType>
    implements $VehicleTypeCopyWith<$Res> {
  _$VehicleTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VehicleTypeCopyWith<$Res>
    implements $VehicleTypeCopyWith<$Res> {
  factory _$$_VehicleTypeCopyWith(
          _$_VehicleType value, $Res Function(_$_VehicleType) then) =
      __$$_VehicleTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? value});
}

/// @nodoc
class __$$_VehicleTypeCopyWithImpl<$Res>
    extends _$VehicleTypeCopyWithImpl<$Res, _$_VehicleType>
    implements _$$_VehicleTypeCopyWith<$Res> {
  __$$_VehicleTypeCopyWithImpl(
      _$_VehicleType _value, $Res Function(_$_VehicleType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_VehicleType(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleType implements _VehicleType {
  const _$_VehicleType({this.name, this.value});

  factory _$_VehicleType.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleTypeFromJson(json);

  @override
  final String? name;
  @override
  final int? value;

  @override
  String toString() {
    return 'VehicleType(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleTypeCopyWith<_$_VehicleType> get copyWith =>
      __$$_VehicleTypeCopyWithImpl<_$_VehicleType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleTypeToJson(
      this,
    );
  }
}

abstract class _VehicleType implements VehicleType {
  const factory _VehicleType({final String? name, final int? value}) =
      _$_VehicleType;

  factory _VehicleType.fromJson(Map<String, dynamic> json) =
      _$_VehicleType.fromJson;

  @override
  String? get name;
  @override
  int? get value;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleTypeCopyWith<_$_VehicleType> get copyWith =>
      throw _privateConstructorUsedError;
}
