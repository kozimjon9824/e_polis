// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'programms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Programs _$ProgramsFromJson(Map<String, dynamic> json) {
  return _Programs.fromJson(json);
}

/// @nodoc
mixin _$Programs {
  List<ProgramModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramsCopyWith<Programs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramsCopyWith<$Res> {
  factory $ProgramsCopyWith(Programs value, $Res Function(Programs) then) =
      _$ProgramsCopyWithImpl<$Res, Programs>;
  @useResult
  $Res call({List<ProgramModel>? items});
}

/// @nodoc
class _$ProgramsCopyWithImpl<$Res, $Val extends Programs>
    implements $ProgramsCopyWith<$Res> {
  _$ProgramsCopyWithImpl(this._value, this._then);

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
              as List<ProgramModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProgramsCopyWith<$Res> implements $ProgramsCopyWith<$Res> {
  factory _$$_ProgramsCopyWith(
          _$_Programs value, $Res Function(_$_Programs) then) =
      __$$_ProgramsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProgramModel>? items});
}

/// @nodoc
class __$$_ProgramsCopyWithImpl<$Res>
    extends _$ProgramsCopyWithImpl<$Res, _$_Programs>
    implements _$$_ProgramsCopyWith<$Res> {
  __$$_ProgramsCopyWithImpl(
      _$_Programs _value, $Res Function(_$_Programs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_Programs(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProgramModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Programs implements _Programs {
  const _$_Programs({final List<ProgramModel>? items}) : _items = items;

  factory _$_Programs.fromJson(Map<String, dynamic> json) =>
      _$$_ProgramsFromJson(json);

  final List<ProgramModel>? _items;
  @override
  List<ProgramModel>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Programs(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Programs &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProgramsCopyWith<_$_Programs> get copyWith =>
      __$$_ProgramsCopyWithImpl<_$_Programs>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProgramsToJson(
      this,
    );
  }
}

abstract class _Programs implements Programs {
  const factory _Programs({final List<ProgramModel>? items}) = _$_Programs;

  factory _Programs.fromJson(Map<String, dynamic> json) = _$_Programs.fromJson;

  @override
  List<ProgramModel>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_ProgramsCopyWith<_$_Programs> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgramModel _$ProgramModelFromJson(Map<String, dynamic> json) {
  return _ProgramModel.fromJson(json);
}

/// @nodoc
mixin _$ProgramModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get liability => throw _privateConstructorUsedError;
  int? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramModelCopyWith<ProgramModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramModelCopyWith<$Res> {
  factory $ProgramModelCopyWith(
          ProgramModel value, $Res Function(ProgramModel) then) =
      _$ProgramModelCopyWithImpl<$Res, ProgramModel>;
  @useResult
  $Res call({int? id, String? name, int? liability, int? active});
}

/// @nodoc
class _$ProgramModelCopyWithImpl<$Res, $Val extends ProgramModel>
    implements $ProgramModelCopyWith<$Res> {
  _$ProgramModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? liability = freezed,
    Object? active = freezed,
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
      liability: freezed == liability
          ? _value.liability
          : liability // ignore: cast_nullable_to_non_nullable
              as int?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProgramModelCopyWith<$Res>
    implements $ProgramModelCopyWith<$Res> {
  factory _$$_ProgramModelCopyWith(
          _$_ProgramModel value, $Res Function(_$_ProgramModel) then) =
      __$$_ProgramModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, int? liability, int? active});
}

/// @nodoc
class __$$_ProgramModelCopyWithImpl<$Res>
    extends _$ProgramModelCopyWithImpl<$Res, _$_ProgramModel>
    implements _$$_ProgramModelCopyWith<$Res> {
  __$$_ProgramModelCopyWithImpl(
      _$_ProgramModel _value, $Res Function(_$_ProgramModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? liability = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_ProgramModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      liability: freezed == liability
          ? _value.liability
          : liability // ignore: cast_nullable_to_non_nullable
              as int?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProgramModel implements _ProgramModel {
  const _$_ProgramModel({this.id, this.name, this.liability, this.active});

  factory _$_ProgramModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProgramModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? liability;
  @override
  final int? active;

  @override
  String toString() {
    return 'ProgramModel(id: $id, name: $name, liability: $liability, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgramModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.liability, liability) ||
                other.liability == liability) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, liability, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProgramModelCopyWith<_$_ProgramModel> get copyWith =>
      __$$_ProgramModelCopyWithImpl<_$_ProgramModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProgramModelToJson(
      this,
    );
  }
}

abstract class _ProgramModel implements ProgramModel {
  const factory _ProgramModel(
      {final int? id,
      final String? name,
      final int? liability,
      final int? active}) = _$_ProgramModel;

  factory _ProgramModel.fromJson(Map<String, dynamic> json) =
      _$_ProgramModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get liability;
  @override
  int? get active;
  @override
  @JsonKey(ignore: true)
  _$$_ProgramModelCopyWith<_$_ProgramModel> get copyWith =>
      throw _privateConstructorUsedError;
}
