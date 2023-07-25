// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_days.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultiDays _$MultiDaysFromJson(Map<String, dynamic> json) {
  return _MultiDays.fromJson(json);
}

/// @nodoc
mixin _$MultiDays {
  List<MultiDayModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultiDaysCopyWith<MultiDays> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiDaysCopyWith<$Res> {
  factory $MultiDaysCopyWith(MultiDays value, $Res Function(MultiDays) then) =
      _$MultiDaysCopyWithImpl<$Res, MultiDays>;
  @useResult
  $Res call({List<MultiDayModel>? items});
}

/// @nodoc
class _$MultiDaysCopyWithImpl<$Res, $Val extends MultiDays>
    implements $MultiDaysCopyWith<$Res> {
  _$MultiDaysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MultiDayModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MultiDaysCopyWith<$Res> implements $MultiDaysCopyWith<$Res> {
  factory _$$_MultiDaysCopyWith(
          _$_MultiDays value, $Res Function(_$_MultiDays) then) =
      __$$_MultiDaysCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MultiDayModel>? items});
}

/// @nodoc
class __$$_MultiDaysCopyWithImpl<$Res>
    extends _$MultiDaysCopyWithImpl<$Res, _$_MultiDays>
    implements _$$_MultiDaysCopyWith<$Res> {
  __$$_MultiDaysCopyWithImpl(
      _$_MultiDays _value, $Res Function(_$_MultiDays) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_MultiDays(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MultiDayModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MultiDays implements _MultiDays {
  const _$_MultiDays({final List<MultiDayModel>? items}) : _items = items;

  factory _$_MultiDays.fromJson(Map<String, dynamic> json) =>
      _$$_MultiDaysFromJson(json);

  final List<MultiDayModel>? _items;
  @override
  List<MultiDayModel>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MultiDays(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultiDays &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MultiDaysCopyWith<_$_MultiDays> get copyWith =>
      __$$_MultiDaysCopyWithImpl<_$_MultiDays>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultiDaysToJson(
      this,
    );
  }
}

abstract class _MultiDays implements MultiDays {
  const factory _MultiDays({final List<MultiDayModel>? items}) = _$_MultiDays;

  factory _MultiDays.fromJson(Map<String, dynamic> json) =
      _$_MultiDays.fromJson;

  @override
  List<MultiDayModel>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_MultiDaysCopyWith<_$_MultiDays> get copyWith =>
      throw _privateConstructorUsedError;
}

MultiDayModel _$MultiDayModelFromJson(Map<String, dynamic> json) {
  return _MultiDayModel.fromJson(json);
}

/// @nodoc
mixin _$MultiDayModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultiDayModelCopyWith<MultiDayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiDayModelCopyWith<$Res> {
  factory $MultiDayModelCopyWith(
          MultiDayModel value, $Res Function(MultiDayModel) then) =
      _$MultiDayModelCopyWithImpl<$Res, MultiDayModel>;
  @useResult
  $Res call({int? id, String? name, int? day});
}

/// @nodoc
class _$MultiDayModelCopyWithImpl<$Res, $Val extends MultiDayModel>
    implements $MultiDayModelCopyWith<$Res> {
  _$MultiDayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? day = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MultiDayModelCopyWith<$Res>
    implements $MultiDayModelCopyWith<$Res> {
  factory _$$_MultiDayModelCopyWith(
          _$_MultiDayModel value, $Res Function(_$_MultiDayModel) then) =
      __$$_MultiDayModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, int? day});
}

/// @nodoc
class __$$_MultiDayModelCopyWithImpl<$Res>
    extends _$MultiDayModelCopyWithImpl<$Res, _$_MultiDayModel>
    implements _$$_MultiDayModelCopyWith<$Res> {
  __$$_MultiDayModelCopyWithImpl(
      _$_MultiDayModel _value, $Res Function(_$_MultiDayModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? day = freezed,
  }) {
    return _then(_$_MultiDayModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MultiDayModel implements _MultiDayModel {
  const _$_MultiDayModel({this.id, this.name, this.day});

  factory _$_MultiDayModel.fromJson(Map<String, dynamic> json) =>
      _$$_MultiDayModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? day;

  @override
  String toString() {
    return 'MultiDayModel(id: $id, name: $name, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultiDayModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MultiDayModelCopyWith<_$_MultiDayModel> get copyWith =>
      __$$_MultiDayModelCopyWithImpl<_$_MultiDayModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultiDayModelToJson(
      this,
    );
  }
}

abstract class _MultiDayModel implements MultiDayModel {
  const factory _MultiDayModel(
      {final int? id, final String? name, final int? day}) = _$_MultiDayModel;

  factory _MultiDayModel.fromJson(Map<String, dynamic> json) =
      _$_MultiDayModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get day;
  @override
  @JsonKey(ignore: true)
  _$$_MultiDayModelCopyWith<_$_MultiDayModel> get copyWith =>
      throw _privateConstructorUsedError;
}
