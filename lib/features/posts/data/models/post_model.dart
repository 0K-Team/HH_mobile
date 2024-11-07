// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';

part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  factory PostModel({
    @JsonKey(name: '_id') required String id,
    required String author,
    required String content,
    required List<String> likes,
    required List<String> tags,
    required List<String> images,
    DateTime? createdAt,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
