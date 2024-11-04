// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_topic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizTopicModel _$QuizTopicModelFromJson(Map<String, dynamic> json) {
  return _QuizTopicModel.fromJson(json);
}

/// @nodoc
mixin _$QuizTopicModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  set id(String value) => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  set topic(String value) => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  set category(String value) => throw _privateConstructorUsedError;

  /// Serializes this QuizTopicModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizTopicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizTopicModelCopyWith<QuizTopicModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizTopicModelCopyWith<$Res> {
  factory $QuizTopicModelCopyWith(
          QuizTopicModel value, $Res Function(QuizTopicModel) then) =
      _$QuizTopicModelCopyWithImpl<$Res, QuizTopicModel>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String topic, String category});
}

/// @nodoc
class _$QuizTopicModelCopyWithImpl<$Res, $Val extends QuizTopicModel>
    implements $QuizTopicModelCopyWith<$Res> {
  _$QuizTopicModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizTopicModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topic = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizTopicModelImplCopyWith<$Res>
    implements $QuizTopicModelCopyWith<$Res> {
  factory _$$QuizTopicModelImplCopyWith(_$QuizTopicModelImpl value,
          $Res Function(_$QuizTopicModelImpl) then) =
      __$$QuizTopicModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String topic, String category});
}

/// @nodoc
class __$$QuizTopicModelImplCopyWithImpl<$Res>
    extends _$QuizTopicModelCopyWithImpl<$Res, _$QuizTopicModelImpl>
    implements _$$QuizTopicModelImplCopyWith<$Res> {
  __$$QuizTopicModelImplCopyWithImpl(
      _$QuizTopicModelImpl _value, $Res Function(_$QuizTopicModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizTopicModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topic = null,
    Object? category = null,
  }) {
    return _then(_$QuizTopicModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizTopicModelImpl extends _QuizTopicModel {
  _$QuizTopicModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.topic,
      required this.category})
      : super._();

  factory _$QuizTopicModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizTopicModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  String id;
  @override
  String topic;
  @override
  String category;

  @override
  String toString() {
    return 'QuizTopicModel(id: $id, topic: $topic, category: $category)';
  }

  /// Create a copy of QuizTopicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizTopicModelImplCopyWith<_$QuizTopicModelImpl> get copyWith =>
      __$$QuizTopicModelImplCopyWithImpl<_$QuizTopicModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizTopicModelImplToJson(
      this,
    );
  }
}

abstract class _QuizTopicModel extends QuizTopicModel {
  factory _QuizTopicModel(
      {@JsonKey(name: '_id') required String id,
      required String topic,
      required String category}) = _$QuizTopicModelImpl;
  _QuizTopicModel._() : super._();

  factory _QuizTopicModel.fromJson(Map<String, dynamic> json) =
      _$QuizTopicModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @JsonKey(name: '_id')
  set id(String value);
  @override
  String get topic;
  set topic(String value);
  @override
  String get category;
  set category(String value);

  /// Create a copy of QuizTopicModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizTopicModelImplCopyWith<_$QuizTopicModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
