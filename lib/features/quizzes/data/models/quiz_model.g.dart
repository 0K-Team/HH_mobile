// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizModelImpl _$$QuizModelImplFromJson(Map<String, dynamic> json) =>
    _$QuizModelImpl(
      id: json['_id'] as String,
      topic: json['topic'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => QuizModelQuestions.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: json['category'] as String,
    );

Map<String, dynamic> _$$QuizModelImplToJson(_$QuizModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'topic': instance.topic,
      'questions': instance.questions,
      'category': instance.category,
    };

_$QuizModelQuestionsImpl _$$QuizModelQuestionsImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizModelQuestionsImpl(
      answers: QuizModelQuestionsAnswers.fromJson(
          json['answers'] as Map<String, dynamic>),
      id: json['_id'] as String,
      question: json['question'] as String,
    );

Map<String, dynamic> _$$QuizModelQuestionsImplToJson(
        _$QuizModelQuestionsImpl instance) =>
    <String, dynamic>{
      'answers': instance.answers,
      '_id': instance.id,
      'question': instance.question,
    };

_$QuizModelQuestionsAnswersImpl _$$QuizModelQuestionsAnswersImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizModelQuestionsAnswersImpl(
      A: json['A'] as String,
      B: json['B'] as String,
      C: json['C'] as String,
      D: json['D'] as String,
    );

Map<String, dynamic> _$$QuizModelQuestionsAnswersImplToJson(
        _$QuizModelQuestionsAnswersImpl instance) =>
    <String, dynamic>{
      'A': instance.A,
      'B': instance.B,
      'C': instance.C,
      'D': instance.D,
    };
