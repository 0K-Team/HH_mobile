// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizModel _$QuizModelFromJson(Map<String, dynamic> json) {
  return _QuizModel.fromJson(json);
}

/// @nodoc
mixin _$QuizModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  List<QuizModelQuestions> get questions => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  /// Serializes this QuizModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizModelCopyWith<QuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizModelCopyWith<$Res> {
  factory $QuizModelCopyWith(QuizModel value, $Res Function(QuizModel) then) =
      _$QuizModelCopyWithImpl<$Res, QuizModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String topic,
      List<QuizModelQuestions> questions,
      String category});
}

/// @nodoc
class _$QuizModelCopyWithImpl<$Res, $Val extends QuizModel>
    implements $QuizModelCopyWith<$Res> {
  _$QuizModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topic = null,
    Object? questions = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuizModelQuestions>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizModelImplCopyWith<$Res>
    implements $QuizModelCopyWith<$Res> {
  factory _$$QuizModelImplCopyWith(
          _$QuizModelImpl value, $Res Function(_$QuizModelImpl) then) =
      __$$QuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String topic,
      List<QuizModelQuestions> questions,
      String category});
}

/// @nodoc
class __$$QuizModelImplCopyWithImpl<$Res>
    extends _$QuizModelCopyWithImpl<$Res, _$QuizModelImpl>
    implements _$$QuizModelImplCopyWith<$Res> {
  __$$QuizModelImplCopyWithImpl(
      _$QuizModelImpl _value, $Res Function(_$QuizModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topic = null,
    Object? questions = null,
    Object? category = null,
  }) {
    return _then(_$QuizModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuizModelQuestions>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizModelImpl extends _QuizModel {
  _$QuizModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.topic,
      required final List<QuizModelQuestions> questions,
      required this.category})
      : _questions = questions,
        super._();

  factory _$QuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String topic;
  final List<QuizModelQuestions> _questions;
  @override
  List<QuizModelQuestions> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final String category;

  @override
  String toString() {
    return 'QuizModel(id: $id, topic: $topic, questions: $questions, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, topic,
      const DeepCollectionEquality().hash(_questions), category);

  /// Create a copy of QuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizModelImplCopyWith<_$QuizModelImpl> get copyWith =>
      __$$QuizModelImplCopyWithImpl<_$QuizModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizModelImplToJson(
      this,
    );
  }
}

abstract class _QuizModel extends QuizModel {
  factory _QuizModel(
      {@JsonKey(name: '_id') required final String id,
      required final String topic,
      required final List<QuizModelQuestions> questions,
      required final String category}) = _$QuizModelImpl;
  _QuizModel._() : super._();

  factory _QuizModel.fromJson(Map<String, dynamic> json) =
      _$QuizModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get topic;
  @override
  List<QuizModelQuestions> get questions;
  @override
  String get category;

  /// Create a copy of QuizModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizModelImplCopyWith<_$QuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuizModelQuestions _$QuizModelQuestionsFromJson(Map<String, dynamic> json) {
  return _QuizModelQuestions.fromJson(json);
}

/// @nodoc
mixin _$QuizModelQuestions {
  QuizModelQuestionsAnswers get answers => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;

  /// Serializes this QuizModelQuestions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizModelQuestions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizModelQuestionsCopyWith<QuizModelQuestions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizModelQuestionsCopyWith<$Res> {
  factory $QuizModelQuestionsCopyWith(
          QuizModelQuestions value, $Res Function(QuizModelQuestions) then) =
      _$QuizModelQuestionsCopyWithImpl<$Res, QuizModelQuestions>;
  @useResult
  $Res call(
      {QuizModelQuestionsAnswers answers,
      @JsonKey(name: '_id') String id,
      String question});

  $QuizModelQuestionsAnswersCopyWith<$Res> get answers;
}

