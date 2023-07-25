// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_purpose.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TripPurpose _$TripPurposeFromJson(Map<String, dynamic> json) {
  return _TripPurpose.fromJson(json);
}

/// @nodoc
mixin _$TripPurpose {
  List<TripModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripPurposeCopyWith<TripPurpose> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripPurposeCopyWith<$Res> {
  factory $TripPurposeCopyWith(
          TripPurpose value, $Res Function(TripPurpose) then) =
      _$TripPurposeCopyWithImpl<$Res, TripPurpose>;
  @useResult
  $Res call({List<TripModel>? items});
}

/// @nodoc
class _$TripPurposeCopyWithImpl<$Res, $Val extends TripPurpose>
    implements $TripPurposeCopyWith<$Res> {
  _$TripPurposeCopyWithImpl(this._value, this._then);

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
              as List<TripModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TripPurposeCopyWith<$Res>
    implements $TripPurposeCopyWith<$Res> {
  factory _$$_TripPurposeCopyWith(
          _$_TripPurpose value, $Res Function(_$_TripPurpose) then) =
      __$$_TripPurposeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TripModel>? items});
}

/// @nodoc
class __$$_TripPurposeCopyWithImpl<$Res>
    extends _$TripPurposeCopyWithImpl<$Res, _$_TripPurpose>
    implements _$$_TripPurposeCopyWith<$Res> {
  __$$_TripPurposeCopyWithImpl(
      _$_TripPurpose _value, $Res Function(_$_TripPurpose) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_TripPurpose(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TripModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TripPurpose implements _TripPurpose {
  const _$_TripPurpose({final List<TripModel>? items}) : _items = items;

  factory _$_TripPurpose.fromJson(Map<String, dynamic> json) =>
      _$$_TripPurposeFromJson(json);

  final List<TripModel>? _items;
  @override
  List<TripModel>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TripPurpose(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripPurpose &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripPurposeCopyWith<_$_TripPurpose> get copyWith =>
      __$$_TripPurposeCopyWithImpl<_$_TripPurpose>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripPurposeToJson(
      this,
    );
  }
}

abstract class _TripPurpose implements TripPurpose {
  const factory _TripPurpose({final List<TripModel>? items}) = _$_TripPurpose;

  factory _TripPurpose.fromJson(Map<String, dynamic> json) =
      _$_TripPurpose.fromJson;

  @override
  List<TripModel>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_TripPurposeCopyWith<_$_TripPurpose> get copyWith =>
      throw _privateConstructorUsedError;
}

TripModel _$TripModelFromJson(Map<String, dynamic> json) {
  return _TripModel.fromJson(json);
}

/// @nodoc
mixin _$TripModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripModelCopyWith<TripModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripModelCopyWith<$Res> {
  factory $TripModelCopyWith(TripModel value, $Res Function(TripModel) then) =
      _$TripModelCopyWithImpl<$Res, TripModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$TripModelCopyWithImpl<$Res, $Val extends TripModel>
    implements $TripModelCopyWith<$Res> {
  _$TripModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TripModelCopyWith<$Res> implements $TripModelCopyWith<$Res> {
  factory _$$_TripModelCopyWith(
          _$_TripModel value, $Res Function(_$_TripModel) then) =
      __$$_TripModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_TripModelCopyWithImpl<$Res>
    extends _$TripModelCopyWithImpl<$Res, _$_TripModel>
    implements _$$_TripModelCopyWith<$Res> {
  __$$_TripModelCopyWithImpl(
      _$_TripModel _value, $Res Function(_$_TripModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_TripModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TripModel implements _TripModel {
  const _$_TripModel({this.id, this.name});

  factory _$_TripModel.fromJson(Map<String, dynamic> json) =>
      _$$_TripModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'TripModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TripModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TripModelCopyWith<_$_TripModel> get copyWith =>
      __$$_TripModelCopyWithImpl<_$_TripModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripModelToJson(
      this,
    );
  }
}

abstract class _TripModel implements TripModel {
  const factory _TripModel({final int? id, final String? name}) = _$_TripModel;

  factory _TripModel.fromJson(Map<String, dynamic> json) =
      _$_TripModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_TripModelCopyWith<_$_TripModel> get copyWith =>
      throw _privateConstructorUsedError;
}
