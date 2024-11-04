// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@unfreezed
class QuizModel with _$QuizModel {
  factory QuizModel({
    @JsonKey(name: '_id') required String id,
    required String topic,
    required List<QuizModelQuestions> questions,
    required String category,
  }) = _QuizModel;

  factory QuizModel.fromJson(Map<String, dynamic> json) =>
      _$QuizModelFromJson(json);
}

@unfreezed
class QuizModelQuestions with _$QuizModelQuestions {
  factory QuizModelQuestions({
    required QuizModelQuestionsAnswers answers,
    @JsonKey(name: '_id') required String id,
    required String question,
    @JsonKey(name: 'correct_answer') required String correctAnswer,
  }) = _QuizModelQuestions;

  factory QuizModelQuestions.fromJson(Map<String, dynamic> json) =>
      _$QuizModelQuestionsFromJson(json);
}

@unfreezed
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