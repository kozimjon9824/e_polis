// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'help_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HelpData _$HelpDataFromJson(Map<String, dynamic> json) {
  return _HelpData.fromJson(json);
}

/// @nodoc
mixin _$HelpData {
  List<QuestionAnswer>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelpDataCopyWith<HelpData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpDataCopyWith<$Res> {
  factory $HelpDataCopyWith(HelpData value, $Res Function(HelpData) then) =
      _$HelpDataCopyWithImpl<$Res, HelpData>;
  @useResult
  $Res call({List<QuestionAnswer>? data});
}

/// @nodoc
class _$HelpDataCopyWithImpl<$Res, $Val extends HelpData>
    implements $HelpDataCopyWith<$Res> {
  _$HelpDataCopyWithImpl(this._value, this._then);

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
              as List<QuestionAnswer>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HelpDataCopyWith<$Res> implements $HelpDataCopyWith<$Res> {
  factory _$$_HelpDataCopyWith(
          _$_HelpData value, $Res Function(_$_HelpData) then) =
      __$$_HelpDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QuestionAnswer>? data});
}

/// @nodoc
class __$$_HelpDataCopyWithImpl<$Res>
    extends _$HelpDataCopyWithImpl<$Res, _$_HelpData>
    implements _$$_HelpDataCopyWith<$Res> {
  __$$_HelpDataCopyWithImpl(
      _$_HelpData _value, $Res Function(_$_HelpData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_HelpData(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HelpData implements _HelpData {
  const _$_HelpData({final List<QuestionAnswer>? data}) : _data = data;

  factory _$_HelpData.fromJson(Map<String, dynamic> json) =>
      _$$_HelpDataFromJson(json);

  final List<QuestionAnswer>? _data;
  @override
  List<QuestionAnswer>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HelpData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelpData &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HelpDataCopyWith<_$_HelpData> get copyWith =>
      __$$_HelpDataCopyWithImpl<_$_HelpData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelpDataToJson(
      this,
    );
  }
}

abstract class _HelpData implements HelpData {
  const factory _HelpData({final List<QuestionAnswer>? data}) = _$_HelpData;

  factory _HelpData.fromJson(Map<String, dynamic> json) = _$_HelpData.fromJson;

  @override
  List<QuestionAnswer>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_HelpDataCopyWith<_$_HelpData> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionAnswer _$QuestionAnswerFromJson(Map<String, dynamic> json) {
  return _QuestionAnswer.fromJson(json);
}

/// @nodoc
mixin _$QuestionAnswer {
  String? get question => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionAnswerCopyWith<QuestionAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionAnswerCopyWith<$Res> {
  factory $QuestionAnswerCopyWith(
          QuestionAnswer value, $Res Function(QuestionAnswer) then) =
      _$QuestionAnswerCopyWithImpl<$Res, QuestionAnswer>;
  @useResult
  $Res call({String? question, String? answer});
}

/// @nodoc
class _$QuestionAnswerCopyWithImpl<$Res, $Val extends QuestionAnswer>
    implements $QuestionAnswerCopyWith<$Res> {
  _$QuestionAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionAnswerCopyWith<$Res>
    implements $QuestionAnswerCopyWith<$Res> {
  factory _$$_QuestionAnswerCopyWith(
          _$_QuestionAnswer value, $Res Function(_$_QuestionAnswer) then) =
      __$$_QuestionAnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? question, String? answer});
}

/// @nodoc
class __$$_QuestionAnswerCopyWithImpl<$Res>
    extends _$QuestionAnswerCopyWithImpl<$Res, _$_QuestionAnswer>
    implements _$$_QuestionAnswerCopyWith<$Res> {
  __$$_QuestionAnswerCopyWithImpl(
      _$_QuestionAnswer _value, $Res Function(_$_QuestionAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$_QuestionAnswer(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionAnswer implements _QuestionAnswer {
  const _$_QuestionAnswer({this.question, this.answer});

  factory _$_QuestionAnswer.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionAnswerFromJson(json);

  @override
  final String? question;
  @override
  final String? answer;

  @override
  String toString() {
    return 'QuestionAnswer(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionAnswer &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionAnswerCopyWith<_$_QuestionAnswer> get copyWith =>
      __$$_QuestionAnswerCopyWithImpl<_$_QuestionAnswer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionAnswerToJson(
      this,
    );
  }
}

abstract class _QuestionAnswer implements QuestionAnswer {
  const factory _QuestionAnswer(
      {final String? question, final String? answer}) = _$_QuestionAnswer;

  factory _QuestionAnswer.fromJson(Map<String, dynamic> json) =
      _$_QuestionAnswer.fromJson;

  @override
  String? get question;
  @override
  String? get answer;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionAnswerCopyWith<_$_QuestionAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}
