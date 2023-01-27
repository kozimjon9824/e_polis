// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'limitless_driver_tab_bar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LimitlessDriverTabBarState {
  StateStatus get status => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  List<IndexedDriverModel> get drivers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LimitlessDriverTabBarStateCopyWith<LimitlessDriverTabBarState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LimitlessDriverTabBarStateCopyWith<$Res> {
  factory $LimitlessDriverTabBarStateCopyWith(LimitlessDriverTabBarState value,
          $Res Function(LimitlessDriverTabBarState) then) =
      _$LimitlessDriverTabBarStateCopyWithImpl<$Res,
          LimitlessDriverTabBarState>;
  @useResult
  $Res call(
      {StateStatus status, int currentIndex, List<IndexedDriverModel> drivers});
}

/// @nodoc
class _$LimitlessDriverTabBarStateCopyWithImpl<$Res,
        $Val extends LimitlessDriverTabBarState>
    implements $LimitlessDriverTabBarStateCopyWith<$Res> {
  _$LimitlessDriverTabBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentIndex = null,
    Object? drivers = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      drivers: null == drivers
          ? _value.drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<IndexedDriverModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LimitlessDriverTabBarStateCopyWith<$Res>
    implements $LimitlessDriverTabBarStateCopyWith<$Res> {
  factory _$$_LimitlessDriverTabBarStateCopyWith(
          _$_LimitlessDriverTabBarState value,
          $Res Function(_$_LimitlessDriverTabBarState) then) =
      __$$_LimitlessDriverTabBarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status, int currentIndex, List<IndexedDriverModel> drivers});
}

/// @nodoc
class __$$_LimitlessDriverTabBarStateCopyWithImpl<$Res>
    extends _$LimitlessDriverTabBarStateCopyWithImpl<$Res,
        _$_LimitlessDriverTabBarState>
    implements _$$_LimitlessDriverTabBarStateCopyWith<$Res> {
  __$$_LimitlessDriverTabBarStateCopyWithImpl(
      _$_LimitlessDriverTabBarState _value,
      $Res Function(_$_LimitlessDriverTabBarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentIndex = null,
    Object? drivers = null,
  }) {
    return _then(_$_LimitlessDriverTabBarState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      drivers: null == drivers
          ? _value._drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<IndexedDriverModel>,
    ));
  }
}

/// @nodoc

class _$_LimitlessDriverTabBarState implements _LimitlessDriverTabBarState {
  const _$_LimitlessDriverTabBarState(
      {this.status = StateStatus.unknown,
      this.currentIndex = 0,
      final List<IndexedDriverModel> drivers = const []})
      : _drivers = drivers;

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final int currentIndex;
  final List<IndexedDriverModel> _drivers;
  @override
  @JsonKey()
  List<IndexedDriverModel> get drivers {
    if (_drivers is EqualUnmodifiableListView) return _drivers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drivers);
  }

  @override
  String toString() {
    return 'LimitlessDriverTabBarState(status: $status, currentIndex: $currentIndex, drivers: $drivers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LimitlessDriverTabBarState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            const DeepCollectionEquality().equals(other._drivers, _drivers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, currentIndex,
      const DeepCollectionEquality().hash(_drivers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LimitlessDriverTabBarStateCopyWith<_$_LimitlessDriverTabBarState>
      get copyWith => __$$_LimitlessDriverTabBarStateCopyWithImpl<
          _$_LimitlessDriverTabBarState>(this, _$identity);
}

abstract class _LimitlessDriverTabBarState
    implements LimitlessDriverTabBarState {
  const factory _LimitlessDriverTabBarState(
      {final StateStatus status,
      final int currentIndex,
      final List<IndexedDriverModel> drivers}) = _$_LimitlessDriverTabBarState;

  @override
  StateStatus get status;
  @override
  int get currentIndex;
  @override
  List<IndexedDriverModel> get drivers;
  @override
  @JsonKey(ignore: true)
  _$$_LimitlessDriverTabBarStateCopyWith<_$_LimitlessDriverTabBarState>
      get copyWith => throw _privateConstructorUsedError;
}
