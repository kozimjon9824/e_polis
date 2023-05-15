// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insurance_basic_filter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InsuranceBasicFilterState {
  StateStatus get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  List<BasicFilterData>? get data => throw _privateConstructorUsedError;
  List<BasicFilterData>? get searchResult => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  bool get clearList => throw _privateConstructorUsedError;
  BasicFilterRequest get basicFilterRequest =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InsuranceBasicFilterStateCopyWith<InsuranceBasicFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceBasicFilterStateCopyWith<$Res> {
  factory $InsuranceBasicFilterStateCopyWith(InsuranceBasicFilterState value,
          $Res Function(InsuranceBasicFilterState) then) =
      _$InsuranceBasicFilterStateCopyWithImpl<$Res, InsuranceBasicFilterState>;
  @useResult
  $Res call(
      {StateStatus status,
      Failure failure,
      List<BasicFilterData>? data,
      List<BasicFilterData>? searchResult,
      String? id,
      bool clearList,
      BasicFilterRequest basicFilterRequest});

  $BasicFilterRequestCopyWith<$Res> get basicFilterRequest;
}

/// @nodoc
class _$InsuranceBasicFilterStateCopyWithImpl<$Res,
        $Val extends InsuranceBasicFilterState>
    implements $InsuranceBasicFilterStateCopyWith<$Res> {
  _$InsuranceBasicFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? data = freezed,
    Object? searchResult = freezed,
    Object? id = freezed,
    Object? clearList = null,
    Object? basicFilterRequest = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BasicFilterData>?,
      searchResult: freezed == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<BasicFilterData>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clearList: null == clearList
          ? _value.clearList
          : clearList // ignore: cast_nullable_to_non_nullable
              as bool,
      basicFilterRequest: null == basicFilterRequest
          ? _value.basicFilterRequest
          : basicFilterRequest // ignore: cast_nullable_to_non_nullable
              as BasicFilterRequest,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BasicFilterRequestCopyWith<$Res> get basicFilterRequest {
    return $BasicFilterRequestCopyWith<$Res>(_value.basicFilterRequest,
        (value) {
      return _then(_value.copyWith(basicFilterRequest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InsuranceBasicFilterStateCopyWith<$Res>
    implements $InsuranceBasicFilterStateCopyWith<$Res> {
  factory _$$_InsuranceBasicFilterStateCopyWith(
          _$_InsuranceBasicFilterState value,
          $Res Function(_$_InsuranceBasicFilterState) then) =
      __$$_InsuranceBasicFilterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status,
      Failure failure,
      List<BasicFilterData>? data,
      List<BasicFilterData>? searchResult,
      String? id,
      bool clearList,
      BasicFilterRequest basicFilterRequest});

  @override
  $BasicFilterRequestCopyWith<$Res> get basicFilterRequest;
}

/// @nodoc
class __$$_InsuranceBasicFilterStateCopyWithImpl<$Res>
    extends _$InsuranceBasicFilterStateCopyWithImpl<$Res,
        _$_InsuranceBasicFilterState>
    implements _$$_InsuranceBasicFilterStateCopyWith<$Res> {
  __$$_InsuranceBasicFilterStateCopyWithImpl(
      _$_InsuranceBasicFilterState _value,
      $Res Function(_$_InsuranceBasicFilterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? data = freezed,
    Object? searchResult = freezed,
    Object? id = freezed,
    Object? clearList = null,
    Object? basicFilterRequest = null,
  }) {
    return _then(_$_InsuranceBasicFilterState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BasicFilterData>?,
      searchResult: freezed == searchResult
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<BasicFilterData>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clearList: null == clearList
          ? _value.clearList
          : clearList // ignore: cast_nullable_to_non_nullable
              as bool,
      basicFilterRequest: null == basicFilterRequest
          ? _value.basicFilterRequest
          : basicFilterRequest // ignore: cast_nullable_to_non_nullable
              as BasicFilterRequest,
    ));
  }
}

/// @nodoc

class _$_InsuranceBasicFilterState implements _InsuranceBasicFilterState {
  const _$_InsuranceBasicFilterState(
      {this.status = StateStatus.unknown,
      this.failure = const UnknownFailure(),
      final List<BasicFilterData>? data,
      final List<BasicFilterData>? searchResult,
      this.id,
      this.clearList = false,
      this.basicFilterRequest =
          const BasicFilterRequest(isVip: false, period: PERIOD_MONTHS)})
      : _data = data,
        _searchResult = searchResult;

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final Failure failure;
  final List<BasicFilterData>? _data;
  @override
  List<BasicFilterData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BasicFilterData>? _searchResult;
  @override
  List<BasicFilterData>? get searchResult {
    final value = _searchResult;
    if (value == null) return null;
    if (_searchResult is EqualUnmodifiableListView) return _searchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? id;
  @override
  @JsonKey()
  final bool clearList;
  @override
  @JsonKey()
  final BasicFilterRequest basicFilterRequest;

  @override
  String toString() {
    return 'InsuranceBasicFilterState(status: $status, failure: $failure, data: $data, searchResult: $searchResult, id: $id, clearList: $clearList, basicFilterRequest: $basicFilterRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsuranceBasicFilterState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clearList, clearList) ||
                other.clearList == clearList) &&
            (identical(other.basicFilterRequest, basicFilterRequest) ||
                other.basicFilterRequest == basicFilterRequest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      failure,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_searchResult),
      id,
      clearList,
      basicFilterRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InsuranceBasicFilterStateCopyWith<_$_InsuranceBasicFilterState>
      get copyWith => __$$_InsuranceBasicFilterStateCopyWithImpl<
          _$_InsuranceBasicFilterState>(this, _$identity);
}

abstract class _InsuranceBasicFilterState implements InsuranceBasicFilterState {
  const factory _InsuranceBasicFilterState(
          {final StateStatus status,
          final Failure failure,
          final List<BasicFilterData>? data,
          final List<BasicFilterData>? searchResult,
          final String? id,
          final bool clearList,
          final BasicFilterRequest basicFilterRequest}) =
      _$_InsuranceBasicFilterState;

  @override
  StateStatus get status;
  @override
  Failure get failure;
  @override
  List<BasicFilterData>? get data;
  @override
  List<BasicFilterData>? get searchResult;
  @override
  String? get id;
  @override
  bool get clearList;
  @override
  BasicFilterRequest get basicFilterRequest;
  @override
  @JsonKey(ignore: true)
  _$$_InsuranceBasicFilterStateCopyWith<_$_InsuranceBasicFilterState>
      get copyWith => throw _privateConstructorUsedError;
}
