import 'package:freezed_annotation/freezed_annotation.dart';

part 'preferred_topic.freezed.dart';
part 'preferred_topic.g.dart';

@unfreezed
class PreferredTopic with _$PreferredTopic {
  factory PreferredTopic({
    @JsonKey(name: '_id') required String id,
    required String name,
  }) = _PreferredTopic;

  factory PreferredTopic.fromJson(Map<String, dynamic> json) =>
      _$PreferredTopicFromJson(json);
}
