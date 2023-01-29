// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  String? get date => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  ActionType? get actionButton => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {String? date,
      String? day,
      String? photo,
      String? title,
      String? text,
      ActionType? actionButton});

  $ActionTypeCopyWith<$Res>? get actionButton;
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? day = freezed,
    Object? photo = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? actionButton = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      actionButton: freezed == actionButton
          ? _value.actionButton
          : actionButton // ignore: cast_nullable_to_non_nullable
              as ActionType?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionTypeCopyWith<$Res>? get actionButton {
    if (_value.actionButton == null) {
      return null;
    }

    return $ActionTypeCopyWith<$Res>(_value.actionButton!, (value) {
      return _then(_value.copyWith(actionButton: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NotificationModelCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$_NotificationModelCopyWith(_$_NotificationModel value,
          $Res Function(_$_NotificationModel) then) =
      __$$_NotificationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? date,
      String? day,
      String? photo,
      String? title,
      String? text,
      ActionType? actionButton});

  @override
  $ActionTypeCopyWith<$Res>? get actionButton;
}

/// @nodoc
class __$$_NotificationModelCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$_NotificationModel>
    implements _$$_NotificationModelCopyWith<$Res> {
  __$$_NotificationModelCopyWithImpl(
      _$_NotificationModel _value, $Res Function(_$_NotificationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? day = freezed,
    Object? photo = freezed,
    Object? title = freezed,
    Object? text = freezed,
    Object? actionButton = freezed,
  }) {
    return _then(_$_NotificationModel(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      actionButton: freezed == actionButton
          ? _value.actionButton
          : actionButton // ignore: cast_nullable_to_non_nullable
              as ActionType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationModel implements _NotificationModel {
  const _$_NotificationModel(
      {this.date,
      this.day,
      this.photo,
      this.title,
      this.text,
      this.actionButton});

  factory _$_NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationModelFromJson(json);

  @override
  final String? date;
  @override
  final String? day;
  @override
  final String? photo;
  @override
  final String? title;
  @override
  final String? text;
  @override
  final ActionType? actionButton;

  @override
  String toString() {
    return 'NotificationModel(date: $date, day: $day, photo: $photo, title: $title, text: $text, actionButton: $actionButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationModel &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.actionButton, actionButton) ||
                other.actionButton == actionButton));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, day, photo, title, text, actionButton);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationModelCopyWith<_$_NotificationModel> get copyWith =>
      __$$_NotificationModelCopyWithImpl<_$_NotificationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationModelToJson(
      this,
    );
  }
}

abstract class _NotificationModel implements NotificationModel {
  const factory _NotificationModel(
      {final String? date,
      final String? day,
      final String? photo,
      final String? title,
      final String? text,
      final ActionType? actionButton}) = _$_NotificationModel;

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$_NotificationModel.fromJson;

  @override
  String? get date;
  @override
  String? get day;
  @override
  String? get photo;
  @override
  String? get title;
  @override
  String? get text;
  @override
  ActionType? get actionButton;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationModelCopyWith<_$_NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ActionType _$ActionTypeFromJson(Map<String, dynamic> json) {
  return _ActionType.fromJson(json);
}

/// @nodoc
mixin _$ActionType {
  String? get title => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get destination => throw _privateConstructorUsedError;
  String? get internalId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionTypeCopyWith<ActionType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionTypeCopyWith<$Res> {
  factory $ActionTypeCopyWith(
          ActionType value, $Res Function(ActionType) then) =
      _$ActionTypeCopyWithImpl<$Res, ActionType>;
  @useResult
  $Res call(
      {String? title, String? type, String? destination, String? internalId});
}

/// @nodoc
class _$ActionTypeCopyWithImpl<$Res, $Val extends ActionType>
    implements $ActionTypeCopyWith<$Res> {
  _$ActionTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? type = freezed,
    Object? destination = freezed,
    Object? internalId = freezed,
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
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      internalId: freezed == internalId
          ? _value.internalId
          : internalId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActionTypeCopyWith<$Res>
    implements $ActionTypeCopyWith<$Res> {
  factory _$$_ActionTypeCopyWith(
          _$_ActionType value, $Res Function(_$_ActionType) then) =
      __$$_ActionTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title, String? type, String? destination, String? internalId});
}

/// @nodoc
class __$$_ActionTypeCopyWithImpl<$Res>
    extends _$ActionTypeCopyWithImpl<$Res, _$_ActionType>
    implements _$$_ActionTypeCopyWith<$Res> {
  __$$_ActionTypeCopyWithImpl(
      _$_ActionType _value, $Res Function(_$_ActionType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? type = freezed,
    Object? destination = freezed,
    Object? internalId = freezed,
  }) {
    return _then(_$_ActionType(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      internalId: freezed == internalId
          ? _value.internalId
          : internalId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActionType implements _ActionType {
  const _$_ActionType(
      {this.title, this.type, this.destination, this.internalId});

  factory _$_ActionType.fromJson(Map<String, dynamic> json) =>
      _$$_ActionTypeFromJson(json);

  @override
  final String? title;
  @override
  final String? type;
  @override
  final String? destination;
  @override
  final String? internalId;

  @override
  String toString() {
    return 'ActionType(title: $title, type: $type, destination: $destination, internalId: $internalId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionType &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.internalId, internalId) ||
                other.internalId == internalId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, type, destination, internalId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActionTypeCopyWith<_$_ActionType> get copyWith =>
      __$$_ActionTypeCopyWithImpl<_$_ActionType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActionTypeToJson(
      this,
    );
  }
}

abstract class _ActionType implements ActionType {
  const factory _ActionType(
      {final String? title,
      final String? type,
      final String? destination,
      final String? internalId}) = _$_ActionType;

  factory _ActionType.fromJson(Map<String, dynamic> json) =
      _$_ActionType.fromJson;

  @override
  String? get title;
  @override
  String? get type;
  @override
  String? get destination;
  @override
  String? get internalId;
  @override
  @JsonKey(ignore: true)
  _$$_ActionTypeCopyWith<_$_ActionType> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationResponse _$NotificationResponseFromJson(Map<String, dynamic> json) {
  return _NotificationResponse.fromJson(json);
}

/// @nodoc
mixin _$NotificationResponse {
  List<NotificationModel>? get data => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationResponseCopyWith<NotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationResponseCopyWith<$Res> {
  factory $NotificationResponseCopyWith(NotificationResponse value,
          $Res Function(NotificationResponse) then) =
      _$NotificationResponseCopyWithImpl<$Res, NotificationResponse>;
  @useResult
  $Res call({List<NotificationModel>? data, int? totalCount});
}

/// @nodoc
class _$NotificationResponseCopyWithImpl<$Res,
        $Val extends NotificationResponse>
    implements $NotificationResponseCopyWith<$Res> {
  _$NotificationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationResponseCopyWith<$Res>
    implements $NotificationResponseCopyWith<$Res> {
  factory _$$_NotificationResponseCopyWith(_$_NotificationResponse value,
          $Res Function(_$_NotificationResponse) then) =
      __$$_NotificationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NotificationModel>? data, int? totalCount});
}

/// @nodoc
class __$$_NotificationResponseCopyWithImpl<$Res>
    extends _$NotificationResponseCopyWithImpl<$Res, _$_NotificationResponse>
    implements _$$_NotificationResponseCopyWith<$Res> {
  __$$_NotificationResponseCopyWithImpl(_$_NotificationResponse _value,
      $Res Function(_$_NotificationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_$_NotificationResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationResponse implements _NotificationResponse {
  const _$_NotificationResponse(
      {final List<NotificationModel>? data, this.totalCount})
      : _data = data;

  factory _$_NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationResponseFromJson(json);

  final List<NotificationModel>? _data;
  @override
  List<NotificationModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalCount;

  @override
  String toString() {
    return 'NotificationResponse(data: $data, totalCount: $totalCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationResponseCopyWith<_$_NotificationResponse> get copyWith =>
      __$$_NotificationResponseCopyWithImpl<_$_NotificationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationResponseToJson(
      this,
    );
  }
}

abstract class _NotificationResponse implements NotificationResponse {
  const factory _NotificationResponse(
      {final List<NotificationModel>? data,
      final int? totalCount}) = _$_NotificationResponse;

  factory _NotificationResponse.fromJson(Map<String, dynamic> json) =
      _$_NotificationResponse.fromJson;

  @override
  List<NotificationModel>? get data;
  @override
  int? get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationResponseCopyWith<_$_NotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
