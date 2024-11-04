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
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  set email(String value) => throw _privateConstructorUsedError;
  String? get provider => throw _privateConstructorUsedError;
  set provider(String? value) => throw _privateConstructorUsedError;
  String? get googleID => throw _privateConstructorUsedError;
  set googleID(String? value) => throw _privateConstructorUsedError;
  String? get facebookID => throw _privateConstructorUsedError;
  set facebookID(String? value) => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  set title(String? value) => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  set location(String? value) => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  set bio(String? value) => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  set username(String? value) => throw _privateConstructorUsedError;
  int? get points => throw _privateConstructorUsedError;
  set points(int? value) => throw _privateConstructorUsedError;
  UserModelFullName get fullName => throw _privateConstructorUsedError;
  set fullName(UserModelFullName value) => throw _privateConstructorUsedError;
  String get avatarHash => throw _privateConstructorUsedError;
  set avatarHash(String value) => throw _privateConstructorUsedError;
  List<UserModelNotification> get notifications =>
      throw _privateConstructorUsedError;
  set notifications(List<UserModelNotification> value) =>
      throw _privateConstructorUsedError;
  List<String> get friends => throw _privateConstructorUsedError;
  set friends(List<String> value) => throw _privateConstructorUsedError;
  List<UserModelAchievement> get achievements =>
      throw _privateConstructorUsedError;
  set achievements(List<UserModelAchievement> value) =>
      throw _privateConstructorUsedError;
  List<String> get skills => throw _privateConstructorUsedError;
  set skills(List<String> value) => throw _privateConstructorUsedError;
  List<String> get badges => throw _privateConstructorUsedError;
  set badges(List<String> value) => throw _privateConstructorUsedError;
  List<String> get preferredTopics => throw _privateConstructorUsedError;
  set preferredTopics(List<String> value) => throw _privateConstructorUsedError;
  bool get admin => throw _privateConstructorUsedError;
  set admin(bool value) => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;

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
      {String id,
      String email,
      String? provider,
      String? googleID,
      String? facebookID,
      String? title,
      String? location,
      String? bio,
      String? username,
      int? points,
      UserModelFullName fullName,
      String avatarHash,
      List<UserModelNotification> notifications,
      List<String> friends,
      List<UserModelAchievement> achievements,
      List<String> skills,
      List<String> badges,
      List<String> preferredTopics,
      bool admin,
      DateTime? createdAt});

  $UserModelFullNameCopyWith<$Res> get fullName;
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
    Object? id = null,
    Object? email = null,
    Object? provider = freezed,
    Object? googleID = freezed,
    Object? facebookID = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? bio = freezed,
    Object? username = freezed,
    Object? points = freezed,
    Object? fullName = null,
    Object? avatarHash = null,
    Object? notifications = null,
    Object? friends = null,
    Object? achievements = null,
    Object? skills = null,
    Object? badges = null,
    Object? preferredTopics = null,
    Object? admin = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      googleID: freezed == googleID
          ? _value.googleID
          : googleID // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookID: freezed == facebookID
          ? _value.facebookID
          : facebookID // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as UserModelFullName,
      avatarHash: null == avatarHash
          ? _value.avatarHash
          : avatarHash // ignore: cast_nullable_to_non_nullable
              as String,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<UserModelNotification>,
      friends: null == friends
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<String>,
      achievements: null == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<UserModelAchievement>,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferredTopics: null == preferredTopics
          ? _value.preferredTopics
          : preferredTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelFullNameCopyWith<$Res> get fullName {
    return $UserModelFullNameCopyWith<$Res>(_value.fullName, (value) {
      return _then(_value.copyWith(fullName: value) as $Val);
    });
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
      {String id,
      String email,
      String? provider,
      String? googleID,
      String? facebookID,
      String? title,
      String? location,
      String? bio,
      String? username,
      int? points,
      UserModelFullName fullName,
      String avatarHash,
      List<UserModelNotification> notifications,
      List<String> friends,
      List<UserModelAchievement> achievements,
      List<String> skills,
      List<String> badges,
      List<String> preferredTopics,
      bool admin,
      DateTime? createdAt});

  @override
  $UserModelFullNameCopyWith<$Res> get fullName;
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
    Object? id = null,
    Object? email = null,
    Object? provider = freezed,
    Object? googleID = freezed,
    Object? facebookID = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? bio = freezed,
    Object? username = freezed,
    Object? points = freezed,
    Object? fullName = null,
    Object? avatarHash = null,
    Object? notifications = null,
    Object? friends = null,
    Object? achievements = null,
    Object? skills = null,
    Object? badges = null,
    Object? preferredTopics = null,
    Object? admin = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      googleID: freezed == googleID
          ? _value.googleID
          : googleID // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookID: freezed == facebookID
          ? _value.facebookID
          : facebookID // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as UserModelFullName,
      avatarHash: null == avatarHash
          ? _value.avatarHash
          : avatarHash // ignore: cast_nullable_to_non_nullable
              as String,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<UserModelNotification>,
      friends: null == friends
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<String>,
      achievements: null == achievements
          ? _value.achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<UserModelAchievement>,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferredTopics: null == preferredTopics
          ? _value.preferredTopics
          : preferredTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl extends _UserModel {
  _$UserModelImpl(
      {required this.id,
      required this.email,
      this.provider,
      this.googleID,
      this.facebookID,
      this.title,
      this.location,
      this.bio,
      this.username,
      this.points,
      required this.fullName,
      required this.avatarHash,
      required this.notifications,
      required this.friends,
      required this.achievements,
      required this.skills,
      required this.badges,
      required this.preferredTopics,
      this.admin = false,
      this.createdAt})
      : super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  String id;
  @override
  String email;
  @override
  String? provider;
  @override
  String? googleID;
  @override
  String? facebookID;
  @override
  String? title;
  @override
  String? location;
  @override
  String? bio;
  @override
  String? username;
  @override
  int? points;
  @override
  UserModelFullName fullName;
  @override
  String avatarHash;
  @override
  List<UserModelNotification> notifications;
  @override
  List<String> friends;
  @override
  List<UserModelAchievement> achievements;
  @override
  List<String> skills;
  @override
  List<String> badges;
  @override
  List<String> preferredTopics;
  @override
  @JsonKey()
  bool admin;
  @override
  DateTime? createdAt;

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, provider: $provider, googleID: $googleID, facebookID: $facebookID, title: $title, location: $location, bio: $bio, username: $username, points: $points, fullName: $fullName, avatarHash: $avatarHash, notifications: $notifications, friends: $friends, achievements: $achievements, skills: $skills, badges: $badges, preferredTopics: $preferredTopics, admin: $admin, createdAt: $createdAt)';
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
      {required String id,
      required String email,
      String? provider,
      String? googleID,
      String? facebookID,
      String? title,
      String? location,
      String? bio,
      String? username,
      int? points,
      required UserModelFullName fullName,
      required String avatarHash,
      required List<UserModelNotification> notifications,
      required List<String> friends,
      required List<UserModelAchievement> achievements,
      required List<String> skills,
      required List<String> badges,
      required List<String> preferredTopics,
      bool admin,
      DateTime? createdAt}) = _$UserModelImpl;
  _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get email;
  set email(String value);
  @override
  String? get provider;
  set provider(String? value);
  @override
  String? get googleID;
  set googleID(String? value);
  @override
  String? get facebookID;
  set facebookID(String? value);
  @override
  String? get title;
  set title(String? value);
  @override
  String? get location;
  set location(String? value);
  @override
  String? get bio;
  set bio(String? value);
  @override
  String? get username;
  set username(String? value);
  @override
  int? get points;
  set points(int? value);
  @override
  UserModelFullName get fullName;
  set fullName(UserModelFullName value);
  @override
  String get avatarHash;
  set avatarHash(String value);
  @override
  List<UserModelNotification> get notifications;
  set notifications(List<UserModelNotification> value);
  @override
  List<String> get friends;
  set friends(List<String> value);
  @override
  List<UserModelAchievement> get achievements;
  set achievements(List<UserModelAchievement> value);
  @override
  List<String> get skills;
  set skills(List<String> value);
  @override
  List<String> get badges;
  set badges(List<String> value);
  @override
  List<String> get preferredTopics;
  set preferredTopics(List<String> value);
  @override
  bool get admin;
  set admin(bool value);
  @override
  DateTime? get createdAt;
  set createdAt(DateTime? value);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModelFullName _$UserModelFullNameFromJson(Map<String, dynamic> json) {
  return _UserModelFullName.fromJson(json);
}

