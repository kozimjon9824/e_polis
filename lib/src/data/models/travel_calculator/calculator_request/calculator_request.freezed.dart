// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculator_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelCalRequest _$TravelCalRequestFromJson(Map<String, dynamic> json) {
  return _TravelCalRequest.fromJson(json);
}

/// @nodoc
mixin _$TravelCalRequest {
  Policy? get policy => throw _privateConstructorUsedError;
  List<Traveler>? get travelers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelCalRequestCopyWith<TravelCalRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCalRequestCopyWith<$Res> {
  factory $TravelCalRequestCopyWith(
          TravelCalRequest value, $Res Function(TravelCalRequest) then) =
      _$TravelCalRequestCopyWithImpl<$Res, TravelCalRequest>;
  @useResult
  $Res call({Policy? policy, List<Traveler>? travelers});

  $PolicyCopyWith<$Res>? get policy;
}

/// @nodoc
class _$TravelCalRequestCopyWithImpl<$Res, $Val extends TravelCalRequest>
    implements $TravelCalRequestCopyWith<$Res> {
  _$TravelCalRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policy = freezed,
    Object? travelers = freezed,
  }) {
    return _then(_value.copyWith(
      policy: freezed == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as Policy?,
      travelers: freezed == travelers
          ? _value.travelers
          : travelers // ignore: cast_nullable_to_non_nullable
              as List<Traveler>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PolicyCopyWith<$Res>? get policy {
    if (_value.policy == null) {
      return null;
    }

    return $PolicyCopyWith<$Res>(_value.policy!, (value) {
      return _then(_value.copyWith(policy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TravelCalRequestCopyWith<$Res>
    implements $TravelCalRequestCopyWith<$Res> {
  factory _$$_TravelCalRequestCopyWith(
          _$_TravelCalRequest value, $Res Function(_$_TravelCalRequest) then) =
      __$$_TravelCalRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Policy? policy, List<Traveler>? travelers});

  @override
  $PolicyCopyWith<$Res>? get policy;
}

/// @nodoc
class __$$_TravelCalRequestCopyWithImpl<$Res>
    extends _$TravelCalRequestCopyWithImpl<$Res, _$_TravelCalRequest>
    implements _$$_TravelCalRequestCopyWith<$Res> {
  __$$_TravelCalRequestCopyWithImpl(
      _$_TravelCalRequest _value, $Res Function(_$_TravelCalRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policy = freezed,
    Object? travelers = freezed,
  }) {
    return _then(_$_TravelCalRequest(
      policy: freezed == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as Policy?,
      travelers: freezed == travelers
          ? _value._travelers
          : travelers // ignore: cast_nullable_to_non_nullable
              as List<Traveler>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TravelCalRequest implements _TravelCalRequest {
  const _$_TravelCalRequest({this.policy, final List<Traveler>? travelers})
      : _travelers = travelers;

  factory _$_TravelCalRequest.fromJson(Map<String, dynamic> json) =>
      _$$_TravelCalRequestFromJson(json);

  @override
  final Policy? policy;
  final List<Traveler>? _travelers;
  @override
  List<Traveler>? get travelers {
    final value = _travelers;
    if (value == null) return null;
    if (_travelers is EqualUnmodifiableListView) return _travelers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TravelCalRequest(policy: $policy, travelers: $travelers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TravelCalRequest &&
            (identical(other.policy, policy) || other.policy == policy) &&
            const DeepCollectionEquality()
                .equals(other._travelers, _travelers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, policy, const DeepCollectionEquality().hash(_travelers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TravelCalRequestCopyWith<_$_TravelCalRequest> get copyWith =>
      __$$_TravelCalRequestCopyWithImpl<_$_TravelCalRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TravelCalRequestToJson(
      this,
    );
  }
}

abstract class _TravelCalRequest implements TravelCalRequest {
  const factory _TravelCalRequest(
      {final Policy? policy,
      final List<Traveler>? travelers}) = _$_TravelCalRequest;

  factory _TravelCalRequest.fromJson(Map<String, dynamic> json) =
      _$_TravelCalRequest.fromJson;

  @override
  Policy? get policy;
  @override
  List<Traveler>? get travelers;
  @override
  @JsonKey(ignore: true)
  _$$_TravelCalRequestCopyWith<_$_TravelCalRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

Policy _$PolicyFromJson(Map<String, dynamic> json) {
  return _Policy.fromJson(json);
}

/// @nodoc
mixin _$Policy {
  @JsonKey(name: 'policy_type')
  int? get policyType => throw _privateConstructorUsedError;
  @JsonKey(name: 'multi_days')
  int? get multiDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  int? get program => throw _privateConstructorUsedError;
  @JsonKey(name: 'trip_purpose')
  int? get tripPurpose => throw _privateConstructorUsedError;
  @JsonKey(name: 'travelers_type')
  int? get travelersType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicyCopyWith<Policy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyCopyWith<$Res> {
  factory $PolicyCopyWith(Policy value, $Res Function(Policy) then) =
      _$PolicyCopyWithImpl<$Res, Policy>;
  @useResult
  $Res call(
      {@JsonKey(name: 'policy_type') int? policyType,
      @JsonKey(name: 'multi_days') int? multiDays,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      String? country,
      int? program,
      @JsonKey(name: 'trip_purpose') int? tripPurpose,
      @JsonKey(name: 'travelers_type') int? travelersType});
}

/// @nodoc
class _$PolicyCopyWithImpl<$Res, $Val extends Policy>
    implements $PolicyCopyWith<$Res> {
  _$PolicyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policyType = freezed,
    Object? multiDays = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? country = freezed,
    Object? program = freezed,
    Object? tripPurpose = freezed,
    Object? travelersType = freezed,
  }) {
    return _then(_value.copyWith(
      policyType: freezed == policyType
          ? _value.policyType
          : policyType // ignore: cast_nullable_to_non_nullable
              as int?,
      multiDays: freezed == multiDays
          ? _value.multiDays
          : multiDays // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      program: freezed == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as int?,
      tripPurpose: freezed == tripPurpose
          ? _value.tripPurpose
          : tripPurpose // ignore: cast_nullable_to_non_nullable
              as int?,
      travelersType: freezed == travelersType
          ? _value.travelersType
          : travelersType // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PolicyCopyWith<$Res> implements $PolicyCopyWith<$Res> {
  factory _$$_PolicyCopyWith(_$_Policy value, $Res Function(_$_Policy) then) =
      __$$_PolicyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'policy_type') int? policyType,
      @JsonKey(name: 'multi_days') int? multiDays,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      String? country,
      int? program,
      @JsonKey(name: 'trip_purpose') int? tripPurpose,
      @JsonKey(name: 'travelers_type') int? travelersType});
}

/// @nodoc
class __$$_PolicyCopyWithImpl<$Res>
    extends _$PolicyCopyWithImpl<$Res, _$_Policy>
    implements _$$_PolicyCopyWith<$Res> {
  __$$_PolicyCopyWithImpl(_$_Policy _value, $Res Function(_$_Policy) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policyType = freezed,
    Object? multiDays = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? country = freezed,
    Object? program = freezed,
    Object? tripPurpose = freezed,
    Object? travelersType = freezed,
  }) {
    return _then(_$_Policy(
      policyType: freezed == policyType
          ? _value.policyType
          : policyType // ignore: cast_nullable_to_non_nullable
              as int?,
      multiDays: freezed == multiDays
          ? _value.multiDays
          : multiDays // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      program: freezed == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as int?,
      tripPurpose: freezed == tripPurpose
          ? _value.tripPurpose
          : tripPurpose // ignore: cast_nullable_to_non_nullable
              as int?,
      travelersType: freezed == travelersType
          ? _value.travelersType
          : travelersType // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Policy implements _Policy {
  const _$_Policy(
      {@JsonKey(name: 'policy_type') this.policyType,
      @JsonKey(name: 'multi_days') this.multiDays,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate,
      this.country,
      this.program,
      @JsonKey(name: 'trip_purpose') this.tripPurpose,
      @JsonKey(name: 'travelers_type') this.travelersType});

  factory _$_Policy.fromJson(Map<String, dynamic> json) =>
      _$$_PolicyFromJson(json);

  @override
  @JsonKey(name: 'policy_type')
  final int? policyType;
  @override
  @JsonKey(name: 'multi_days')
  final int? multiDays;
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;
  @override
  final String? country;
  @override
  final int? program;
  @override
  @JsonKey(name: 'trip_purpose')
  final int? tripPurpose;
  @override
  @JsonKey(name: 'travelers_type')
  final int? travelersType;

  @override
  String toString() {
    return 'Policy(policyType: $policyType, multiDays: $multiDays, startDate: $startDate, endDate: $endDate, country: $country, program: $program, tripPurpose: $tripPurpose, travelersType: $travelersType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Policy &&
            (identical(other.policyType, policyType) ||
                other.policyType == policyType) &&
            (identical(other.multiDays, multiDays) ||
                other.multiDays == multiDays) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.program, program) || other.program == program) &&
            (identical(other.tripPurpose, tripPurpose) ||
                other.tripPurpose == tripPurpose) &&
            (identical(other.travelersType, travelersType) ||
                other.travelersType == travelersType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, policyType, multiDays, startDate,
      endDate, country, program, tripPurpose, travelersType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PolicyCopyWith<_$_Policy> get copyWith =>
      __$$_PolicyCopyWithImpl<_$_Policy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PolicyToJson(
      this,
    );
  }
}

abstract class _Policy implements Policy {
  const factory _Policy(
      {@JsonKey(name: 'policy_type') final int? policyType,
      @JsonKey(name: 'multi_days') final int? multiDays,
      @JsonKey(name: 'start_date') final String? startDate,
      @JsonKey(name: 'end_date') final String? endDate,
      final String? country,
      final int? program,
      @JsonKey(name: 'trip_purpose') final int? tripPurpose,
      @JsonKey(name: 'travelers_type') final int? travelersType}) = _$_Policy;

  factory _Policy.fromJson(Map<String, dynamic> json) = _$_Policy.fromJson;

  @override
  @JsonKey(name: 'policy_type')
  int? get policyType;
  @override
  @JsonKey(name: 'multi_days')
  int? get multiDays;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;
  @override
  String? get country;
  @override
  int? get program;
  @override
  @JsonKey(name: 'trip_purpose')
  int? get tripPurpose;
  @override
  @JsonKey(name: 'travelers_type')
  int? get travelersType;
  @override
  @JsonKey(ignore: true)
  _$$_PolicyCopyWith<_$_Policy> get copyWith =>
      throw _privateConstructorUsedError;
}

Traveler _$TravelerFromJson(Map<String, dynamic> json) {
  return _Traveler.fromJson(json);
}

/// @nodoc
mixin _$Traveler {
  String? get birthdate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelerCopyWith<Traveler> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelerCopyWith<$Res> {
  factory $TravelerCopyWith(Traveler value, $Res Function(Traveler) then) =
      _$TravelerCopyWithImpl<$Res, Traveler>;
  @useResult
  $Res call({String? birthdate});
}

/// @nodoc
class _$TravelerCopyWithImpl<$Res, $Val extends Traveler>
    implements $TravelerCopyWith<$Res> {
  _$TravelerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthdate = freezed,
  }) {
    return _then(_value.copyWith(
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TravelerCopyWith<$Res> implements $TravelerCopyWith<$Res> {
  factory _$$_TravelerCopyWith(
          _$_Traveler value, $Res Function(_$_Traveler) then) =
      __$$_TravelerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? birthdate});
}

/// @nodoc
class __$$_TravelerCopyWithImpl<$Res>
    extends _$TravelerCopyWithImpl<$Res, _$_Traveler>
    implements _$$_TravelerCopyWith<$Res> {
  __$$_TravelerCopyWithImpl(
      _$_Traveler _value, $Res Function(_$_Traveler) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthdate = freezed,
  }) {
    return _then(_$_Traveler(
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Traveler implements _Traveler {
  const _$_Traveler({this.birthdate});

  factory _$_Traveler.fromJson(Map<String, dynamic> json) =>
      _$$_TravelerFromJson(json);

  @override
  final String? birthdate;

  @override
  String toString() {
    return 'Traveler(birthdate: $birthdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Traveler &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, birthdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TravelerCopyWith<_$_Traveler> get copyWith =>
      __$$_TravelerCopyWithImpl<_$_Traveler>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TravelerToJson(
      this,
    );
  }
}

abstract class _Traveler implements Traveler {
  const factory _Traveler({final String? birthdate}) = _$_Traveler;

  factory _Traveler.fromJson(Map<String, dynamic> json) = _$_Traveler.fromJson;

  @override
  String? get birthdate;
  @override
  @JsonKey(ignore: true)
  _$$_TravelerCopyWith<_$_Traveler> get copyWith =>
      throw _privateConstructorUsedError;
}
