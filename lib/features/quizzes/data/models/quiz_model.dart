// ignore_for_file: invalid_annotation_target

import 'package:eco_hero_mobile/features/quizzes/data/models/quiz_topic_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@freezed
class QuizModel with _$QuizModel {
  QuizModel._();

  factory QuizModel({
    @JsonKey(name: '_id') required String id,
    required String topic,
    required List<QuizModelQuestions> questions,
    required String category,
  }) = _QuizModel;

  factory QuizModel.fromJson(Map<String, dynamic> json) =>
      _$QuizModelFromJson(json);

  QuizTopicType get type {
    switch (category.toLowerCase()) {
      case 'rainforest':
        return QuizTopicType.rainforest;
      default:
        return QuizTopicType.unknown;
    }
  }
}

@freezed
class QuizModelQuestions with _$QuizModelQuestions {
  factory QuizModelQuestions({
    required QuizModelQuestionsAnswers answers,
    @JsonKey(name: '_id') required String id,
    required String question,
  }) = _QuizModelQuestions;

  factory QuizModelQuestions.fromJson(Map<String, dynamic> json) =>
      _$QuizModelQuestionsFromJson(json);
}

@freezed
class QuizModelQuestionsAnswers with _$QuizModelQuestionsAnswers {
  factory QuizModelQuestionsAnswers({
    @JsonKey(name: 'A') required String A,
    @JsonKey(name: 'B') required String B,
    @JsonKey(name: 'C') required String C,
    @JsonKey(name: 'D') required String D,
  }) = _QuizModelQuestionsAnswers;

  factory QuizModelQuestionsAnswers.fromJson(Map<String, dynamic> json) =>
      _$QuizModelQuestionsAnswersFromJson(json);
}
