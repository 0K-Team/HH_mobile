// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonValue('id_title')
  String get idTitle => throw _privateConstructorUsedError;
  @JsonValue('id_title')
  set idTitle(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  @JsonValue('first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonValue('first_name')
  set firstName(String value) => throw _privateConstructorUsedError;
  @JsonValue('second_name')
  String get secondName => throw _privateConstructorUsedError;
  @JsonValue('second_name')
  set secondName(String value) => throw _privateConstructorUsedError;
  List<UserModelNotifications> get notifications =>
      throw _privateConstructorUsedError;
  set notifications(List<UserModelNotifications> value) =>
      throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  set points(int value) => throw _privateConstructorUsedError;
  List<String> get friends => throw _privateConstructorUsedError;
  set friends(List<String> value) => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  set avatar(String value) => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  set bio(String value) => throw _privateConstructorUsedError;
  List<UserModelAchievements> get achievements =>
      throw _privateConstructorUsedError;
  set achievements(List<UserModelAchievements> value) =>
      throw _privateConstructorUsedError;
  List<String> get skills => throw _privateConstructorUsedError;
  set skills(List<String> value) => throw _privateConstructorUsedError;
  List<UserModelBadges> get badges => throw _privateConstructorUsedError;
  set badges(List<UserModelBadges> value) => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  set location(String value) => throw _privateConstructorUsedError;
  @JsonValue('preferred_topics')
  List<String> get preferredTopics => throw _privateConstructorUsedError;
  @JsonValue('preferred_topics')
  set preferredTopics(List<String> value) => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonValue('id_title') String idTitle,
      String email,
      @JsonValue('first_name') String firstName,
      @JsonValue('second_name') String secondName,
      List<UserModelNotifications> notifications,
      int points,
      List<String> friends,
      String avatar,
      String bio,
      List<UserModelAchievements> achievements,
      List<String> skills,
      List<UserModelBadges> badges,
      String location,
      @JsonValue('preferred_topics') List<String> preferredTopics});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTitle = null,
    Object? email = null,
    Object? firstName = null,
    Object? secondName = null,
    Object? notifications = null,
    Object? points = null,
    Object? friends = null,
    Object? avatar = null,
    Object? bio = null,
    Object? achievements = null,
    Object? skills = null,
    Object? badges = null,
    Object? location = null,
    Object? preferredTopics = null,
  }) {
    return _then(_value.copyWith(
      idTitle: null == idTitle
          ? _value.idTitle
          : idTitle // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<UserModelNotifications>,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      friends: null == friends
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<String>,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      achievements: null == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<UserModelAchievements>,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<UserModelBadges>,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      preferredTopics: null == preferredTopics
          ? _value.preferredTopics
          : preferredTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonValue('id_title') String idTitle,
      String email,
      @JsonValue('first_name') String firstName,
      @JsonValue('second_name') String secondName,
      List<UserModelNotifications> notifications,
      int points,
      List<String> friends,
      String avatar,
      String bio,
      List<UserModelAchievements> achievements,
      List<String> skills,
      List<UserModelBadges> badges,
      String location,
      @JsonValue('preferred_topics') List<String> preferredTopics});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTitle = null,
    Object? email = null,
    Object? firstName = null,
    Object? secondName = null,
    Object? notifications = null,
    Object? points = null,
    Object? friends = null,
    Object? avatar = null,
    Object? bio = null,
    Object? achievements = null,
    Object? skills = null,
    Object? badges = null,
    Object? location = null,
    Object? preferredTopics = null,
  }) {
    return _then(_$UserModelImpl(
      idTitle: null == idTitle
          ? _value.idTitle
          : idTitle // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<UserModelNotifications>,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      friends: null == friends
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<String>,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      achievements: null == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<UserModelAchievements>,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<UserModelBadges>,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      preferredTopics: null == preferredTopics
          ? _value.preferredTopics
          : preferredTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl extends _UserModel {
  _$UserModelImpl(
      {@JsonValue('id_title') required this.idTitle,
      required this.email,
      @JsonValue('first_name') required this.firstName,
      @JsonValue('second_name') required this.secondName,
      required this.notifications,
      required this.points,
      required this.friends,
      required this.avatar,
      required this.bio,
      required this.achievements,
      required this.skills,
      required this.badges,
      required this.location,
      @JsonValue('preferred_topics') required this.preferredTopics})
      : super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonValue('id_title')
  String idTitle;
  @override
  String email;
  @override
  @JsonValue('first_name')
  String firstName;
  @override
  @JsonValue('second_name')
  String secondName;
  @override
  List<UserModelNotifications> notifications;
  @override
  int points;
  @override
  List<String> friends;
  @override
  String avatar;
  @override
  String bio;
  @override
  List<UserModelAchievements> achievements;
  @override
  List<String> skills;
  @override
  List<UserModelBadges> badges;
  @override
  String location;
  @override
  @JsonValue('preferred_topics')
  List<String> preferredTopics;

  @override
  String toString() {
    return 'UserModel(idTitle: $idTitle, email: $email, firstName: $firstName, secondName: $secondName, notifications: $notifications, points: $points, friends: $friends, avatar: $avatar, bio: $bio, achievements: $achievements, skills: $skills, badges: $badges, location: $location, preferredTopics: $preferredTopics)';
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  factory _UserModel(
      {@JsonValue('id_title') required String idTitle,
      required String email,
      @JsonValue('first_name') required String firstName,
      @JsonValue('second_name') required String secondName,
      required List<UserModelNotifications> notifications,
      required int points,
      required List<String> friends,
      required String avatar,
      required String bio,
      required List<UserModelAchievements> achievements,
      required List<String> skills,
      required List<UserModelBadges> badges,
      required String location,
      @JsonValue('preferred_topics')
      required List<String> preferredTopics}) = _$UserModelImpl;
  _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonValue('id_title')
  String get idTitle;
  @JsonValue('id_title')
  set idTitle(String value);
  @override
  String get email;
  set email(String value);
  @override
  @JsonValue('first_name')
  String get firstName;
  @JsonValue('first_name')
  set firstName(String value);
  @override
  @JsonValue('second_name')
  String get secondName;
  @JsonValue('second_name')
  set secondName(String value);
  @override
  List<UserModelNotifications> get notifications;
  set notifications(List<UserModelNotifications> value);
  @override
  int get points;
  set points(int value);
  @override
  List<String> get friends;
  set friends(List<String> value);
  @override
  String get avatar;
  set avatar(String value);
  @override
  String get bio;
  set bio(String value);
  @override
  List<UserModelAchievements> get achievements;
  set achievements(List<UserModelAchievements> value);
  @override
  List<String> get skills;
  set skills(List<String> value);
  @override
  List<UserModelBadges> get badges;
  set badges(List<UserModelBadges> value);
  @override
  String get location;
  set location(String value);
  @override
  @JsonValue('preferred_topics')
  List<String> get preferredTopics;
  @JsonValue('preferred_topics')
  set preferredTopics(List<String> value);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModelNotifications _$UserModelNotificationsFromJson(
    Map<String, dynamic> json) {
  return _UserModelNotifications.fromJson(json);
}

/// @nodoc
mixin _$UserModelNotifications {
  String get title => throw _privateConstructorUsedError;
  set title(String value) => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  set date(String value) => throw _privateConstructorUsedError;

  /// Serializes this UserModelNotifications to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModelNotifications
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelNotificationsCopyWith<UserModelNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelNotificationsCopyWith<$Res> {
  factory $UserModelNotificationsCopyWith(UserModelNotifications value,
          $Res Function(UserModelNotifications) then) =
      _$UserModelNotificationsCopyWithImpl<$Res, UserModelNotifications>;
  @useResult
  $Res call({String title, String date});
}

/// @nodoc
class _$UserModelNotificationsCopyWithImpl<$Res,
        $Val extends UserModelNotifications>
    implements $UserModelNotificationsCopyWith<$Res> {
  _$UserModelNotificationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModelNotifications
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelNotificationsImplCopyWith<$Res>
    implements $UserModelNotificationsCopyWith<$Res> {
  factory _$$UserModelNotificationsImplCopyWith(
          _$UserModelNotificationsImpl value,
          $Res Function(_$UserModelNotificationsImpl) then) =
      __$$UserModelNotificationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String date});
}

/// @nodoc
class __$$UserModelNotificationsImplCopyWithImpl<$Res>
    extends _$UserModelNotificationsCopyWithImpl<$Res,
        _$UserModelNotificationsImpl>
    implements _$$UserModelNotificationsImplCopyWith<$Res> {
  __$$UserModelNotificationsImplCopyWithImpl(
      _$UserModelNotificationsImpl _value,
      $Res Function(_$UserModelNotificationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModelNotifications
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? date = null,
  }) {
    return _then(_$UserModelNotificationsImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelNotificationsImpl implements _UserModelNotifications {
  _$UserModelNotificationsImpl({required this.title, required this.date});

  factory _$UserModelNotificationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelNotificationsImplFromJson(json);

  @override
  String title;
  @override
  String date;

  @override
  String toString() {
    return 'UserModelNotifications(title: $title, date: $date)';
  }

  /// Create a copy of UserModelNotifications
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelNotificationsImplCopyWith<_$UserModelNotificationsImpl>
      get copyWith => __$$UserModelNotificationsImplCopyWithImpl<
          _$UserModelNotificationsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelNotificationsImplToJson(
      this,
    );
  }
}

abstract class _UserModelNotifications implements UserModelNotifications {
  factory _UserModelNotifications(
      {required String title,
      required String date}) = _$UserModelNotificationsImpl;

  factory _UserModelNotifications.fromJson(Map<String, dynamic> json) =
      _$UserModelNotificationsImpl.fromJson;

  @override
  String get title;
  set title(String value);
  @override
  String get date;
  set date(String value);

  /// Create a copy of UserModelNotifications
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelNotificationsImplCopyWith<_$UserModelNotificationsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserModelAchievements _$UserModelAchievementsFromJson(
    Map<String, dynamic> json) {
  return _UserModelAchievements.fromJson(json);
}

/// @nodoc
mixin _$UserModelAchievements {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  @JsonValue('date_awarded')
  String get dateAwarded => throw _privateConstructorUsedError;
  @JsonValue('date_awarded')
  set dateAwarded(String value) => throw _privateConstructorUsedError;

  /// Serializes this UserModelAchievements to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModelAchievements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelAchievementsCopyWith<UserModelAchievements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelAchievementsCopyWith<$Res> {
  factory $UserModelAchievementsCopyWith(UserModelAchievements value,
          $Res Function(UserModelAchievements) then) =
      _$UserModelAchievementsCopyWithImpl<$Res, UserModelAchievements>;
  @useResult
  $Res call({String name, @JsonValue('date_awarded') String dateAwarded});
}

/// @nodoc
class _$UserModelAchievementsCopyWithImpl<$Res,
        $Val extends UserModelAchievements>
    implements $UserModelAchievementsCopyWith<$Res> {
  _$UserModelAchievementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModelAchievements
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dateAwarded = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateAwarded: null == dateAwarded
          ? _value.dateAwarded
          : dateAwarded // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelAchievementsImplCopyWith<$Res>
    implements $UserModelAchievementsCopyWith<$Res> {
  factory _$$UserModelAchievementsImplCopyWith(
          _$UserModelAchievementsImpl value,
          $Res Function(_$UserModelAchievementsImpl) then) =
      __$$UserModelAchievementsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, @JsonValue('date_awarded') String dateAwarded});
}

/// @nodoc
class __$$UserModelAchievementsImplCopyWithImpl<$Res>
    extends _$UserModelAchievementsCopyWithImpl<$Res,
        _$UserModelAchievementsImpl>
    implements _$$UserModelAchievementsImplCopyWith<$Res> {
  __$$UserModelAchievementsImplCopyWithImpl(_$UserModelAchievementsImpl _value,
      $Res Function(_$UserModelAchievementsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModelAchievements
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dateAwarded = null,
  }) {
    return _then(_$UserModelAchievementsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateAwarded: null == dateAwarded
          ? _value.dateAwarded
          : dateAwarded // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelAchievementsImpl implements _UserModelAchievements {
  _$UserModelAchievementsImpl(
      {required this.name,
      @JsonValue('date_awarded') required this.dateAwarded});

  factory _$UserModelAchievementsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelAchievementsImplFromJson(json);

  @override
  String name;
  @override
  @JsonValue('date_awarded')
  String dateAwarded;

  @override
  String toString() {
    return 'UserModelAchievements(name: $name, dateAwarded: $dateAwarded)';
  }

  /// Create a copy of UserModelAchievements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelAchievementsImplCopyWith<_$UserModelAchievementsImpl>
      get copyWith => __$$UserModelAchievementsImplCopyWithImpl<
          _$UserModelAchievementsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelAchievementsImplToJson(
      this,
    );
  }
}

abstract class _UserModelAchievements implements UserModelAchievements {
  factory _UserModelAchievements(
          {required String name,
          @JsonValue('date_awarded') required String dateAwarded}) =
      _$UserModelAchievementsImpl;

  factory _UserModelAchievements.fromJson(Map<String, dynamic> json) =
      _$UserModelAchievementsImpl.fromJson;

  @override
  String get name;
  set name(String value);
  @override
  @JsonValue('date_awarded')
  String get dateAwarded;
  @JsonValue('date_awarded')
  set dateAwarded(String value);

  /// Create a copy of UserModelAchievements
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelAchievementsImplCopyWith<_$UserModelAchievementsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserModelBadges _$UserModelBadgesFromJson(Map<String, dynamic> json) {
  return _UserModelBadges.fromJson(json);
}

/// @nodoc
mixin _$UserModelBadges {
  @JsonValue('badge_id')
  int get badgeId => throw _privateConstructorUsedError;
  @JsonValue('badge_id')
  set badgeId(int value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  set description(String value) => throw _privateConstructorUsedError;

  /// Serializes this UserModelBadges to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModelBadges
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelBadgesCopyWith<UserModelBadges> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelBadgesCopyWith<$Res> {
  factory $UserModelBadgesCopyWith(
          UserModelBadges value, $Res Function(UserModelBadges) then) =
      _$UserModelBadgesCopyWithImpl<$Res, UserModelBadges>;
  @useResult
  $Res call(
      {@JsonValue('badge_id') int badgeId, String name, String description});
}

/// @nodoc
class _$UserModelBadgesCopyWithImpl<$Res, $Val extends UserModelBadges>
    implements $UserModelBadgesCopyWith<$Res> {
  _$UserModelBadgesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModelBadges
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? badgeId = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      badgeId: null == badgeId
          ? _value.badgeId
          : badgeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelBadgesImplCopyWith<$Res>
    implements $UserModelBadgesCopyWith<$Res> {
  factory _$$UserModelBadgesImplCopyWith(_$UserModelBadgesImpl value,
          $Res Function(_$UserModelBadgesImpl) then) =
      __$$UserModelBadgesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonValue('badge_id') int badgeId, String name, String description});
}

/// @nodoc
class __$$UserModelBadgesImplCopyWithImpl<$Res>
    extends _$UserModelBadgesCopyWithImpl<$Res, _$UserModelBadgesImpl>
    implements _$$UserModelBadgesImplCopyWith<$Res> {
  __$$UserModelBadgesImplCopyWithImpl(
      _$UserModelBadgesImpl _value, $Res Function(_$UserModelBadgesImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModelBadges
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? badgeId = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$UserModelBadgesImpl(
      badgeId: null == badgeId
          ? _value.badgeId
          : badgeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelBadgesImpl implements _UserModelBadges {
  _$UserModelBadgesImpl(
      {@JsonValue('badge_id') required this.badgeId,
      required this.name,
      required this.description});

  factory _$UserModelBadgesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelBadgesImplFromJson(json);

  @override
  @JsonValue('badge_id')
  int badgeId;
  @override
  String name;
  @override
  String description;

  @override
  String toString() {
    return 'UserModelBadges(badgeId: $badgeId, name: $name, description: $description)';
  }

  /// Create a copy of UserModelBadges
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelBadgesImplCopyWith<_$UserModelBadgesImpl> get copyWith =>
      __$$UserModelBadgesImplCopyWithImpl<_$UserModelBadgesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelBadgesImplToJson(
      this,
    );
  }
}

abstract class _UserModelBadges implements UserModelBadges {
  factory _UserModelBadges(
      {@JsonValue('badge_id') required int badgeId,
      required String name,
      required String description}) = _$UserModelBadgesImpl;

  factory _UserModelBadges.fromJson(Map<String, dynamic> json) =
      _$UserModelBadgesImpl.fromJson;

  @override
  @JsonValue('badge_id')
  int get badgeId;
  @JsonValue('badge_id')
  set badgeId(int value);
  @override
  String get name;
  set name(String value);
  @override
  String get description;
  set description(String value);

  /// Create a copy of UserModelBadges
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelBadgesImplCopyWith<_$UserModelBadgesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
