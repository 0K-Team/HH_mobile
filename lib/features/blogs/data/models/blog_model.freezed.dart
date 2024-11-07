// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogModel _$BlogModelFromJson(Map<String, dynamic> json) {
  return _BlogModel.fromJson(json);
}

/// @nodoc
mixin _$BlogModel {
  String get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this BlogModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogModelCopyWith<BlogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogModelCopyWith<$Res> {
  factory $BlogModelCopyWith(BlogModel value, $Res Function(BlogModel) then) =
      _$BlogModelCopyWithImpl<$Res, BlogModel>;
  @useResult
  $Res call({String image, String title, String author, String content});
}

/// @nodoc
class _$BlogModelCopyWithImpl<$Res, $Val extends BlogModel>
    implements $BlogModelCopyWith<$Res> {
  _$BlogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? title = null,
    Object? author = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogModelImplCopyWith<$Res>
    implements $BlogModelCopyWith<$Res> {
  factory _$$BlogModelImplCopyWith(
          _$BlogModelImpl value, $Res Function(_$BlogModelImpl) then) =
      __$$BlogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image, String title, String author, String content});
}

/// @nodoc
class __$$BlogModelImplCopyWithImpl<$Res>
    extends _$BlogModelCopyWithImpl<$Res, _$BlogModelImpl>
    implements _$$BlogModelImplCopyWith<$Res> {
  __$$BlogModelImplCopyWithImpl(
      _$BlogModelImpl _value, $Res Function(_$BlogModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? title = null,
    Object? author = null,
    Object? content = null,
  }) {
    return _then(_$BlogModelImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogModelImpl implements _BlogModel {
  _$BlogModelImpl(
      {required this.image,
      required this.title,
      required this.author,
      required this.content});

  factory _$BlogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogModelImplFromJson(json);

  @override
  final String image;
  @override
  final String title;
  @override
  final String author;
  @override
  final String content;

  @override
  String toString() {
    return 'BlogModel(image: $image, title: $title, author: $author, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogModelImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, title, author, content);

  /// Create a copy of BlogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogModelImplCopyWith<_$BlogModelImpl> get copyWith =>
      __$$BlogModelImplCopyWithImpl<_$BlogModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogModelImplToJson(
      this,
    );
  }
}

abstract class _BlogModel implements BlogModel {
  factory _BlogModel(
      {required final String image,
      required final String title,
      required final String author,
      required final String content}) = _$BlogModelImpl;

  factory _BlogModel.fromJson(Map<String, dynamic> json) =
      _$BlogModelImpl.fromJson;

  @override
  String get image;
  @override
  String get title;
  @override
  String get author;
  @override
  String get content;

  /// Create a copy of BlogModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogModelImplCopyWith<_$BlogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
