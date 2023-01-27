// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_values.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SelectValues _$SelectValuesFromJson(Map<String, dynamic> json) {
  return _SelectValues.fromJson(json);
}

/// @nodoc
mixin _$SelectValues {
  List<KeyValue>? get regions => throw _privateConstructorUsedError;
  List<KeyValue>? get vehicleTypes => throw _privateConstructorUsedError;
  List<KeyValue>? get relative => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectValuesCopyWith<SelectValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectValuesCopyWith<$Res> {
  factory $SelectValuesCopyWith(
          SelectValues value, $Res Function(SelectValues) then) =
      _$SelectValuesCopyWithImpl<$Res, SelectValues>;
  @useResult
  $Res call(
      {List<KeyValue>? regions,
      List<KeyValue>? vehicleTypes,
      List<KeyValue>? relative});
}

/// @nodoc
class _$SelectValuesCopyWithImpl<$Res, $Val extends SelectValues>
    implements $SelectValuesCopyWith<$Res> {
  _$SelectValuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regions = freezed,
    Object? vehicleTypes = freezed,
    Object? relative = freezed,
  }) {
    return _then(_value.copyWith(
      regions: freezed == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<KeyValue>?,
      vehicleTypes: freezed == vehicleTypes
          ? _value.vehicleTypes
          : vehicleTypes // ignore: cast_nullable_to_non_nullable
              as List<KeyValue>?,
      relative: freezed == relative
          ? _value.relative
          : relative // ignore: cast_nullable_to_non_nullable
              as List<KeyValue>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectValuesCopyWith<$Res>
    implements $SelectValuesCopyWith<$Res> {
  factory _$$_SelectValuesCopyWith(
          _$_SelectValues value, $Res Function(_$_SelectValues) then) =
      __$$_SelectValuesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<KeyValue>? regions,
      List<KeyValue>? vehicleTypes,
      List<KeyValue>? relative});
}

/// @nodoc
class __$$_SelectValuesCopyWithImpl<$Res>
    extends _$SelectValuesCopyWithImpl<$Res, _$_SelectValues>
    implements _$$_SelectValuesCopyWith<$Res> {
  __$$_SelectValuesCopyWithImpl(
      _$_SelectValues _value, $Res Function(_$_SelectValues) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regions = freezed,
    Object? vehicleTypes = freezed,
    Object? relative = freezed,
  }) {
    return _then(_$_SelectValues(
      regions: freezed == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<KeyValue>?,
      vehicleTypes: freezed == vehicleTypes
          ? _value._vehicleTypes
          : vehicleTypes // ignore: cast_nullable_to_non_nullable
              as List<KeyValue>?,
      relative: freezed == relative
          ? _value._relative
          : relative // ignore: cast_nullable_to_non_nullable
              as List<KeyValue>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SelectValues implements _SelectValues {
  const _$_SelectValues(
      {final List<KeyValue>? regions,
      final List<KeyValue>? vehicleTypes,
      final List<KeyValue>? relative})
      : _regions = regions,
        _vehicleTypes = vehicleTypes,
        _relative = relative;

  factory _$_SelectValues.fromJson(Map<String, dynamic> json) =>
      _$$_SelectValuesFromJson(json);

  final List<KeyValue>? _regions;
  @override
  List<KeyValue>? get regions {
    final value = _regions;
    if (value == null) return null;
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<KeyValue>? _vehicleTypes;
  @override
  List<KeyValue>? get vehicleTypes {
    final value = _vehicleTypes;
    if (value == null) return null;
    if (_vehicleTypes is EqualUnmodifiableListView) return _vehicleTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<KeyValue>? _relative;
  @override
  List<KeyValue>? get relative {
    final value = _relative;
    if (value == null) return null;
    if (_relative is EqualUnmodifiableListView) return _relative;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SelectValues(regions: $regions, vehicleTypes: $vehicleTypes, relative: $relative)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectValues &&
            const DeepCollectionEquality().equals(other._regions, _regions) &&
            const DeepCollectionEquality()
                .equals(other._vehicleTypes, _vehicleTypes) &&
            const DeepCollectionEquality().equals(other._relative, _relative));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_regions),
      const DeepCollectionEquality().hash(_vehicleTypes),
      const DeepCollectionEquality().hash(_relative));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectValuesCopyWith<_$_SelectValues> get copyWith =>
      __$$_SelectValuesCopyWithImpl<_$_SelectValues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectValuesToJson(
      this,
    );
  }
}

abstract class _SelectValues implements SelectValues {
  const factory _SelectValues(
      {final List<KeyValue>? regions,
      final List<KeyValue>? vehicleTypes,
      final List<KeyValue>? relative}) = _$_SelectValues;

  factory _SelectValues.fromJson(Map<String, dynamic> json) =
      _$_SelectValues.fromJson;

  @override
  List<KeyValue>? get regions;
  @override
  List<KeyValue>? get vehicleTypes;
  @override
  List<KeyValue>? get relative;
  @override
  @JsonKey(ignore: true)
  _$$_SelectValuesCopyWith<_$_SelectValues> get copyWith =>
      throw _privateConstructorUsedError;
}

KeyValue _$KeyValueFromJson(Map<String, dynamic> json) {
  return _KeyValue.fromJson(json);
}

/// @nodoc
mixin _$KeyValue {
  int? get key => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeyValueCopyWith<KeyValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyValueCopyWith<$Res> {
  factory $KeyValueCopyWith(KeyValue value, $Res Function(KeyValue) then) =
      _$KeyValueCopyWithImpl<$Res, KeyValue>;
  @useResult
  $Res call({int? key, String? value});
}

/// @nodoc
class _$KeyValueCopyWithImpl<$Res, $Val extends KeyValue>
    implements $KeyValueCopyWith<$Res> {
  _$KeyValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KeyValueCopyWith<$Res> implements $KeyValueCopyWith<$Res> {
  factory _$$_KeyValueCopyWith(
          _$_KeyValue value, $Res Function(_$_KeyValue) then) =
      __$$_KeyValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? key, String? value});
}

/// @nodoc
class __$$_KeyValueCopyWithImpl<$Res>
    extends _$KeyValueCopyWithImpl<$Res, _$_KeyValue>
    implements _$$_KeyValueCopyWith<$Res> {
  __$$_KeyValueCopyWithImpl(
      _$_KeyValue _value, $Res Function(_$_KeyValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_KeyValue(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KeyValue implements _KeyValue {
  const _$_KeyValue({this.key, this.value});

  factory _$_KeyValue.fromJson(Map<String, dynamic> json) =>
      _$$_KeyValueFromJson(json);

  @override
  final int? key;
  @override
  final String? value;

  @override
  String toString() {
    return 'KeyValue(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KeyValue &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KeyValueCopyWith<_$_KeyValue> get copyWith =>
      __$$_KeyValueCopyWithImpl<_$_KeyValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KeyValueToJson(
      this,
    );
  }
}

abstract class _KeyValue implements KeyValue {
  const factory _KeyValue({final int? key, final String? value}) = _$_KeyValue;

  factory _KeyValue.fromJson(Map<String, dynamic> json) = _$_KeyValue.fromJson;

  @override
  int? get key;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_KeyValueCopyWith<_$_KeyValue> get copyWith =>
      throw _privateConstructorUsedError;
}