/// @nodoc
class _$QuizModelQuestionsCopyWithImpl<$Res, $Val extends QuizModelQuestions>
    implements $QuizModelQuestionsCopyWith<$Res> {
  _$QuizModelQuestionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizModelQuestions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answers = null,
    Object? id = null,
    Object? question = null,
  }) {
    return _then(_value.copyWith(
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as QuizModelQuestionsAnswers,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of QuizModelQuestions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuizModelQuestionsAnswersCopyWith<$Res> get answers {
    return $QuizModelQuestionsAnswersCopyWith<$Res>(_value.answers, (value) {
      return _then(_value.copyWith(answers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuizModelQuestionsImplCopyWith<$Res>
    implements $QuizModelQuestionsCopyWith<$Res> {
  factory _$$QuizModelQuestionsImplCopyWith(_$QuizModelQuestionsImpl value,
          $Res Function(_$QuizModelQuestionsImpl) then) =
      __$$QuizModelQuestionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QuizModelQuestionsAnswers answers,
      @JsonKey(name: '_id') String id,
      String question});

  @override
  $QuizModelQuestionsAnswersCopyWith<$Res> get answers;
}

/// @nodoc
class __$$QuizModelQuestionsImplCopyWithImpl<$Res>
    extends _$QuizModelQuestionsCopyWithImpl<$Res, _$QuizModelQuestionsImpl>
    implements _$$QuizModelQuestionsImplCopyWith<$Res> {
  __$$QuizModelQuestionsImplCopyWithImpl(_$QuizModelQuestionsImpl _value,
      $Res Function(_$QuizModelQuestionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizModelQuestions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answers = null,
    Object? id = null,
    Object? question = null,
  }) {
    return _then(_$QuizModelQuestionsImpl(
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as QuizModelQuestionsAnswers,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizModelQuestionsImpl implements _QuizModelQuestions {
  _$QuizModelQuestionsImpl(
      {required this.answers,
      @JsonKey(name: '_id') required this.id,
      required this.question});

  factory _$QuizModelQuestionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizModelQuestionsImplFromJson(json);

  @override
  final QuizModelQuestionsAnswers answers;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String question;

  @override
  String toString() {
    return 'QuizModelQuestions(answers: $answers, id: $id, question: $question)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizModelQuestionsImpl &&
            (identical(other.answers, answers) || other.answers == answers) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, answers, id, question);

  /// Create a copy of QuizModelQuestions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizModelQuestionsImplCopyWith<_$QuizModelQuestionsImpl> get copyWith =>
      __$$QuizModelQuestionsImplCopyWithImpl<_$QuizModelQuestionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizModelQuestionsImplToJson(
      this,
    );
  }
}

abstract class _QuizModelQuestions implements QuizModelQuestions {
  factory _QuizModelQuestions(
      {required final QuizModelQuestionsAnswers answers,
      @JsonKey(name: '_id') required final String id,
      required final String question}) = _$QuizModelQuestionsImpl;

  factory _QuizModelQuestions.fromJson(Map<String, dynamic> json) =
      _$QuizModelQuestionsImpl.fromJson;

  @override
  QuizModelQuestionsAnswers get answers;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get question;

  /// Create a copy of QuizModelQuestions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizModelQuestionsImplCopyWith<_$QuizModelQuestionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuizModelQuestionsAnswers _$QuizModelQuestionsAnswersFromJson(
    Map<String, dynamic> json) {
  return _QuizModelQuestionsAnswers.fromJson(json);
}

/// @nodoc
mixin _$QuizModelQuestionsAnswers {
  @JsonKey(name: 'A')
  String get A => throw _privateConstructorUsedError;
  @JsonKey(name: 'B')
  String get B => throw _privateConstructorUsedError;
  @JsonKey(name: 'C')
  String get C => throw _privateConstructorUsedError;
  @JsonKey(name: 'D')
  String get D => throw _privateConstructorUsedError;

  /// Serializes this QuizModelQuestionsAnswers to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizModelQuestionsAnswers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizModelQuestionsAnswersCopyWith<QuizModelQuestionsAnswers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizModelQuestionsAnswersCopyWith<$Res> {
  factory $QuizModelQuestionsAnswersCopyWith(QuizModelQuestionsAnswers value,
          $Res Function(QuizModelQuestionsAnswers) then) =
      _$QuizModelQuestionsAnswersCopyWithImpl<$Res, QuizModelQuestionsAnswers>;
  @useResult
  $Res call(
      {@JsonKey(name: 'A') String A,
      @JsonKey(name: 'B') String B,
      @JsonKey(name: 'C') String C,
      @JsonKey(name: 'D') String D});
}

/// @nodoc
class _$QuizModelQuestionsAnswersCopyWithImpl<$Res,
        $Val extends QuizModelQuestionsAnswers>
    implements $QuizModelQuestionsAnswersCopyWith<$Res> {
  _$QuizModelQuestionsAnswersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizModelQuestionsAnswers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? A = null,
    Object? B = null,
    Object? C = null,
    Object? D = null,
  }) {
    return _then(_value.copyWith(
      A: null == A
          ? _value.A
          : A // ignore: cast_nullable_to_non_nullable
              as String,
      B: null == B
          ? _value.B
          : B // ignore: cast_nullable_to_non_nullable
              as String,
      C: null == C
          ? _value.C
          : C // ignore: cast_nullable_to_non_nullable
              as String,
      D: null == D
          ? _value.D
          : D // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizModelQuestionsAnswersImplCopyWith<$Res>
    implements $QuizModelQuestionsAnswersCopyWith<$Res> {
  factory _$$QuizModelQuestionsAnswersImplCopyWith(
          _$QuizModelQuestionsAnswersImpl value,
          $Res Function(_$QuizModelQuestionsAnswersImpl) then) =
      __$$QuizModelQuestionsAnswersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'A') String A,
      @JsonKey(name: 'B') String B,
      @JsonKey(name: 'C') String C,
      @JsonKey(name: 'D') String D});
}

/// @nodoc
class __$$QuizModelQuestionsAnswersImplCopyWithImpl<$Res>
    extends _$QuizModelQuestionsAnswersCopyWithImpl<$Res,
        _$QuizModelQuestionsAnswersImpl>
    implements _$$QuizModelQuestionsAnswersImplCopyWith<$Res> {
  __$$QuizModelQuestionsAnswersImplCopyWithImpl(
      _$QuizModelQuestionsAnswersImpl _value,
      $Res Function(_$QuizModelQuestionsAnswersImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizModelQuestionsAnswers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? A = null,
    Object? B = null,
    Object? C = null,
    Object? D = null,
  }) {
    return _then(_$QuizModelQuestionsAnswersImpl(
      A: null == A
          ? _value.A
          : A // ignore: cast_nullable_to_non_nullable
              as String,
      B: null == B
          ? _value.B
          : B // ignore: cast_nullable_to_non_nullable
              as String,
      C: null == C
          ? _value.C
          : C // ignore: cast_nullable_to_non_nullable
              as String,
      D: null == D
          ? _value.D
          : D // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizModelQuestionsAnswersImpl implements _QuizModelQuestionsAnswers {
  _$QuizModelQuestionsAnswersImpl(
      {@JsonKey(name: 'A') required this.A,
      @JsonKey(name: 'B') required this.B,
      @JsonKey(name: 'C') required this.C,
      @JsonKey(name: 'D') required this.D});

  factory _$QuizModelQuestionsAnswersImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizModelQuestionsAnswersImplFromJson(json);

  @override
  @JsonKey(name: 'A')
  final String A;
  @override
  @JsonKey(name: 'B')
  final String B;
  @override
  @JsonKey(name: 'C')
  final String C;
  @override
  @JsonKey(name: 'D')
  final String D;

  @override
  String toString() {
    return 'QuizModelQuestionsAnswers(A: $A, B: $B, C: $C, D: $D)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizModelQuestionsAnswersImpl &&
            (identical(other.A, A) || other.A == A) &&
            (identical(other.B, B) || other.B == B) &&
            (identical(other.C, C) || other.C == C) &&
            (identical(other.D, D) || other.D == D));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, A, B, C, D);

  /// Create a copy of QuizModelQuestionsAnswers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizModelQuestionsAnswersImplCopyWith<_$QuizModelQuestionsAnswersImpl>
      get copyWith => __$$QuizModelQuestionsAnswersImplCopyWithImpl<
          _$QuizModelQuestionsAnswersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizModelQuestionsAnswersImplToJson(
      this,
    );
  }
}

abstract class _QuizModelQuestionsAnswers implements QuizModelQuestionsAnswers {
  factory _QuizModelQuestionsAnswers(
          {@JsonKey(name: 'A') required final String A,
          @JsonKey(name: 'B') required final String B,
          @JsonKey(name: 'C') required final String C,
          @JsonKey(name: 'D') required final String D}) =
      _$QuizModelQuestionsAnswersImpl;

  factory _QuizModelQuestionsAnswers.fromJson(Map<String, dynamic> json) =
      _$QuizModelQuestionsAnswersImpl.fromJson;

  @override
  @JsonKey(name: 'A')
  String get A;
  @override
  @JsonKey(name: 'B')
  String get B;
  @override
  @JsonKey(name: 'C')
  String get C;
  @override
  @JsonKey(name: 'D')
  String get D;

  /// Create a copy of QuizModelQuestionsAnswers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizModelQuestionsAnswersImplCopyWith<_$QuizModelQuestionsAnswersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
