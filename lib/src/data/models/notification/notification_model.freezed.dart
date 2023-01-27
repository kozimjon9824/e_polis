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
  String? get description => throw _privateConstructorUsedError;
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
      String? description,
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
    Object? description = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      String? description,
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
    Object? description = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      this.description,
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
  final String? description;
  @override
  final ActionType? actionButton;

  @override
  String toString() {
    return 'NotificationModel(date: $date, day: $day, photo: $photo, title: $title, description: $description, actionButton: $actionButton)';
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
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.actionButton, actionButton) ||
                other.actionButton == actionButton));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, day, photo, title, description, actionButton);

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
      final String? description,
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
  String? get description;
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
  String? get action => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

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
  $Res call({String? action, String? value});
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
    Object? action = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
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
  $Res call({String? action, String? value});
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
    Object? action = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_ActionType(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
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
class _$_ActionType implements _ActionType {
  const _$_ActionType({this.action, this.value});

  factory _$_ActionType.fromJson(Map<String, dynamic> json) =>
      _$$_ActionTypeFromJson(json);

  @override
  final String? action;
  @override
  final String? value;

  @override
  String toString() {
    return 'ActionType(action: $action, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionType &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, action, value);

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
  const factory _ActionType({final String? action, final String? value}) =
      _$_ActionType;

  factory _ActionType.fromJson(Map<String, dynamic> json) =
      _$_ActionType.fromJson;

  @override
  String? get action;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_ActionTypeCopyWith<_$_ActionType> get copyWith =>
      throw _privateConstructorUsedError;
}
