import 'package:freezed_annotation/freezed_annotation.dart';

part 'preferred_topic.freezed.dart';
part 'preferred_topic.g.dart';

@unfreezed
class PreferredTopicModel with _$PreferredTopicModel {
  factory PreferredTopicModel({
    @JsonKey(name: '_id') required String id,
    required String name,
  }) = _PreferredTopicModel;

  factory PreferredTopicModel.fromJson(Map<String, dynamic> json) =>
      _$PreferredTopicModelFromJson(json);
}
