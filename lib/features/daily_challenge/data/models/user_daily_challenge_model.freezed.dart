// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_daily_challenge_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDailyChallengeModel _$UserDailyChallengeModelFromJson(
    Map<String, dynamic> json) {
  return _UserDailyChallengeModel.fromJson(json);
}

/// @nodoc
mixin _$UserDailyChallengeModel {
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get done => throw _privateConstructorUsedError;

  /// Serializes this UserDailyChallengeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDailyChallengeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDailyChallengeModelCopyWith<UserDailyChallengeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDailyChallengeModelCopyWith<$Res> {
  factory $UserDailyChallengeModelCopyWith(UserDailyChallengeModel value,
          $Res Function(UserDailyChallengeModel) then) =
      _$UserDailyChallengeModelCopyWithImpl<$Res, UserDailyChallengeModel>;
  @useResult
  $Res call({String title, String type, int amount, int done});
}

/// @nodoc
class _$UserDailyChallengeModelCopyWithImpl<$Res,
        $Val extends UserDailyChallengeModel>
    implements $UserDailyChallengeModelCopyWith<$Res> {
  _$UserDailyChallengeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDailyChallengeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? type = null,
    Object? amount = null,
    Object? done = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDailyChallengeModelImplCopyWith<$Res>
    implements $UserDailyChallengeModelCopyWith<$Res> {
  factory _$$UserDailyChallengeModelImplCopyWith(
          _$UserDailyChallengeModelImpl value,
          $Res Function(_$UserDailyChallengeModelImpl) then) =
      __$$UserDailyChallengeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String type, int amount, int done});
}

/// @nodoc
class __$$UserDailyChallengeModelImplCopyWithImpl<$Res>
    extends _$UserDailyChallengeModelCopyWithImpl<$Res,
        _$UserDailyChallengeModelImpl>
    implements _$$UserDailyChallengeModelImplCopyWith<$Res> {
  __$$UserDailyChallengeModelImplCopyWithImpl(
      _$UserDailyChallengeModelImpl _value,
      $Res Function(_$UserDailyChallengeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDailyChallengeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? type = null,
    Object? amount = null,
    Object? done = null,
  }) {
    return _then(_$UserDailyChallengeModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDailyChallengeModelImpl implements _UserDailyChallengeModel {
  _$UserDailyChallengeModelImpl(
      {required this.title,
      required this.type,
      required this.amount,
      required this.done});

  factory _$UserDailyChallengeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDailyChallengeModelImplFromJson(json);

  @override
  final String title;
  @override
  final String type;
  @override
  final int amount;
  @override
  final int done;

  @override
  String toString() {
    return 'UserDailyChallengeModel(title: $title, type: $type, amount: $amount, done: $done)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDailyChallengeModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.done, done) || other.done == done));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, type, amount, done);

  /// Create a copy of UserDailyChallengeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDailyChallengeModelImplCopyWith<_$UserDailyChallengeModelImpl>
      get copyWith => __$$UserDailyChallengeModelImplCopyWithImpl<
          _$UserDailyChallengeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDailyChallengeModelImplToJson(
      this,
    );
  }
}

abstract class _UserDailyChallengeModel implements UserDailyChallengeModel {
  factory _UserDailyChallengeModel(
      {required final String title,
      required final String type,
      required final int amount,
      required final int done}) = _$UserDailyChallengeModelImpl;

  factory _UserDailyChallengeModel.fromJson(Map<String, dynamic> json) =
      _$UserDailyChallengeModelImpl.fromJson;

  @override
  String get title;
  @override
  String get type;
  @override
  int get amount;
  @override
  int get done;

  /// Create a copy of UserDailyChallengeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDailyChallengeModelImplCopyWith<_$UserDailyChallengeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
