import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_topic_model.freezed.dart';

part 'quiz_topic_model.g.dart';

enum QuizTopicType {
  rainforest('assets/rainforest.png'),
  unknown(''),
  ;

  final String asset;

  const QuizTopicType(this.asset);

  String get localized {
    return switch (this) {
      QuizTopicType.rainforest => 'Las deszczowy',
      QuizTopicType.unknown => 'Błąd',
    };
  }
}

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
