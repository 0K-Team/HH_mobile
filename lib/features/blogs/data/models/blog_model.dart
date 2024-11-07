import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_model.freezed.dart';
part 'blog_model.g.dart';

@freezed
class BlogModel with _$BlogModel {
  factory BlogModel({
    required String image,
    required String title,
    required String author,
    required String content,
  }) = _BlogModel;

  factory BlogModel.fromJson(Map<String, dynamic> json) =>
      _$BlogModelFromJson(json);
}
