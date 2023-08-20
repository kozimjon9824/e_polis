// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_attributes_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TravelAttributesState {
  StateStatus get status => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError;
  Countries? get countries => throw _privateConstructorUsedError;
  Programs? get programs => throw _privateConstructorUsedError;
  TripPurpose? get tripPurpose => throw _privateConstructorUsedError;
  TravelersType? get travelersType => throw _privateConstructorUsedError;
  MultiDays? get multiDays => throw _privateConstructorUsedError;
  PolicyType? get policyType => throw _privateConstructorUsedError;
  TravelAttModel? get travelAttModel => throw _privateConstructorUsedError;
  List<CountryModel>? get searchResult => throw _privateConstructorUsedError;
  bool get isShengen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelAttributesStateCopyWith<TravelAttributesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelAttributesStateCopyWith<$Res> {
  factory $TravelAttributesStateCopyWith(TravelAttributesState value,
          $Res Function(TravelAttributesState) then) =
      _$TravelAttributesStateCopyWithImpl<$Res, TravelAttributesState>;
  @useResult
  $Res call(
      {StateStatus status,
      Failure failure,
      Countries? countries,
      Programs? programs,
      TripPurpose? tripPurpose,
      TravelersType? travelersType,
      MultiDays? multiDays,
      PolicyType? policyType,
      TravelAttModel? travelAttModel,
      List<CountryModel>? searchResult,
      bool isShengen});

  $CountriesCopyWith<$Res>? get countries;
  $ProgramsCopyWith<$Res>? get programs;
  $TripPurposeCopyWith<$Res>? get tripPurpose;
  $TravelersTypeCopyWith<$Res>? get travelersType;
  $MultiDaysCopyWith<$Res>? get multiDays;
  $PolicyTypeCopyWith<$Res>? get policyType;
}