/// @nodoc
mixin _$UserModelFullName {
  String? get givenName => throw _privateConstructorUsedError;
  set givenName(String? value) => throw _privateConstructorUsedError;
  String? get familyName => throw _privateConstructorUsedError;
  set familyName(String? value) => throw _privateConstructorUsedError;

  /// Serializes this UserModelFullName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModelFullName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelFullNameCopyWith<UserModelFullName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelFullNameCopyWith<$Res> {
  factory $UserModelFullNameCopyWith(
          UserModelFullName value, $Res Function(UserModelFullName) then) =
      _$UserModelFullNameCopyWithImpl<$Res, UserModelFullName>;
  @useResult
  $Res call({String? givenName, String? familyName});
}

/// @nodoc
class _$UserModelFullNameCopyWithImpl<$Res, $Val extends UserModelFullName>
    implements $UserModelFullNameCopyWith<$Res> {
  _$UserModelFullNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModelFullName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? givenName = freezed,
    Object? familyName = freezed,
  }) {
    return _then(_value.copyWith(
      givenName: freezed == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String?,
      familyName: freezed == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelFullNameImplCopyWith<$Res>
    implements $UserModelFullNameCopyWith<$Res> {
  factory _$$UserModelFullNameImplCopyWith(_$UserModelFullNameImpl value,
          $Res Function(_$UserModelFullNameImpl) then) =
      __$$UserModelFullNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? givenName, String? familyName});
}

/// @nodoc
class __$$UserModelFullNameImplCopyWithImpl<$Res>
    extends _$UserModelFullNameCopyWithImpl<$Res, _$UserModelFullNameImpl>
    implements _$$UserModelFullNameImplCopyWith<$Res> {
  __$$UserModelFullNameImplCopyWithImpl(_$UserModelFullNameImpl _value,
      $Res Function(_$UserModelFullNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModelFullName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? givenName = freezed,
    Object? familyName = freezed,
  }) {
    return _then(_$UserModelFullNameImpl(
      givenName: freezed == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String?,
      familyName: freezed == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelFullNameImpl extends _UserModelFullName {
  _$UserModelFullNameImpl({this.givenName, this.familyName}) : super._();

  factory _$UserModelFullNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelFullNameImplFromJson(json);

  @override
  String? givenName;
  @override
  String? familyName;

  @override
  String toString() {
    return 'UserModelFullName(givenName: $givenName, familyName: $familyName)';
  }

  /// Create a copy of UserModelFullName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelFullNameImplCopyWith<_$UserModelFullNameImpl> get copyWith =>
      __$$UserModelFullNameImplCopyWithImpl<_$UserModelFullNameImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelFullNameImplToJson(
      this,
    );
  }
}

abstract class _UserModelFullName extends UserModelFullName {
  factory _UserModelFullName({String? givenName, String? familyName}) =
      _$UserModelFullNameImpl;
  _UserModelFullName._() : super._();

  factory _UserModelFullName.fromJson(Map<String, dynamic> json) =
      _$UserModelFullNameImpl.fromJson;

  @override
  String? get givenName;
  set givenName(String? value);
  @override
  String? get familyName;
  set familyName(String? value);

  /// Create a copy of UserModelFullName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelFullNameImplCopyWith<_$UserModelFullNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModelNotification _$UserModelNotificationFromJson(
    Map<String, dynamic> json) {
  return _UserModelNotification.fromJson(json);
}

/// @nodoc
mixin _$UserModelNotification {
  String get title => throw _privateConstructorUsedError;
  set title(String value) => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  set date(String value) => throw _privateConstructorUsedError;

  /// Serializes this UserModelNotification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModelNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelNotificationCopyWith<UserModelNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelNotificationCopyWith<$Res> {
  factory $UserModelNotificationCopyWith(UserModelNotification value,
          $Res Function(UserModelNotification) then) =
      _$UserModelNotificationCopyWithImpl<$Res, UserModelNotification>;
  @useResult
  $Res call({String title, String date});
}

/// @nodoc
class _$UserModelNotificationCopyWithImpl<$Res,
        $Val extends UserModelNotification>
    implements $UserModelNotificationCopyWith<$Res> {
  _$UserModelNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModelNotification
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
abstract class _$$UserModelNotificationImplCopyWith<$Res>
    implements $UserModelNotificationCopyWith<$Res> {
  factory _$$UserModelNotificationImplCopyWith(
          _$UserModelNotificationImpl value,
          $Res Function(_$UserModelNotificationImpl) then) =
      __$$UserModelNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String date});
}

/// @nodoc
class __$$UserModelNotificationImplCopyWithImpl<$Res>
    extends _$UserModelNotificationCopyWithImpl<$Res,
        _$UserModelNotificationImpl>
    implements _$$UserModelNotificationImplCopyWith<$Res> {
  __$$UserModelNotificationImplCopyWithImpl(_$UserModelNotificationImpl _value,
      $Res Function(_$UserModelNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModelNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? date = null,
  }) {
    return _then(_$UserModelNotificationImpl(
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
class _$UserModelNotificationImpl implements _UserModelNotification {
  _$UserModelNotificationImpl({required this.title, required this.date});

  factory _$UserModelNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelNotificationImplFromJson(json);

  @override
  String title;
  @override
  String date;

  @override
  String toString() {
    return 'UserModelNotification(title: $title, date: $date)';
  }

  /// Create a copy of UserModelNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelNotificationImplCopyWith<_$UserModelNotificationImpl>
      get copyWith => __$$UserModelNotificationImplCopyWithImpl<
          _$UserModelNotificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelNotificationImplToJson(
      this,
    );
  }
}

abstract class _UserModelNotification implements UserModelNotification {
  factory _UserModelNotification(
      {required String title,
      required String date}) = _$UserModelNotificationImpl;

  factory _UserModelNotification.fromJson(Map<String, dynamic> json) =
      _$UserModelNotificationImpl.fromJson;

  @override
  String get title;
  set title(String value);
  @override
  String get date;
  set date(String value);

  /// Create a copy of UserModelNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelNotificationImplCopyWith<_$UserModelNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserModelAchievement _$UserModelAchievementFromJson(Map<String, dynamic> json) {
  return _UserModelAchievement.fromJson(json);
}

/// @nodoc
mixin _$UserModelAchievement {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  @JsonValue('date_awarded')
  DateTime get dateAwarded => throw _privateConstructorUsedError;
  @JsonValue('date_awarded')
  set dateAwarded(DateTime value) => throw _privateConstructorUsedError;

  /// Serializes this UserModelAchievement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModelAchievement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelAchievementCopyWith<UserModelAchievement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelAchievementCopyWith<$Res> {
  factory $UserModelAchievementCopyWith(UserModelAchievement value,
          $Res Function(UserModelAchievement) then) =
      _$UserModelAchievementCopyWithImpl<$Res, UserModelAchievement>;
  @useResult
  $Res call({String name, @JsonValue('date_awarded') DateTime dateAwarded});
}

/// @nodoc
class _$UserModelAchievementCopyWithImpl<$Res,
        $Val extends UserModelAchievement>
    implements $UserModelAchievementCopyWith<$Res> {
  _$UserModelAchievementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModelAchievement
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
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelAchievementImplCopyWith<$Res>
    implements $UserModelAchievementCopyWith<$Res> {
  factory _$$UserModelAchievementImplCopyWith(_$UserModelAchievementImpl value,
          $Res Function(_$UserModelAchievementImpl) then) =
      __$$UserModelAchievementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, @JsonValue('date_awarded') DateTime dateAwarded});
}

/// @nodoc
class __$$UserModelAchievementImplCopyWithImpl<$Res>
    extends _$UserModelAchievementCopyWithImpl<$Res, _$UserModelAchievementImpl>
    implements _$$UserModelAchievementImplCopyWith<$Res> {
  __$$UserModelAchievementImplCopyWithImpl(_$UserModelAchievementImpl _value,
      $Res Function(_$UserModelAchievementImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModelAchievement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dateAwarded = null,
  }) {
    return _then(_$UserModelAchievementImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateAwarded: null == dateAwarded
          ? _value.dateAwarded
          : dateAwarded // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelAchievementImpl implements _UserModelAchievement {
  _$UserModelAchievementImpl(
      {required this.name,
      @JsonValue('date_awarded') required this.dateAwarded});

  factory _$UserModelAchievementImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelAchievementImplFromJson(json);

  @override
  String name;
  @override
  @JsonValue('date_awarded')
  DateTime dateAwarded;

  @override
  String toString() {
    return 'UserModelAchievement(name: $name, dateAwarded: $dateAwarded)';
  }

  /// Create a copy of UserModelAchievement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelAchievementImplCopyWith<_$UserModelAchievementImpl>
      get copyWith =>
          __$$UserModelAchievementImplCopyWithImpl<_$UserModelAchievementImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelAchievementImplToJson(
      this,
    );
  }
}

abstract class _UserModelAchievement implements UserModelAchievement {
  factory _UserModelAchievement(
          {required String name,
          @JsonValue('date_awarded') required DateTime dateAwarded}) =
      _$UserModelAchievementImpl;

  factory _UserModelAchievement.fromJson(Map<String, dynamic> json) =
      _$UserModelAchievementImpl.fromJson;

  @override
  String get name;
  set name(String value);
  @override
  @JsonValue('date_awarded')
  DateTime get dateAwarded;
  @JsonValue('date_awarded')
  set dateAwarded(DateTime value);

  /// Create a copy of UserModelAchievement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelAchievementImplCopyWith<_$UserModelAchievementImpl>
      get copyWith => throw _privateConstructorUsedError;
}
