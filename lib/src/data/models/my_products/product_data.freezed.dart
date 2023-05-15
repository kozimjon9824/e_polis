// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyProductData _$MyProductDataFromJson(Map<String, dynamic> json) {
  return _MyProductData.fromJson(json);
}

/// @nodoc
mixin _$MyProductData {
  List<ProductModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyProductDataCopyWith<MyProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProductDataCopyWith<$Res> {
  factory $MyProductDataCopyWith(
          MyProductData value, $Res Function(MyProductData) then) =
      _$MyProductDataCopyWithImpl<$Res, MyProductData>;
  @useResult
  $Res call({List<ProductModel>? data});
}

/// @nodoc
class _$MyProductDataCopyWithImpl<$Res, $Val extends MyProductData>
    implements $MyProductDataCopyWith<$Res> {
  _$MyProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyProductDataCopyWith<$Res>
    implements $MyProductDataCopyWith<$Res> {
  factory _$$_MyProductDataCopyWith(
          _$_MyProductData value, $Res Function(_$_MyProductData) then) =
      __$$_MyProductDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductModel>? data});
}

/// @nodoc
class __$$_MyProductDataCopyWithImpl<$Res>
    extends _$MyProductDataCopyWithImpl<$Res, _$_MyProductData>
    implements _$$_MyProductDataCopyWith<$Res> {
  __$$_MyProductDataCopyWithImpl(
      _$_MyProductData _value, $Res Function(_$_MyProductData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_MyProductData(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyProductData implements _MyProductData {
  const _$_MyProductData({final List<ProductModel>? data}) : _data = data;

  factory _$_MyProductData.fromJson(Map<String, dynamic> json) =>
      _$$_MyProductDataFromJson(json);

  final List<ProductModel>? _data;
  @override
  List<ProductModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyProductData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyProductData &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyProductDataCopyWith<_$_MyProductData> get copyWith =>
      __$$_MyProductDataCopyWithImpl<_$_MyProductData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyProductDataToJson(
      this,
    );
  }
}

abstract class _MyProductData implements MyProductData {
  const factory _MyProductData({final List<ProductModel>? data}) =
      _$_MyProductData;

  factory _MyProductData.fromJson(Map<String, dynamic> json) =
      _$_MyProductData.fromJson;

  @override
  List<ProductModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_MyProductDataCopyWith<_$_MyProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  String? get id => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  String? get startAt => throw _privateConstructorUsedError;
  String? get expireAt => throw _privateConstructorUsedError;
  int? get expirePercent => throw _privateConstructorUsedError;
  List<ClickAction>? get menuItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {String? id,
      String? logo,
      String? name,
      String? number,
      String? startAt,
      String? expireAt,
      int? expirePercent,
      List<ClickAction>? menuItems});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? logo = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? startAt = freezed,
    Object? expireAt = freezed,
    Object? expirePercent = freezed,
    Object? menuItems = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expireAt: freezed == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expirePercent: freezed == expirePercent
          ? _value.expirePercent
          : expirePercent // ignore: cast_nullable_to_non_nullable
              as int?,
      menuItems: freezed == menuItems
          ? _value.menuItems
          : menuItems // ignore: cast_nullable_to_non_nullable
              as List<ClickAction>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$_ProductModelCopyWith(
          _$_ProductModel value, $Res Function(_$_ProductModel) then) =
      __$$_ProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? logo,
      String? name,
      String? number,
      String? startAt,
      String? expireAt,
      int? expirePercent,
      List<ClickAction>? menuItems});
}

