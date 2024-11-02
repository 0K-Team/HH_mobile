// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
mixin _$PostModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  set id(String value) => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  set author(String value) => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  set content(String value) => throw _privateConstructorUsedError;
  List<String> get likes => throw _privateConstructorUsedError;
  set likes(List<String> value) => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  set tags(List<String> value) => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  set images(List<String> value) => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;

  /// Serializes this PostModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String author,
      String content,
      List<String> likes,
      List<String> tags,
      List<String> images,
      DateTime? createdAt});
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? content = null,
    Object? likes = null,
    Object? tags = null,
    Object? images = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostModelImplCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$$PostModelImplCopyWith(
          _$PostModelImpl value, $Res Function(_$PostModelImpl) then) =
      __$$PostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String author,
      String content,
      List<String> likes,
      List<String> tags,
      List<String> images,
      DateTime? createdAt});
}

/// @nodoc
class __$$PostModelImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$PostModelImpl>
    implements _$$PostModelImplCopyWith<$Res> {
  __$$PostModelImplCopyWithImpl(
      _$PostModelImpl _value, $Res Function(_$PostModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? content = null,
    Object? likes = null,
    Object? tags = null,
    Object? images = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$PostModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostModelImpl implements _PostModel {
  _$PostModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.author,
      required this.content,
      required this.likes,
      required this.tags,
      required this.images,
      this.createdAt});

  factory _$PostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  String id;
  @override
  String author;
  @override
  String content;
  @override
  List<String> likes;
  @override
  List<String> tags;
  @override
  List<String> images;
  @override
  DateTime? createdAt;

  @override
  String toString() {
    return 'PostModel(id: $id, author: $author, content: $content, likes: $likes, tags: $tags, images: $images, createdAt: $createdAt)';
  }

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      __$$PostModelImplCopyWithImpl<_$PostModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostModelImplToJson(
      this,
    );
  }
}

abstract class _PostModel implements PostModel {
  factory _PostModel(
      {@JsonKey(name: '_id') required String id,
      required String author,
      required String content,
      required List<String> likes,
      required List<String> tags,
      required List<String> images,
      DateTime? createdAt}) = _$PostModelImpl;

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$PostModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @JsonKey(name: '_id')
  set id(String value);
  @override
  String get author;
  set author(String value);
  @override
  String get content;
  set content(String value);
  @override
  List<String> get likes;
  set likes(List<String> value);
  @override
  List<String> get tags;
  set tags(List<String> value);
  @override
  List<String> get images;
  set images(List<String> value);
  @override
  DateTime? get createdAt;
  set createdAt(DateTime? value);

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
