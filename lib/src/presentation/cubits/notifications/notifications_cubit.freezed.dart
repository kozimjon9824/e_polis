// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationsState {
  List<NotificationModel> get notifications =>
      throw _privateConstructorUsedError;
  StateStatus get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get loadingNotification => throw _privateConstructorUsedError;
  bool get hasMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationsStateCopyWith<NotificationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res, NotificationsState>;
  @useResult
  $Res call(
      {List<NotificationModel> notifications,
      StateStatus status,
      Failure failure,
      int page,
      bool loadingNotification,
      bool hasMax});
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res, $Val extends NotificationsState>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? status = null,
    Object? failure = null,
    Object? page = null,
    Object? loadingNotification = null,
    Object? hasMax = null,
  }) {
    return _then(_value.copyWith(
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      loadingNotification: null == loadingNotification
          ? _value.loadingNotification
          : loadingNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMax: null == hasMax
          ? _value.hasMax
          : hasMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationsStateCopyWith<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  factory _$$_NotificationsStateCopyWith(_$_NotificationsState value,
          $Res Function(_$_NotificationsState) then) =
      __$$_NotificationsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NotificationModel> notifications,
      StateStatus status,
      Failure failure,
      int page,
      bool loadingNotification,
      bool hasMax});
}

/// @nodoc
class __$$_NotificationsStateCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$_NotificationsState>
    implements _$$_NotificationsStateCopyWith<$Res> {
  __$$_NotificationsStateCopyWithImpl(
      _$_NotificationsState _value, $Res Function(_$_NotificationsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? status = null,
    Object? failure = null,
    Object? page = null,
    Object? loadingNotification = null,
    Object? hasMax = null,
  }) {
    return _then(_$_NotificationsState(
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      loadingNotification: null == loadingNotification
          ? _value.loadingNotification
          : loadingNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMax: null == hasMax
          ? _value.hasMax
          : hasMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NotificationsState implements _NotificationsState {
  const _$_NotificationsState(
      {final List<NotificationModel> notifications = const [],
      this.status = StateStatus.unknown,
      this.failure = const UnknownFailure(),
      this.page = 1,
      this.loadingNotification = false,
      this.hasMax = false})
      : _notifications = notifications;

  final List<NotificationModel> _notifications;
  @override
  @JsonKey()
  List<NotificationModel> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool loadingNotification;
  @override
  @JsonKey()
  final bool hasMax;

  @override
  String toString() {
    return 'NotificationsState(notifications: $notifications, status: $status, failure: $failure, page: $page, loadingNotification: $loadingNotification, hasMax: $hasMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationsState &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.loadingNotification, loadingNotification) ||
                other.loadingNotification == loadingNotification) &&
            (identical(other.hasMax, hasMax) || other.hasMax == hasMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notifications),
      status,
      failure,
      page,
      loadingNotification,
      hasMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationsStateCopyWith<_$_NotificationsState> get copyWith =>
      __$$_NotificationsStateCopyWithImpl<_$_NotificationsState>(
          this, _$identity);
}

abstract class _NotificationsState implements NotificationsState {
  const factory _NotificationsState(
      {final List<NotificationModel> notifications,
      final StateStatus status,
      final Failure failure,
      final int page,
      final bool loadingNotification,
      final bool hasMax}) = _$_NotificationsState;

  @override
  List<NotificationModel> get notifications;
  @override
  StateStatus get status;
  @override
  Failure get failure;
  @override
  int get page;
  @override
  bool get loadingNotification;
  @override
  bool get hasMax;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationsStateCopyWith<_$_NotificationsState> get copyWith =>
      throw _privateConstructorUsedError;
}
