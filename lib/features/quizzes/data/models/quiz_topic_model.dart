import 'package:eco_hero_mobile/features/quizzes/data/models/quiz_topic_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_topic_model.freezed.dart';

part 'quiz_topic_model.g.dart';

@unfreezed
class QuizTopicModel with _$QuizTopicModel {
  QuizTopicModel._();

  factory QuizTopicModel({
    @JsonKey(name: '_id') required String id,
    required String topic,
    required String category,
  }) = _QuizTopicModel;

  factory QuizTopicModel.fromJson(Map<String, dynamic> json) =>
      _$QuizTopicModelFromJson(json);

  QuizTopicType get type {
    switch (category.toLowerCase()) {
      case 'rainforest':
        return QuizTopicType.rainforest;
      default:
        return QuizTopicType.unknown;
    }
  }
}
