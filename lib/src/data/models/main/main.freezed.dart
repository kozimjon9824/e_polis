// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainScreenData _$MainScreenDataFromJson(Map<String, dynamic> json) {
  return _MainScreenData.fromJson(json);
}

/// @nodoc
mixin _$MainScreenData {
  UserData? get user => throw _privateConstructorUsedError;
  bool? get hasNotification => throw _privateConstructorUsedError;
  List<BannerResponse>? get banners => throw _privateConstructorUsedError;
  List<ProductData>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainScreenDataCopyWith<MainScreenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenDataCopyWith<$Res> {
  factory $MainScreenDataCopyWith(
          MainScreenData value, $Res Function(MainScreenData) then) =
      _$MainScreenDataCopyWithImpl<$Res, MainScreenData>;
  @useResult
  $Res call(
      {UserData? user,
      bool? hasNotification,
      List<BannerResponse>? banners,
      List<ProductData>? products});

  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class _$MainScreenDataCopyWithImpl<$Res, $Val extends MainScreenData>
    implements $MainScreenDataCopyWith<$Res> {
  _$MainScreenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? hasNotification = freezed,
    Object? banners = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData?,
      hasNotification: freezed == hasNotification
          ? _value.hasNotification
          : hasNotification // ignore: cast_nullable_to_non_nullable
              as bool?,
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerResponse>?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductData>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MainScreenDataCopyWith<$Res>
    implements $MainScreenDataCopyWith<$Res> {
  factory _$$_MainScreenDataCopyWith(
          _$_MainScreenData value, $Res Function(_$_MainScreenData) then) =
      __$$_MainScreenDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserData? user,
      bool? hasNotification,
      List<BannerResponse>? banners,
      List<ProductData>? products});

  @override
  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_MainScreenDataCopyWithImpl<$Res>
    extends _$MainScreenDataCopyWithImpl<$Res, _$_MainScreenData>
    implements _$$_MainScreenDataCopyWith<$Res> {
  __$$_MainScreenDataCopyWithImpl(
      _$_MainScreenData _value, $Res Function(_$_MainScreenData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? hasNotification = freezed,
    Object? banners = freezed,
    Object? products = freezed,
  }) {
    return _then(_$_MainScreenData(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData?,
      hasNotification: freezed == hasNotification
          ? _value.hasNotification
          : hasNotification // ignore: cast_nullable_to_non_nullable
              as bool?,
      banners: freezed == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerResponse>?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainScreenData
    with DiagnosticableTreeMixin
    implements _MainScreenData {
  const _$_MainScreenData(
      {this.user,
      this.hasNotification,
      final List<BannerResponse>? banners,
      final List<ProductData>? products})
      : _banners = banners,
        _products = products;

  factory _$_MainScreenData.fromJson(Map<String, dynamic> json) =>
      _$$_MainScreenDataFromJson(json);

  @override
  final UserData? user;
  @override
  final bool? hasNotification;
  final List<BannerResponse>? _banners;
  @override
  List<BannerResponse>? get banners {
    final value = _banners;
    if (value == null) return null;
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductData>? _products;
  @override
  List<ProductData>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainScreenData(user: $user, hasNotification: $hasNotification, banners: $banners, products: $products)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainScreenData'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('hasNotification', hasNotification))
      ..add(DiagnosticsProperty('banners', banners))
      ..add(DiagnosticsProperty('products', products));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainScreenData &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.hasNotification, hasNotification) ||
                other.hasNotification == hasNotification) &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      hasNotification,
      const DeepCollectionEquality().hash(_banners),
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainScreenDataCopyWith<_$_MainScreenData> get copyWith =>
      __$$_MainScreenDataCopyWithImpl<_$_MainScreenData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainScreenDataToJson(
      this,
    );
  }
}

abstract class _MainScreenData implements MainScreenData {
  const factory _MainScreenData(
      {final UserData? user,
      final bool? hasNotification,
      final List<BannerResponse>? banners,
      final List<ProductData>? products}) = _$_MainScreenData;

  factory _MainScreenData.fromJson(Map<String, dynamic> json) =
      _$_MainScreenData.fromJson;

  @override
  UserData? get user;
  @override
  bool? get hasNotification;
  @override
  List<BannerResponse>? get banners;
  @override
  List<ProductData>? get products;
  @override
  @JsonKey(ignore: true)
  _$$_MainScreenDataCopyWith<_$_MainScreenData> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerResponse _$BannerResponseFromJson(Map<String, dynamic> json) {
  return _BannerResponse.fromJson(json);
}

/// @nodoc
mixin _$BannerResponse {
  String? get photo => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  MetaData? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerResponseCopyWith<BannerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerResponseCopyWith<$Res> {
  factory $BannerResponseCopyWith(
          BannerResponse value, $Res Function(BannerResponse) then) =
      _$BannerResponseCopyWithImpl<$Res, BannerResponse>;
  @useResult
  $Res call({String? photo, String? action, String? value, MetaData? meta});

  $MetaDataCopyWith<$Res>? get meta;
}

/// @nodoc
class _$BannerResponseCopyWithImpl<$Res, $Val extends BannerResponse>
    implements $BannerResponseCopyWith<$Res> {
  _$BannerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = freezed,
    Object? action = freezed,
    Object? value = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDataCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaDataCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BannerResponseCopyWith<$Res>
    implements $BannerResponseCopyWith<$Res> {
  factory _$$_BannerResponseCopyWith(
          _$_BannerResponse value, $Res Function(_$_BannerResponse) then) =
      __$$_BannerResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? photo, String? action, String? value, MetaData? meta});

  @override
  $MetaDataCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_BannerResponseCopyWithImpl<$Res>
    extends _$BannerResponseCopyWithImpl<$Res, _$_BannerResponse>
    implements _$$_BannerResponseCopyWith<$Res> {
  __$$_BannerResponseCopyWithImpl(
      _$_BannerResponse _value, $Res Function(_$_BannerResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = freezed,
    Object? action = freezed,
    Object? value = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_BannerResponse(
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BannerResponse
    with DiagnosticableTreeMixin
    implements _BannerResponse {
  const _$_BannerResponse({this.photo, this.action, this.value, this.meta});

  factory _$_BannerResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BannerResponseFromJson(json);

  @override
  final String? photo;
  @override
  final String? action;
  @override
  final String? value;
  @override
  final MetaData? meta;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BannerResponse(photo: $photo, action: $action, value: $value, meta: $meta)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BannerResponse'))
      ..add(DiagnosticsProperty('photo', photo))
      ..add(DiagnosticsProperty('action', action))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('meta', meta));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BannerResponse &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, photo, action, value, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BannerResponseCopyWith<_$_BannerResponse> get copyWith =>
      __$$_BannerResponseCopyWithImpl<_$_BannerResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannerResponseToJson(
      this,
    );
  }
}

abstract class _BannerResponse implements BannerResponse {
  const factory _BannerResponse(
      {final String? photo,
      final String? action,
      final String? value,
      final MetaData? meta}) = _$_BannerResponse;

  factory _BannerResponse.fromJson(Map<String, dynamic> json) =
      _$_BannerResponse.fromJson;

  @override
  String? get photo;
  @override
  String? get action;
  @override
  String? get value;
  @override
  MetaData? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_BannerResponseCopyWith<_$_BannerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaData _$MetaDataFromJson(Map<String, dynamic> json) {
  return _MetaData.fromJson(json);
}

/// @nodoc
mixin _$MetaData {
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDataCopyWith<MetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataCopyWith<$Res> {
  factory $MetaDataCopyWith(MetaData value, $Res Function(MetaData) then) =
      _$MetaDataCopyWithImpl<$Res, MetaData>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$MetaDataCopyWithImpl<$Res, $Val extends MetaData>
    implements $MetaDataCopyWith<$Res> {
  _$MetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaDataCopyWith<$Res> implements $MetaDataCopyWith<$Res> {
  factory _$$_MetaDataCopyWith(
          _$_MetaData value, $Res Function(_$_MetaData) then) =
      __$$_MetaDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$_MetaDataCopyWithImpl<$Res>
    extends _$MetaDataCopyWithImpl<$Res, _$_MetaData>
    implements _$$_MetaDataCopyWith<$Res> {
  __$$_MetaDataCopyWithImpl(
      _$_MetaData _value, $Res Function(_$_MetaData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_MetaData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaData with DiagnosticableTreeMixin implements _MetaData {
  const _$_MetaData({this.id});

  factory _$_MetaData.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDataFromJson(json);

  @override
  final String? id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MetaData(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MetaData'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaData &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaDataCopyWith<_$_MetaData> get copyWith =>
      __$$_MetaDataCopyWithImpl<_$_MetaData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaDataToJson(
      this,
    );
  }
}

abstract class _MetaData implements MetaData {
  const factory _MetaData({final String? id}) = _$_MetaData;

  factory _MetaData.fromJson(Map<String, dynamic> json) = _$_MetaData.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_MetaDataCopyWith<_$_MetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  String? get fullName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call({String? fullName, String? phone, String? photo});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$$_UserDataCopyWith(
          _$_UserData value, $Res Function(_$_UserData) then) =
      __$$_UserDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fullName, String? phone, String? photo});
}

/// @nodoc
class __$$_UserDataCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$_UserData>
    implements _$$_UserDataCopyWith<$Res> {
  __$$_UserDataCopyWithImpl(
      _$_UserData _value, $Res Function(_$_UserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$_UserData(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserData with DiagnosticableTreeMixin implements _UserData {
  const _$_UserData({this.fullName, this.phone, this.photo});

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataFromJson(json);

  @override
  final String? fullName;
  @override
  final String? phone;
  @override
  final String? photo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserData(fullName: $fullName, phone: $phone, photo: $photo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserData'))
      ..add(DiagnosticsProperty('fullName', fullName))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('photo', photo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserData &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, phone, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      __$$_UserDataCopyWithImpl<_$_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {final String? fullName,
      final String? phone,
      final String? photo}) = _$_UserData;

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

  @override
  String? get fullName;
  @override
  String? get phone;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return _ProductData.fromJson(json);
}

/// @nodoc
mixin _$ProductData {
  String? get id => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get isDisabled => throw _privateConstructorUsedError;
  Label? get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDataCopyWith<ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
          ProductData value, $Res Function(ProductData) then) =
      _$ProductDataCopyWithImpl<$Res, ProductData>;
  @useResult
  $Res call(
      {String? id,
      String? photo,
      String? name,
      Category? category,
      String? description,
      bool? isDisabled,
      Label? label});

  $CategoryCopyWith<$Res>? get category;
  $LabelCopyWith<$Res>? get label;
}

/// @nodoc
class _$ProductDataCopyWithImpl<$Res, $Val extends ProductData>
    implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photo = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? description = freezed,
    Object? isDisabled = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isDisabled: freezed == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as Label?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelCopyWith<$Res>? get label {
    if (_value.label == null) {
      return null;
    }

    return $LabelCopyWith<$Res>(_value.label!, (value) {
      return _then(_value.copyWith(label: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductDataCopyWith<$Res>
    implements $ProductDataCopyWith<$Res> {
  factory _$$_ProductDataCopyWith(
          _$_ProductData value, $Res Function(_$_ProductData) then) =
      __$$_ProductDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? photo,
      String? name,
      Category? category,
      String? description,
      bool? isDisabled,
      Label? label});

  @override
  $CategoryCopyWith<$Res>? get category;
  @override
  $LabelCopyWith<$Res>? get label;
}

/// @nodoc
class __$$_ProductDataCopyWithImpl<$Res>
    extends _$ProductDataCopyWithImpl<$Res, _$_ProductData>
    implements _$$_ProductDataCopyWith<$Res> {
  __$$_ProductDataCopyWithImpl(
      _$_ProductData _value, $Res Function(_$_ProductData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photo = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? description = freezed,
    Object? isDisabled = freezed,
    Object? label = freezed,
  }) {
    return _then(_$_ProductData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isDisabled: freezed == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as Label?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductData with DiagnosticableTreeMixin implements _ProductData {
  const _$_ProductData(
      {this.id,
      this.photo,
      this.name,
      this.category,
      this.description,
      this.isDisabled,
      this.label});

  factory _$_ProductData.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDataFromJson(json);

  @override
  final String? id;
  @override
  final String? photo;
  @override
  final String? name;
  @override
  final Category? category;
  @override
  final String? description;
  @override
  final bool? isDisabled;
  @override
  final Label? label;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductData(id: $id, photo: $photo, name: $name, category: $category, description: $description, isDisabled: $isDisabled, label: $label)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('photo', photo))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('isDisabled', isDisabled))
      ..add(DiagnosticsProperty('label', label));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isDisabled, isDisabled) ||
                other.isDisabled == isDisabled) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, photo, name, category, description, isDisabled, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDataCopyWith<_$_ProductData> get copyWith =>
      __$$_ProductDataCopyWithImpl<_$_ProductData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDataToJson(
      this,
    );
  }
}

abstract class _ProductData implements ProductData {
  const factory _ProductData(
      {final String? id,
      final String? photo,
      final String? name,
      final Category? category,
      final String? description,
      final bool? isDisabled,
      final Label? label}) = _$_ProductData;

  factory _ProductData.fromJson(Map<String, dynamic> json) =
      _$_ProductData.fromJson;

  @override
  String? get id;
  @override
  String? get photo;
  @override
  String? get name;
  @override
  Category? get category;
  @override
  String? get description;
  @override
  bool? get isDisabled;
  @override
  Label? get label;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDataCopyWith<_$_ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String? name, String? type});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? type});
}

/// @nodoc
class __$$_CategoryCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$_Category>
    implements _$$_CategoryCopyWith<$Res> {
  __$$_CategoryCopyWithImpl(
      _$_Category _value, $Res Function(_$_Category) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_Category(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$_Category with DiagnosticableTreeMixin implements _Category {
  const _$_Category({this.name, this.type});

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @override
  final String? name;
  @override
  final String? type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Category(name: $name, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Category'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      __$$_CategoryCopyWithImpl<_$_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category({final String? name, final String? type}) =
      _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  String? get name;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      throw _privateConstructorUsedError;
}

Label _$LabelFromJson(Map<String, dynamic> json) {
  return _Label.fromJson(json);
}

/// @nodoc
mixin _$Label {
  String? get title => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabelCopyWith<Label> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelCopyWith<$Res> {
  factory $LabelCopyWith(Label value, $Res Function(Label) then) =
      _$LabelCopyWithImpl<$Res, Label>;
  @useResult
  $Res call({String? title, String? color});
}

/// @nodoc
class _$LabelCopyWithImpl<$Res, $Val extends Label>
    implements $LabelCopyWith<$Res> {
  _$LabelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LabelCopyWith<$Res> implements $LabelCopyWith<$Res> {
  factory _$$_LabelCopyWith(_$_Label value, $Res Function(_$_Label) then) =
      __$$_LabelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? color});
}

/// @nodoc
class __$$_LabelCopyWithImpl<$Res> extends _$LabelCopyWithImpl<$Res, _$_Label>
    implements _$$_LabelCopyWith<$Res> {
  __$$_LabelCopyWithImpl(_$_Label _value, $Res Function(_$_Label) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_Label(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Label with DiagnosticableTreeMixin implements _Label {
  const _$_Label({this.title, this.color});

  factory _$_Label.fromJson(Map<String, dynamic> json) =>
      _$$_LabelFromJson(json);

  @override
  final String? title;
  @override
  final String? color;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Label(title: $title, color: $color)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Label'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('color', color));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Label &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LabelCopyWith<_$_Label> get copyWith =>
      __$$_LabelCopyWithImpl<_$_Label>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LabelToJson(
      this,
    );
  }
}

abstract class _Label implements Label {
  const factory _Label({final String? title, final String? color}) = _$_Label;

  factory _Label.fromJson(Map<String, dynamic> json) = _$_Label.fromJson;

  @override
  String? get title;
  @override
  String? get color;
  @override
  @JsonKey(ignore: true)
  _$$_LabelCopyWith<_$_Label> get copyWith =>
      throw _privateConstructorUsedError;
}