/// @nodoc
class _$TravelAttributesStateCopyWithImpl<$Res,
        $Val extends TravelAttributesState>
    implements $TravelAttributesStateCopyWith<$Res> {
  _$TravelAttributesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? countries = freezed,
    Object? programs = freezed,
    Object? tripPurpose = freezed,
    Object? travelersType = freezed,
    Object? multiDays = freezed,
    Object? policyType = freezed,
    Object? travelAttModel = freezed,
    Object? searchResult = freezed,
    Object? isShengen = null,
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
      countries: freezed == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as Countries?,
      programs: freezed == programs
          ? _value.programs
          : programs // ignore: cast_nullable_to_non_nullable
              as Programs?,
      tripPurpose: freezed == tripPurpose
          ? _value.tripPurpose
          : tripPurpose // ignore: cast_nullable_to_non_nullable
              as TripPurpose?,
      travelersType: freezed == travelersType
          ? _value.travelersType
          : travelersType // ignore: cast_nullable_to_non_nullable
              as TravelersType?,
      multiDays: freezed == multiDays
          ? _value.multiDays
          : multiDays // ignore: cast_nullable_to_non_nullable
              as MultiDays?,
      policyType: freezed == policyType
          ? _value.policyType
          : policyType // ignore: cast_nullable_to_non_nullable
              as PolicyType?,
      travelAttModel: freezed == travelAttModel
          ? _value.travelAttModel
          : travelAttModel // ignore: cast_nullable_to_non_nullable
              as TravelAttModel?,
      searchResult: freezed == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>?,
      isShengen: null == isShengen
          ? _value.isShengen
          : isShengen // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountriesCopyWith<$Res>? get countries {
    if (_value.countries == null) {
      return null;
    }

    return $CountriesCopyWith<$Res>(_value.countries!, (value) {
      return _then(_value.copyWith(countries: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramsCopyWith<$Res>? get programs {
    if (_value.programs == null) {
      return null;
    }

    return $ProgramsCopyWith<$Res>(_value.programs!, (value) {
      return _then(_value.copyWith(programs: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TripPurposeCopyWith<$Res>? get tripPurpose {
    if (_value.tripPurpose == null) {
      return null;
    }

    return $TripPurposeCopyWith<$Res>(_value.tripPurpose!, (value) {
      return _then(_value.copyWith(tripPurpose: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelersTypeCopyWith<$Res>? get travelersType {
    if (_value.travelersType == null) {
      return null;
    }

    return $TravelersTypeCopyWith<$Res>(_value.travelersType!, (value) {
      return _then(_value.copyWith(travelersType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MultiDaysCopyWith<$Res>? get multiDays {
    if (_value.multiDays == null) {
      return null;
    }

    return $MultiDaysCopyWith<$Res>(_value.multiDays!, (value) {
      return _then(_value.copyWith(multiDays: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PolicyTypeCopyWith<$Res>? get policyType {
    if (_value.policyType == null) {
      return null;
    }

    return $PolicyTypeCopyWith<$Res>(_value.policyType!, (value) {
      return _then(_value.copyWith(policyType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TravelAttributesStateCopyWith<$Res>
    implements $TravelAttributesStateCopyWith<$Res> {
  factory _$$_TravelAttributesStateCopyWith(_$_TravelAttributesState value,
          $Res Function(_$_TravelAttributesState) then) =
      __$$_TravelAttributesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status,
      Failure failure,
      Countries? countries,
      Programs? programs,
      TripPurpose? tripPurpose,
      TravelersType? travelersType,
      MultiDays? multiDays,
      PolicyType? policyType,
      TravelAttModel? travelAttModel,
      List<CountryModel>? searchResult,
      bool isShengen});

  @override
  $CountriesCopyWith<$Res>? get countries;
  @override
  $ProgramsCopyWith<$Res>? get programs;
  @override
  $TripPurposeCopyWith<$Res>? get tripPurpose;
  @override
  $TravelersTypeCopyWith<$Res>? get travelersType;
  @override
  $MultiDaysCopyWith<$Res>? get multiDays;
  @override
  $PolicyTypeCopyWith<$Res>? get policyType;
}

/// @nodoc
class __$$_TravelAttributesStateCopyWithImpl<$Res>
    extends _$TravelAttributesStateCopyWithImpl<$Res, _$_TravelAttributesState>
    implements _$$_TravelAttributesStateCopyWith<$Res> {
  __$$_TravelAttributesStateCopyWithImpl(_$_TravelAttributesState _value,
      $Res Function(_$_TravelAttributesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? failure = null,
    Object? countries = freezed,
    Object? programs = freezed,
    Object? tripPurpose = freezed,
    Object? travelersType = freezed,
    Object? multiDays = freezed,
    Object? policyType = freezed,
    Object? travelAttModel = freezed,
    Object? searchResult = freezed,
    Object? isShengen = null,
  }) {
    return _then(_$_TravelAttributesState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      countries: freezed == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as Countries?,
      programs: freezed == programs
          ? _value.programs
          : programs // ignore: cast_nullable_to_non_nullable
              as Programs?,
      tripPurpose: freezed == tripPurpose
          ? _value.tripPurpose
          : tripPurpose // ignore: cast_nullable_to_non_nullable
              as TripPurpose?,
      travelersType: freezed == travelersType
          ? _value.travelersType
          : travelersType // ignore: cast_nullable_to_non_nullable
              as TravelersType?,
      multiDays: freezed == multiDays
          ? _value.multiDays
          : multiDays // ignore: cast_nullable_to_non_nullable
              as MultiDays?,
      policyType: freezed == policyType
          ? _value.policyType
          : policyType // ignore: cast_nullable_to_non_nullable
              as PolicyType?,
      travelAttModel: freezed == travelAttModel
          ? _value.travelAttModel
          : travelAttModel // ignore: cast_nullable_to_non_nullable
              as TravelAttModel?,
      searchResult: freezed == searchResult
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>?,
      isShengen: null == isShengen
          ? _value.isShengen
          : isShengen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TravelAttributesState implements _TravelAttributesState {
  const _$_TravelAttributesState(
      {this.status = StateStatus.unknown,
      this.failure = const UnknownFailure(),
      this.countries,
      this.programs,
      this.tripPurpose,
      this.travelersType,
      this.multiDays,
      this.policyType,
      this.travelAttModel,
      final List<CountryModel>? searchResult,
      this.isShengen = false})
      : _searchResult = searchResult;

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final Failure failure;
  @override
  final Countries? countries;
  @override
  final Programs? programs;
  @override
  final TripPurpose? tripPurpose;
  @override
  final TravelersType? travelersType;
  @override
  final MultiDays? multiDays;
  @override
  final PolicyType? policyType;
  @override
  final TravelAttModel? travelAttModel;
  final List<CountryModel>? _searchResult;
  @override
  List<CountryModel>? get searchResult {
    final value = _searchResult;
    if (value == null) return null;
    if (_searchResult is EqualUnmodifiableListView) return _searchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isShengen;

  @override
  String toString() {
    return 'TravelAttributesState(status: $status, failure: $failure, countries: $countries, programs: $programs, tripPurpose: $tripPurpose, travelersType: $travelersType, multiDays: $multiDays, policyType: $policyType, travelAttModel: $travelAttModel, searchResult: $searchResult, isShengen: $isShengen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TravelAttributesState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.countries, countries) ||
                other.countries == countries) &&
            (identical(other.programs, programs) ||
                other.programs == programs) &&
            (identical(other.tripPurpose, tripPurpose) ||
                other.tripPurpose == tripPurpose) &&
            (identical(other.travelersType, travelersType) ||
                other.travelersType == travelersType) &&
            (identical(other.multiDays, multiDays) ||
                other.multiDays == multiDays) &&
            (identical(other.policyType, policyType) ||
                other.policyType == policyType) &&
            (identical(other.travelAttModel, travelAttModel) ||
                other.travelAttModel == travelAttModel) &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult) &&
            (identical(other.isShengen, isShengen) ||
                other.isShengen == isShengen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      failure,
      countries,
      programs,
      tripPurpose,
      travelersType,
      multiDays,
      policyType,
      travelAttModel,
      const DeepCollectionEquality().hash(_searchResult),
      isShengen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TravelAttributesStateCopyWith<_$_TravelAttributesState> get copyWith =>
      __$$_TravelAttributesStateCopyWithImpl<_$_TravelAttributesState>(
          this, _$identity);
}

abstract class _TravelAttributesState implements TravelAttributesState {
  const factory _TravelAttributesState(
      {final StateStatus status,
      final Failure failure,
      final Countries? countries,
      final Programs? programs,
      final TripPurpose? tripPurpose,
      final TravelersType? travelersType,
      final MultiDays? multiDays,
      final PolicyType? policyType,
      final TravelAttModel? travelAttModel,
      final List<CountryModel>? searchResult,
      final bool isShengen}) = _$_TravelAttributesState;

  @override
  StateStatus get status;
  @override
  Failure get failure;
  @override
  Countries? get countries;
  @override
  Programs? get programs;
  @override
  TripPurpose? get tripPurpose;
  @override
  TravelersType? get travelersType;
  @override
  MultiDays? get multiDays;
  @override
  PolicyType? get policyType;
  @override
  TravelAttModel? get travelAttModel;
  @override
  List<CountryModel>? get searchResult;
  @override
  bool get isShengen;
  @override
  @JsonKey(ignore: true)
  _$$_TravelAttributesStateCopyWith<_$_TravelAttributesState> get copyWith =>
      throw _privateConstructorUsedError;
}
