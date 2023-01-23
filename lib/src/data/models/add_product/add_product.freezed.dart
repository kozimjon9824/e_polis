// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddProductRequest _$AddProductRequestFromJson(Map<String, dynamic> json) {
  return _AddProductRequest.fromJson(json);
}

/// @nodoc
mixin _$AddProductRequest {
  String? get vehicleNumber => throw _privateConstructorUsedError;
  PolicyFields? get policy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddProductRequestCopyWith<AddProductRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductRequestCopyWith<$Res> {
  factory $AddProductRequestCopyWith(
          AddProductRequest value, $Res Function(AddProductRequest) then) =
      _$AddProductRequestCopyWithImpl<$Res, AddProductRequest>;
  @useResult
  $Res call({String? vehicleNumber, PolicyFields? policy});

  $PolicyFieldsCopyWith<$Res>? get policy;
}

/// @nodoc
class _$AddProductRequestCopyWithImpl<$Res, $Val extends AddProductRequest>
    implements $AddProductRequestCopyWith<$Res> {
  _$AddProductRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleNumber = freezed,
    Object? policy = freezed,
  }) {
    return _then(_value.copyWith(
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      policy: freezed == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as PolicyFields?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PolicyFieldsCopyWith<$Res>? get policy {
    if (_value.policy == null) {
      return null;
    }

    return $PolicyFieldsCopyWith<$Res>(_value.policy!, (value) {
      return _then(_value.copyWith(policy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddProductRequestCopyWith<$Res>
    implements $AddProductRequestCopyWith<$Res> {
  factory _$$_AddProductRequestCopyWith(_$_AddProductRequest value,
          $Res Function(_$_AddProductRequest) then) =
      __$$_AddProductRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? vehicleNumber, PolicyFields? policy});

  @override
  $PolicyFieldsCopyWith<$Res>? get policy;
}

/// @nodoc
class __$$_AddProductRequestCopyWithImpl<$Res>
    extends _$AddProductRequestCopyWithImpl<$Res, _$_AddProductRequest>
    implements _$$_AddProductRequestCopyWith<$Res> {
  __$$_AddProductRequestCopyWithImpl(
      _$_AddProductRequest _value, $Res Function(_$_AddProductRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleNumber = freezed,
    Object? policy = freezed,
  }) {
    return _then(_$_AddProductRequest(
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      policy: freezed == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as PolicyFields?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddProductRequest implements _AddProductRequest {
  const _$_AddProductRequest({this.vehicleNumber, this.policy});

  factory _$_AddProductRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AddProductRequestFromJson(json);

  @override
  final String? vehicleNumber;
  @override
  final PolicyFields? policy;

  @override
  String toString() {
    return 'AddProductRequest(vehicleNumber: $vehicleNumber, policy: $policy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddProductRequest &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.policy, policy) || other.policy == policy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vehicleNumber, policy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddProductRequestCopyWith<_$_AddProductRequest> get copyWith =>
      __$$_AddProductRequestCopyWithImpl<_$_AddProductRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddProductRequestToJson(
      this,
    );
  }
}

abstract class _AddProductRequest implements AddProductRequest {
  const factory _AddProductRequest(
      {final String? vehicleNumber,
      final PolicyFields? policy}) = _$_AddProductRequest;

  factory _AddProductRequest.fromJson(Map<String, dynamic> json) =
      _$_AddProductRequest.fromJson;

  @override
  String? get vehicleNumber;
  @override
  PolicyFields? get policy;
  @override
  @JsonKey(ignore: true)
  _$$_AddProductRequestCopyWith<_$_AddProductRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

PolicyFields _$PolicyFieldsFromJson(Map<String, dynamic> json) {
  return _PolicyFields.fromJson(json);
}

/// @nodoc
mixin _$PolicyFields {
  String? get series => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicyFieldsCopyWith<PolicyFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyFieldsCopyWith<$Res> {
  factory $PolicyFieldsCopyWith(
          PolicyFields value, $Res Function(PolicyFields) then) =
      _$PolicyFieldsCopyWithImpl<$Res, PolicyFields>;
  @useResult
  $Res call({String? series, String? number});
}

/// @nodoc
class _$PolicyFieldsCopyWithImpl<$Res, $Val extends PolicyFields>
    implements $PolicyFieldsCopyWith<$Res> {
  _$PolicyFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PolicyFieldsCopyWith<$Res>
    implements $PolicyFieldsCopyWith<$Res> {
  factory _$$_PolicyFieldsCopyWith(
          _$_PolicyFields value, $Res Function(_$_PolicyFields) then) =
      __$$_PolicyFieldsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? series, String? number});
}

/// @nodoc
class __$$_PolicyFieldsCopyWithImpl<$Res>
    extends _$PolicyFieldsCopyWithImpl<$Res, _$_PolicyFields>
    implements _$$_PolicyFieldsCopyWith<$Res> {
  __$$_PolicyFieldsCopyWithImpl(
      _$_PolicyFields _value, $Res Function(_$_PolicyFields) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = freezed,
    Object? number = freezed,
  }) {
    return _then(_$_PolicyFields(
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PolicyFields implements _PolicyFields {
  const _$_PolicyFields({this.series, this.number});

  factory _$_PolicyFields.fromJson(Map<String, dynamic> json) =>
      _$$_PolicyFieldsFromJson(json);

  @override
  final String? series;
  @override
  final String? number;

  @override
  String toString() {
    return 'PolicyFields(series: $series, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PolicyFields &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, series, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PolicyFieldsCopyWith<_$_PolicyFields> get copyWith =>
      __$$_PolicyFieldsCopyWithImpl<_$_PolicyFields>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PolicyFieldsToJson(
      this,
    );
  }
}

abstract class _PolicyFields implements PolicyFields {
  const factory _PolicyFields({final String? series, final String? number}) =
      _$_PolicyFields;

  factory _PolicyFields.fromJson(Map<String, dynamic> json) =
      _$_PolicyFields.fromJson;

  @override
  String? get series;
  @override
  String? get number;
  @override
  @JsonKey(ignore: true)
  _$$_PolicyFieldsCopyWith<_$_PolicyFields> get copyWith =>
      throw _privateConstructorUsedError;
}
