// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_booking_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelBookingRequest _$TravelBookingRequestFromJson(Map<String, dynamic> json) {
  return _TravelBookingRequest.fromJson(json);
}

/// @nodoc
mixin _$TravelBookingRequest {
  Policy? get policy => throw _privateConstructorUsedError;
  Applicant? get applicant => throw _privateConstructorUsedError;
  Cost? get cost => throw _privateConstructorUsedError;
  List<Traveler>? get travelers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelBookingRequestCopyWith<TravelBookingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelBookingRequestCopyWith<$Res> {
  factory $TravelBookingRequestCopyWith(TravelBookingRequest value,
          $Res Function(TravelBookingRequest) then) =
      _$TravelBookingRequestCopyWithImpl<$Res, TravelBookingRequest>;
  @useResult
  $Res call(
      {Policy? policy,
      Applicant? applicant,
      Cost? cost,
      List<Traveler>? travelers});

  $PolicyCopyWith<$Res>? get policy;
  $ApplicantCopyWith<$Res>? get applicant;
  $CostCopyWith<$Res>? get cost;
}

/// @nodoc
class _$TravelBookingRequestCopyWithImpl<$Res,
        $Val extends TravelBookingRequest>
    implements $TravelBookingRequestCopyWith<$Res> {
  _$TravelBookingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policy = freezed,
    Object? applicant = freezed,
    Object? cost = freezed,
    Object? travelers = freezed,
  }) {
    return _then(_value.copyWith(
      policy: freezed == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as Policy?,
      applicant: freezed == applicant
          ? _value.applicant
          : applicant // ignore: cast_nullable_to_non_nullable
              as Applicant?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Cost?,
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

  @override
  @pragma('vm:prefer-inline')
  $ApplicantCopyWith<$Res>? get applicant {
    if (_value.applicant == null) {
      return null;
    }

    return $ApplicantCopyWith<$Res>(_value.applicant!, (value) {
      return _then(_value.copyWith(applicant: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CostCopyWith<$Res>? get cost {
    if (_value.cost == null) {
      return null;
    }

    return $CostCopyWith<$Res>(_value.cost!, (value) {
      return _then(_value.copyWith(cost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TravelBookingRequestCopyWith<$Res>
    implements $TravelBookingRequestCopyWith<$Res> {
  factory _$$_TravelBookingRequestCopyWith(_$_TravelBookingRequest value,
          $Res Function(_$_TravelBookingRequest) then) =
      __$$_TravelBookingRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Policy? policy,
      Applicant? applicant,
      Cost? cost,
      List<Traveler>? travelers});

  @override
  $PolicyCopyWith<$Res>? get policy;
  @override
  $ApplicantCopyWith<$Res>? get applicant;
  @override
  $CostCopyWith<$Res>? get cost;
}

/// @nodoc
class __$$_TravelBookingRequestCopyWithImpl<$Res>
    extends _$TravelBookingRequestCopyWithImpl<$Res, _$_TravelBookingRequest>
    implements _$$_TravelBookingRequestCopyWith<$Res> {
  __$$_TravelBookingRequestCopyWithImpl(_$_TravelBookingRequest _value,
      $Res Function(_$_TravelBookingRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policy = freezed,
    Object? applicant = freezed,
    Object? cost = freezed,
    Object? travelers = freezed,
  }) {
    return _then(_$_TravelBookingRequest(
      policy: freezed == policy
          ? _value.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as Policy?,
      applicant: freezed == applicant
          ? _value.applicant
          : applicant // ignore: cast_nullable_to_non_nullable
              as Applicant?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Cost?,
      travelers: freezed == travelers
          ? _value._travelers
          : travelers // ignore: cast_nullable_to_non_nullable
              as List<Traveler>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TravelBookingRequest implements _TravelBookingRequest {
  const _$_TravelBookingRequest(
      {this.policy, this.applicant, this.cost, final List<Traveler>? travelers})
      : _travelers = travelers;

  factory _$_TravelBookingRequest.fromJson(Map<String, dynamic> json) =>
      _$$_TravelBookingRequestFromJson(json);

  @override
  final Policy? policy;
  @override
  final Applicant? applicant;
  @override
  final Cost? cost;
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
    return 'TravelBookingRequest(policy: $policy, applicant: $applicant, cost: $cost, travelers: $travelers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TravelBookingRequest &&
            (identical(other.policy, policy) || other.policy == policy) &&
            (identical(other.applicant, applicant) ||
                other.applicant == applicant) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            const DeepCollectionEquality()
                .equals(other._travelers, _travelers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, policy, applicant, cost,
      const DeepCollectionEquality().hash(_travelers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TravelBookingRequestCopyWith<_$_TravelBookingRequest> get copyWith =>
      __$$_TravelBookingRequestCopyWithImpl<_$_TravelBookingRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TravelBookingRequestToJson(
      this,
    );
  }
}

abstract class _TravelBookingRequest implements TravelBookingRequest {
  const factory _TravelBookingRequest(
      {final Policy? policy,
      final Applicant? applicant,
      final Cost? cost,
      final List<Traveler>? travelers}) = _$_TravelBookingRequest;

  factory _TravelBookingRequest.fromJson(Map<String, dynamic> json) =
      _$_TravelBookingRequest.fromJson;

  @override
  Policy? get policy;
  @override
  Applicant? get applicant;
  @override
  Cost? get cost;
  @override
  List<Traveler>? get travelers;
  @override
  @JsonKey(ignore: true)
  _$$_TravelBookingRequestCopyWith<_$_TravelBookingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

Applicant _$ApplicantFromJson(Map<String, dynamic> json) {
  return _Applicant.fromJson(json);
}

/// @nodoc
mixin _$Applicant {
  String? get pinfl => throw _privateConstructorUsedError;
  Passport? get passport => throw _privateConstructorUsedError;
  String? get firstname => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicantCopyWith<Applicant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicantCopyWith<$Res> {
  factory $ApplicantCopyWith(Applicant value, $Res Function(Applicant) then) =
      _$ApplicantCopyWithImpl<$Res, Applicant>;
  @useResult
  $Res call(
      {String? pinfl,
      Passport? passport,
      String? firstname,
      String? lastname,
      String? birthdate,
      String? address,
      String? phone});

  $PassportCopyWith<$Res>? get passport;
}

/// @nodoc
class _$ApplicantCopyWithImpl<$Res, $Val extends Applicant>
    implements $ApplicantCopyWith<$Res> {
  _$ApplicantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinfl = freezed,
    Object? passport = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? birthdate = freezed,
    Object? address = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      pinfl: freezed == pinfl
          ? _value.pinfl
          : pinfl // ignore: cast_nullable_to_non_nullable
              as String?,
      passport: freezed == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as Passport?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PassportCopyWith<$Res>? get passport {
    if (_value.passport == null) {
      return null;
    }

    return $PassportCopyWith<$Res>(_value.passport!, (value) {
      return _then(_value.copyWith(passport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApplicantCopyWith<$Res> implements $ApplicantCopyWith<$Res> {
  factory _$$_ApplicantCopyWith(
          _$_Applicant value, $Res Function(_$_Applicant) then) =
      __$$_ApplicantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? pinfl,
      Passport? passport,
      String? firstname,
      String? lastname,
      String? birthdate,
      String? address,
      String? phone});

  @override
  $PassportCopyWith<$Res>? get passport;
}

/// @nodoc
class __$$_ApplicantCopyWithImpl<$Res>
    extends _$ApplicantCopyWithImpl<$Res, _$_Applicant>
    implements _$$_ApplicantCopyWith<$Res> {
  __$$_ApplicantCopyWithImpl(
      _$_Applicant _value, $Res Function(_$_Applicant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinfl = freezed,
    Object? passport = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? birthdate = freezed,
    Object? address = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_Applicant(
      pinfl: freezed == pinfl
          ? _value.pinfl
          : pinfl // ignore: cast_nullable_to_non_nullable
              as String?,
      passport: freezed == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as Passport?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Applicant implements _Applicant {
  const _$_Applicant(
      {this.pinfl,
      this.passport,
      this.firstname,
      this.lastname,
      this.birthdate,
      this.address,
      this.phone});

  factory _$_Applicant.fromJson(Map<String, dynamic> json) =>
      _$$_ApplicantFromJson(json);

  @override
  final String? pinfl;
  @override
  final Passport? passport;
  @override
  final String? firstname;
  @override
  final String? lastname;
  @override
  final String? birthdate;
  @override
  final String? address;
  @override
  final String? phone;

  @override
  String toString() {
    return 'Applicant(pinfl: $pinfl, passport: $passport, firstname: $firstname, lastname: $lastname, birthdate: $birthdate, address: $address, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Applicant &&
            (identical(other.pinfl, pinfl) || other.pinfl == pinfl) &&
            (identical(other.passport, passport) ||
                other.passport == passport) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pinfl, passport, firstname,
      lastname, birthdate, address, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicantCopyWith<_$_Applicant> get copyWith =>
      __$$_ApplicantCopyWithImpl<_$_Applicant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApplicantToJson(
      this,
    );
  }
}

abstract class _Applicant implements Applicant {
  const factory _Applicant(
      {final String? pinfl,
      final Passport? passport,
      final String? firstname,
      final String? lastname,
      final String? birthdate,
      final String? address,
      final String? phone}) = _$_Applicant;

  factory _Applicant.fromJson(Map<String, dynamic> json) =
      _$_Applicant.fromJson;

  @override
  String? get pinfl;
  @override
  Passport? get passport;
  @override
  String? get firstname;
  @override
  String? get lastname;
  @override
  String? get birthdate;
  @override
  String? get address;
  @override
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicantCopyWith<_$_Applicant> get copyWith =>
      throw _privateConstructorUsedError;
}

Passport _$PassportFromJson(Map<String, dynamic> json) {
  return _Passport.fromJson(json);
}

/// @nodoc
mixin _$Passport {
  String? get series => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PassportCopyWith<Passport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportCopyWith<$Res> {
  factory $PassportCopyWith(Passport value, $Res Function(Passport) then) =
      _$PassportCopyWithImpl<$Res, Passport>;
  @useResult
  $Res call({String? series, String? number});
}

/// @nodoc
class _$PassportCopyWithImpl<$Res, $Val extends Passport>
    implements $PassportCopyWith<$Res> {
  _$PassportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PassportCopyWith<$Res> implements $PassportCopyWith<$Res> {
  factory _$$_PassportCopyWith(
          _$_Passport value, $Res Function(_$_Passport) then) =
      __$$_PassportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? series, String? number});
}

/// @nodoc
class __$$_PassportCopyWithImpl<$Res>
    extends _$PassportCopyWithImpl<$Res, _$_Passport>
    implements _$$_PassportCopyWith<$Res> {
  __$$_PassportCopyWithImpl(
      _$_Passport _value, $Res Function(_$_Passport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = freezed,
    Object? number = freezed,
  }) {
    return _then(_$_Passport(
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Passport implements _Passport {
  const _$_Passport({this.series, this.number});

  factory _$_Passport.fromJson(Map<String, dynamic> json) =>
      _$$_PassportFromJson(json);

  @override
  final String? series;
  @override
  final String? number;

  @override
  String toString() {
    return 'Passport(series: $series, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Passport &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, series, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PassportCopyWith<_$_Passport> get copyWith =>
      __$$_PassportCopyWithImpl<_$_Passport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PassportToJson(
      this,
    );
  }
}

abstract class _Passport implements Passport {
  const factory _Passport({final String? series, final String? number}) =
      _$_Passport;

  factory _Passport.fromJson(Map<String, dynamic> json) = _$_Passport.fromJson;

  @override
  String? get series;
  @override
  String? get number;
  @override
  @JsonKey(ignore: true)
  _$$_PassportCopyWith<_$_Passport> get copyWith =>
      throw _privateConstructorUsedError;
}

Cost _$CostFromJson(Map<String, dynamic> json) {
  return _Cost.fromJson(json);
}

/// @nodoc
mixin _$Cost {
  @JsonKey(name: 'insurance_premium')
  int? get insurancePremium => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostCopyWith<Cost> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostCopyWith<$Res> {
  factory $CostCopyWith(Cost value, $Res Function(Cost) then) =
      _$CostCopyWithImpl<$Res, Cost>;
  @useResult
  $Res call({@JsonKey(name: 'insurance_premium') int? insurancePremium});
}

/// @nodoc
class _$CostCopyWithImpl<$Res, $Val extends Cost>
    implements $CostCopyWith<$Res> {
  _$CostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insurancePremium = freezed,
  }) {
    return _then(_value.copyWith(
      insurancePremium: freezed == insurancePremium
          ? _value.insurancePremium
          : insurancePremium // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CostCopyWith<$Res> implements $CostCopyWith<$Res> {
  factory _$$_CostCopyWith(_$_Cost value, $Res Function(_$_Cost) then) =
      __$$_CostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'insurance_premium') int? insurancePremium});
}

/// @nodoc
class __$$_CostCopyWithImpl<$Res> extends _$CostCopyWithImpl<$Res, _$_Cost>
    implements _$$_CostCopyWith<$Res> {
  __$$_CostCopyWithImpl(_$_Cost _value, $Res Function(_$_Cost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insurancePremium = freezed,
  }) {
    return _then(_$_Cost(
      insurancePremium: freezed == insurancePremium
          ? _value.insurancePremium
          : insurancePremium // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cost implements _Cost {
  const _$_Cost({@JsonKey(name: 'insurance_premium') this.insurancePremium});

  factory _$_Cost.fromJson(Map<String, dynamic> json) => _$$_CostFromJson(json);

  @override
  @JsonKey(name: 'insurance_premium')
  final int? insurancePremium;

  @override
  String toString() {
    return 'Cost(insurancePremium: $insurancePremium)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cost &&
            (identical(other.insurancePremium, insurancePremium) ||
                other.insurancePremium == insurancePremium));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, insurancePremium);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CostCopyWith<_$_Cost> get copyWith =>
      __$$_CostCopyWithImpl<_$_Cost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CostToJson(
      this,
    );
  }
}

abstract class _Cost implements Cost {
  const factory _Cost(
          {@JsonKey(name: 'insurance_premium') final int? insurancePremium}) =
      _$_Cost;

  factory _Cost.fromJson(Map<String, dynamic> json) = _$_Cost.fromJson;

  @override
  @JsonKey(name: 'insurance_premium')
  int? get insurancePremium;
  @override
  @JsonKey(ignore: true)
  _$$_CostCopyWith<_$_Cost> get copyWith => throw _privateConstructorUsedError;
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
  String? get pinfl => throw _privateConstructorUsedError;
  Passport? get passport => throw _privateConstructorUsedError;
  String? get firstname => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;
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
  $Res call(
      {String? pinfl,
      Passport? passport,
      String? firstname,
      String? lastname,
      String? birthdate});

  $PassportCopyWith<$Res>? get passport;
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
    Object? pinfl = freezed,
    Object? passport = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? birthdate = freezed,
  }) {
    return _then(_value.copyWith(
      pinfl: freezed == pinfl
          ? _value.pinfl
          : pinfl // ignore: cast_nullable_to_non_nullable
              as String?,
      passport: freezed == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as Passport?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PassportCopyWith<$Res>? get passport {
    if (_value.passport == null) {
      return null;
    }

    return $PassportCopyWith<$Res>(_value.passport!, (value) {
      return _then(_value.copyWith(passport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TravelerCopyWith<$Res> implements $TravelerCopyWith<$Res> {
  factory _$$_TravelerCopyWith(
          _$_Traveler value, $Res Function(_$_Traveler) then) =
      __$$_TravelerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? pinfl,
      Passport? passport,
      String? firstname,
      String? lastname,
      String? birthdate});

  @override
  $PassportCopyWith<$Res>? get passport;
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
    Object? pinfl = freezed,
    Object? passport = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? birthdate = freezed,
  }) {
    return _then(_$_Traveler(
      pinfl: freezed == pinfl
          ? _value.pinfl
          : pinfl // ignore: cast_nullable_to_non_nullable
              as String?,
      passport: freezed == passport
          ? _value.passport
          : passport // ignore: cast_nullable_to_non_nullable
              as Passport?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
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
  const _$_Traveler(
      {this.pinfl,
      this.passport,
      this.firstname,
      this.lastname,
      this.birthdate});

  factory _$_Traveler.fromJson(Map<String, dynamic> json) =>
      _$$_TravelerFromJson(json);

  @override
  final String? pinfl;
  @override
  final Passport? passport;
  @override
  final String? firstname;
  @override
  final String? lastname;
  @override
  final String? birthdate;

  @override
  String toString() {
    return 'Traveler(pinfl: $pinfl, passport: $passport, firstname: $firstname, lastname: $lastname, birthdate: $birthdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Traveler &&
            (identical(other.pinfl, pinfl) || other.pinfl == pinfl) &&
            (identical(other.passport, passport) ||
                other.passport == passport) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pinfl, passport, firstname, lastname, birthdate);

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
  const factory _Traveler(
      {final String? pinfl,
      final Passport? passport,
      final String? firstname,
      final String? lastname,
      final String? birthdate}) = _$_Traveler;

  factory _Traveler.fromJson(Map<String, dynamic> json) = _$_Traveler.fromJson;

  @override
  String? get pinfl;
  @override
  Passport? get passport;
  @override
  String? get firstname;
  @override
  String? get lastname;
  @override
  String? get birthdate;
  @override
  @JsonKey(ignore: true)
  _$$_TravelerCopyWith<_$_Traveler> get copyWith =>
      throw _privateConstructorUsedError;
}
