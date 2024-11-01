import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';

part 'post_model.g.dart';

@unfreezed
class PostModel with _$PostModel {
  factory PostModel({
    @JsonValue('_id') required String id,
    required String author,
    required String content,
    required List<String> likes,
    required List<String> tags,
    required List<String> images,
    required String createdAt,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
