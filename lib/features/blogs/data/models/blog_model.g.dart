// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogModelImpl _$$BlogModelImplFromJson(Map<String, dynamic> json) =>
    _$BlogModelImpl(
      image: json['image'] as String,
      title: json['title'] as String,
      author: json['author'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$BlogModelImplToJson(_$BlogModelImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'author': instance.author,
      'content': instance.content,
    };