/// @nodoc
class __$$_ProductModelCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$_ProductModel>
    implements _$$_ProductModelCopyWith<$Res> {
  __$$_ProductModelCopyWithImpl(
      _$_ProductModel _value, $Res Function(_$_ProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? logo = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? startAt = freezed,
    Object? expireAt = freezed,
    Object? expirePercent = freezed,
    Object? menuItems = freezed,
  }) {
    return _then(_$_ProductModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expireAt: freezed == expireAt
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expirePercent: freezed == expirePercent
          ? _value.expirePercent
          : expirePercent // ignore: cast_nullable_to_non_nullable
              as int?,
      menuItems: freezed == menuItems
          ? _value._menuItems
          : menuItems // ignore: cast_nullable_to_non_nullable
              as List<ClickAction>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel implements _ProductModel {
  const _$_ProductModel(
      {this.id,
      this.logo,
      this.name,
      this.number,
      this.startAt,
      this.expireAt,
      this.expirePercent,
      final List<ClickAction>? menuItems})
      : _menuItems = menuItems;

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  final String? id;
  @override
  final String? logo;
  @override
  final String? name;
  @override
  final String? number;
  @override
  final String? startAt;
  @override
  final String? expireAt;
  @override
  final int? expirePercent;
  final List<ClickAction>? _menuItems;
  @override
  List<ClickAction>? get menuItems {
    final value = _menuItems;
    if (value == null) return null;
    if (_menuItems is EqualUnmodifiableListView) return _menuItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductModel(id: $id, logo: $logo, name: $name, number: $number, startAt: $startAt, expireAt: $expireAt, expirePercent: $expirePercent, menuItems: $menuItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.expireAt, expireAt) ||
                other.expireAt == expireAt) &&
            (identical(other.expirePercent, expirePercent) ||
                other.expirePercent == expirePercent) &&
            const DeepCollectionEquality()
                .equals(other._menuItems, _menuItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, logo, name, number, startAt,
      expireAt, expirePercent, const DeepCollectionEquality().hash(_menuItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      __$$_ProductModelCopyWithImpl<_$_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {final String? id,
      final String? logo,
      final String? name,
      final String? number,
      final String? startAt,
      final String? expireAt,
      final int? expirePercent,
      final List<ClickAction>? menuItems}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  String? get id;
  @override
  String? get logo;
  @override
  String? get name;
  @override
  String? get number;
  @override
  String? get startAt;
  @override
  String? get expireAt;
  @override
  int? get expirePercent;
  @override
  List<ClickAction>? get menuItems;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ClickAction _$ClickActionFromJson(Map<String, dynamic> json) {
  return _ClickAction.fromJson(json);
}

/// @nodoc
mixin _$ClickAction {
  String? get title => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClickActionCopyWith<ClickAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClickActionCopyWith<$Res> {
  factory $ClickActionCopyWith(
          ClickAction value, $Res Function(ClickAction) then) =
      _$ClickActionCopyWithImpl<$Res, ClickAction>;
  @useResult
  $Res call({String? title, String? type, String? value});
}

/// @nodoc
class _$ClickActionCopyWithImpl<$Res, $Val extends ClickAction>
    implements $ClickActionCopyWith<$Res> {
  _$ClickActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClickActionCopyWith<$Res>
    implements $ClickActionCopyWith<$Res> {
  factory _$$_ClickActionCopyWith(
          _$_ClickAction value, $Res Function(_$_ClickAction) then) =
      __$$_ClickActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? type, String? value});
}

/// @nodoc
class __$$_ClickActionCopyWithImpl<$Res>
    extends _$ClickActionCopyWithImpl<$Res, _$_ClickAction>
    implements _$$_ClickActionCopyWith<$Res> {
  __$$_ClickActionCopyWithImpl(
      _$_ClickAction _value, $Res Function(_$_ClickAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_ClickAction(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClickAction implements _ClickAction {
  const _$_ClickAction({this.title, this.type, this.value});

  factory _$_ClickAction.fromJson(Map<String, dynamic> json) =>
      _$$_ClickActionFromJson(json);

  @override
  final String? title;
  @override
  final String? type;
  @override
  final String? value;

  @override
  String toString() {
    return 'ClickAction(title: $title, type: $type, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClickAction &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, type, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClickActionCopyWith<_$_ClickAction> get copyWith =>
      __$$_ClickActionCopyWithImpl<_$_ClickAction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClickActionToJson(
      this,
    );
  }
}

abstract class _ClickAction implements ClickAction {
  const factory _ClickAction(
      {final String? title,
      final String? type,
      final String? value}) = _$_ClickAction;

  factory _ClickAction.fromJson(Map<String, dynamic> json) =
      _$_ClickAction.fromJson;

  @override
  String? get title;
  @override
  String? get type;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_ClickActionCopyWith<_$_ClickAction> get copyWith =>
      throw _privateConstructorUsedError;
}
