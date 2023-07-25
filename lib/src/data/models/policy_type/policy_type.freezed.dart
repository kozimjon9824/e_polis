// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'policy_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PolicyType _$PolicyTypeFromJson(Map<String, dynamic> json) {
  return _PolicyType.fromJson(json);
}

/// @nodoc
mixin _$PolicyType {
  List<PolicyTypeModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicyTypeCopyWith<PolicyType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyTypeCopyWith<$Res> {
  factory $PolicyTypeCopyWith(
          PolicyType value, $Res Function(PolicyType) then) =
      _$PolicyTypeCopyWithImpl<$Res, PolicyType>;
  @useResult
  $Res call({List<PolicyTypeModel>? items});
}

/// @nodoc
class _$PolicyTypeCopyWithImpl<$Res, $Val extends PolicyType>
    implements $PolicyTypeCopyWith<$Res> {
  _$PolicyTypeCopyWithImpl(this._value, this._then);

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
              as List<PolicyTypeModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PolicyTypeCopyWith<$Res>
    implements $PolicyTypeCopyWith<$Res> {
  factory _$$_PolicyTypeCopyWith(
          _$_PolicyType value, $Res Function(_$_PolicyType) then) =
      __$$_PolicyTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PolicyTypeModel>? items});
}

/// @nodoc
class __$$_PolicyTypeCopyWithImpl<$Res>
    extends _$PolicyTypeCopyWithImpl<$Res, _$_PolicyType>
    implements _$$_PolicyTypeCopyWith<$Res> {
  __$$_PolicyTypeCopyWithImpl(
      _$_PolicyType _value, $Res Function(_$_PolicyType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_PolicyType(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PolicyTypeModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PolicyType implements _PolicyType {
  const _$_PolicyType({final List<PolicyTypeModel>? items}) : _items = items;

  factory _$_PolicyType.fromJson(Map<String, dynamic> json) =>
      _$$_PolicyTypeFromJson(json);

  final List<PolicyTypeModel>? _items;
  @override
  List<PolicyTypeModel>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PolicyType(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PolicyType &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PolicyTypeCopyWith<_$_PolicyType> get copyWith =>
      __$$_PolicyTypeCopyWithImpl<_$_PolicyType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PolicyTypeToJson(
      this,
    );
  }
}

abstract class _PolicyType implements PolicyType {
  const factory _PolicyType({final List<PolicyTypeModel>? items}) =
      _$_PolicyType;

  factory _PolicyType.fromJson(Map<String, dynamic> json) =
      _$_PolicyType.fromJson;

  @override
  List<PolicyTypeModel>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_PolicyTypeCopyWith<_$_PolicyType> get copyWith =>
      throw _privateConstructorUsedError;
}

PolicyTypeModel _$PolicyTypeModelFromJson(Map<String, dynamic> json) {
  return _PolicyTypeModel.fromJson(json);
}

/// @nodoc
mixin _$PolicyTypeModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicyTypeModelCopyWith<PolicyTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyTypeModelCopyWith<$Res> {
  factory $PolicyTypeModelCopyWith(
          PolicyTypeModel value, $Res Function(PolicyTypeModel) then) =
      _$PolicyTypeModelCopyWithImpl<$Res, PolicyTypeModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$PolicyTypeModelCopyWithImpl<$Res, $Val extends PolicyTypeModel>
    implements $PolicyTypeModelCopyWith<$Res> {
  _$PolicyTypeModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_PolicyTypeModelCopyWith<$Res>
    implements $PolicyTypeModelCopyWith<$Res> {
  factory _$$_PolicyTypeModelCopyWith(
          _$_PolicyTypeModel value, $Res Function(_$_PolicyTypeModel) then) =
      __$$_PolicyTypeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_PolicyTypeModelCopyWithImpl<$Res>
    extends _$PolicyTypeModelCopyWithImpl<$Res, _$_PolicyTypeModel>
    implements _$$_PolicyTypeModelCopyWith<$Res> {
  __$$_PolicyTypeModelCopyWithImpl(
      _$_PolicyTypeModel _value, $Res Function(_$_PolicyTypeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_PolicyTypeModel(
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
class _$_PolicyTypeModel implements _PolicyTypeModel {
  const _$_PolicyTypeModel({this.id, this.name});

  factory _$_PolicyTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_PolicyTypeModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'PolicyTypeModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PolicyTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PolicyTypeModelCopyWith<_$_PolicyTypeModel> get copyWith =>
      __$$_PolicyTypeModelCopyWithImpl<_$_PolicyTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PolicyTypeModelToJson(
      this,
    );
  }
}

abstract class _PolicyTypeModel implements PolicyTypeModel {
  const factory _PolicyTypeModel({final int? id, final String? name}) =
      _$_PolicyTypeModel;

  factory _PolicyTypeModel.fromJson(Map<String, dynamic> json) =
      _$_PolicyTypeModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_PolicyTypeModelCopyWith<_$_PolicyTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
