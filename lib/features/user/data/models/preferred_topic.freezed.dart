// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferred_topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PreferredTopic _$PreferredTopicFromJson(Map<String, dynamic> json) {
  return _PreferredTopic.fromJson(json);
}

/// @nodoc
mixin _$PreferredTopic {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  set id(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;

  /// Serializes this PreferredTopic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreferredTopic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreferredTopicCopyWith<PreferredTopic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferredTopicCopyWith<$Res> {
  factory $PreferredTopicCopyWith(
          PreferredTopic value, $Res Function(PreferredTopic) then) =
      _$PreferredTopicCopyWithImpl<$Res, PreferredTopic>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name});
}

/// @nodoc
class _$PreferredTopicCopyWithImpl<$Res, $Val extends PreferredTopic>
    implements $PreferredTopicCopyWith<$Res> {
  _$PreferredTopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreferredTopic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreferredTopicImplCopyWith<$Res>
    implements $PreferredTopicCopyWith<$Res> {
  factory _$$PreferredTopicImplCopyWith(_$PreferredTopicImpl value,
          $Res Function(_$PreferredTopicImpl) then) =
      __$$PreferredTopicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String id, String name});
}

/// @nodoc
class __$$PreferredTopicImplCopyWithImpl<$Res>
    extends _$PreferredTopicCopyWithImpl<$Res, _$PreferredTopicImpl>
    implements _$$PreferredTopicImplCopyWith<$Res> {
  __$$PreferredTopicImplCopyWithImpl(
      _$PreferredTopicImpl _value, $Res Function(_$PreferredTopicImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreferredTopic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$PreferredTopicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreferredTopicImpl implements _PreferredTopic {
  _$PreferredTopicImpl(
      {@JsonKey(name: '_id') required this.id, required this.name});

  factory _$PreferredTopicImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferredTopicImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  String id;
  @override
  String name;

  @override
  String toString() {
    return 'PreferredTopic(id: $id, name: $name)';
  }

  /// Create a copy of PreferredTopic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferredTopicImplCopyWith<_$PreferredTopicImpl> get copyWith =>
      __$$PreferredTopicImplCopyWithImpl<_$PreferredTopicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferredTopicImplToJson(
      this,
    );
  }
}

abstract class _PreferredTopic implements PreferredTopic {
  factory _PreferredTopic(
      {@JsonKey(name: '_id') required String id,
      required String name}) = _$PreferredTopicImpl;

  factory _PreferredTopic.fromJson(Map<String, dynamic> json) =
      _$PreferredTopicImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @JsonKey(name: '_id')
  set id(String value);
  @override
  String get name;
  set name(String value);

  /// Create a copy of PreferredTopic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreferredTopicImplCopyWith<_$PreferredTopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
