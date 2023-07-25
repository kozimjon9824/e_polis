// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travelers_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelersType _$TravelersTypeFromJson(Map<String, dynamic> json) {
  return _TravelersType.fromJson(json);
}

/// @nodoc
mixin _$TravelersType {
  List<TravelTypeModel>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelersTypeCopyWith<TravelersType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelersTypeCopyWith<$Res> {
  factory $TravelersTypeCopyWith(
          TravelersType value, $Res Function(TravelersType) then) =
      _$TravelersTypeCopyWithImpl<$Res, TravelersType>;
  @useResult
  $Res call({List<TravelTypeModel>? items});
}

/// @nodoc
class _$TravelersTypeCopyWithImpl<$Res, $Val extends TravelersType>
    implements $TravelersTypeCopyWith<$Res> {
  _$TravelersTypeCopyWithImpl(this._value, this._then);

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
              as List<TravelTypeModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TravelersTypeCopyWith<$Res>
    implements $TravelersTypeCopyWith<$Res> {
  factory _$$_TravelersTypeCopyWith(
          _$_TravelersType value, $Res Function(_$_TravelersType) then) =
      __$$_TravelersTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TravelTypeModel>? items});
}

/// @nodoc
class __$$_TravelersTypeCopyWithImpl<$Res>
    extends _$TravelersTypeCopyWithImpl<$Res, _$_TravelersType>
    implements _$$_TravelersTypeCopyWith<$Res> {
  __$$_TravelersTypeCopyWithImpl(
      _$_TravelersType _value, $Res Function(_$_TravelersType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_TravelersType(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TravelTypeModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TravelersType with DiagnosticableTreeMixin implements _TravelersType {
  const _$_TravelersType({final List<TravelTypeModel>? items}) : _items = items;

  factory _$_TravelersType.fromJson(Map<String, dynamic> json) =>
      _$$_TravelersTypeFromJson(json);

  final List<TravelTypeModel>? _items;
  @override
  List<TravelTypeModel>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelersType(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelersType'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TravelersType &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TravelersTypeCopyWith<_$_TravelersType> get copyWith =>
      __$$_TravelersTypeCopyWithImpl<_$_TravelersType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TravelersTypeToJson(
      this,
    );
  }
}

abstract class _TravelersType implements TravelersType {
  const factory _TravelersType({final List<TravelTypeModel>? items}) =
      _$_TravelersType;

  factory _TravelersType.fromJson(Map<String, dynamic> json) =
      _$_TravelersType.fromJson;

  @override
  List<TravelTypeModel>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_TravelersTypeCopyWith<_$_TravelersType> get copyWith =>
      throw _privateConstructorUsedError;
}

TravelTypeModel _$TravelTypeModelFromJson(Map<String, dynamic> json) {
  return _TravelTypeModel.fromJson(json);
}

/// @nodoc
mixin _$TravelTypeModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelTypeModelCopyWith<TravelTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelTypeModelCopyWith<$Res> {
  factory $TravelTypeModelCopyWith(
          TravelTypeModel value, $Res Function(TravelTypeModel) then) =
      _$TravelTypeModelCopyWithImpl<$Res, TravelTypeModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$TravelTypeModelCopyWithImpl<$Res, $Val extends TravelTypeModel>
    implements $TravelTypeModelCopyWith<$Res> {
  _$TravelTypeModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_TravelTypeModelCopyWith<$Res>
    implements $TravelTypeModelCopyWith<$Res> {
  factory _$$_TravelTypeModelCopyWith(
          _$_TravelTypeModel value, $Res Function(_$_TravelTypeModel) then) =
      __$$_TravelTypeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_TravelTypeModelCopyWithImpl<$Res>
    extends _$TravelTypeModelCopyWithImpl<$Res, _$_TravelTypeModel>
    implements _$$_TravelTypeModelCopyWith<$Res> {
  __$$_TravelTypeModelCopyWithImpl(
      _$_TravelTypeModel _value, $Res Function(_$_TravelTypeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_TravelTypeModel(
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
class _$_TravelTypeModel
    with DiagnosticableTreeMixin
    implements _TravelTypeModel {
  const _$_TravelTypeModel({this.id, this.name});

  factory _$_TravelTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_TravelTypeModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelTypeModel(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelTypeModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TravelTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TravelTypeModelCopyWith<_$_TravelTypeModel> get copyWith =>
      __$$_TravelTypeModelCopyWithImpl<_$_TravelTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TravelTypeModelToJson(
      this,
    );
  }
}

abstract class _TravelTypeModel implements TravelTypeModel {
  const factory _TravelTypeModel({final int? id, final String? name}) =
      _$_TravelTypeModel;

  factory _TravelTypeModel.fromJson(Map<String, dynamic> json) =
      _$_TravelTypeModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_TravelTypeModelCopyWith<_$_TravelTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
