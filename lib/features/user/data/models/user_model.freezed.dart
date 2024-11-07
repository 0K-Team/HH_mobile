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
  String get email => throw _privateConstructorUsedError;
  String? get provider => throw _privateConstructorUsedError;
  String? get googleID => throw _privateConstructorUsedError;
  String? get facebookID => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  int? get points => throw _privateConstructorUsedError;
  UserModelFullName get fullName => throw _privateConstructorUsedError;
  String get avatarHash => throw _privateConstructorUsedError;
  List<UserModelNotification> get notifications =>
      throw _privateConstructorUsedError;
  List<String> get friends => throw _privateConstructorUsedError;
  List<UserModelAchievement> get achievements =>
      throw _privateConstructorUsedError;
  List<String> get skills => throw _privateConstructorUsedError;
  List<String> get badges => throw _privateConstructorUsedError;
  List<String> get preferredTopics => throw _privateConstructorUsedError;
  bool get admin => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

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
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<UserModelNotification>,
      friends: null == friends
          ? _value._friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<String>,
      achievements: null == achievements
          ? _value._achievements
          : achievements // ignore: cast_nullable_to_non_nullable
              as List<UserModelAchievement>,
      skills: null == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      badges: null == badges
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<String>,
      preferredTopics: null == preferredTopics
          ? _value._preferredTopics
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
      required final List<UserModelNotification> notifications,
      required final List<String> friends,
      required final List<UserModelAchievement> achievements,
      required final List<String> skills,
      required final List<String> badges,
      required final List<String> preferredTopics,
      this.admin = false,
      this.createdAt})
      : _notifications = notifications,
        _friends = friends,
        _achievements = achievements,
        _skills = skills,
        _badges = badges,
        _preferredTopics = preferredTopics,
        super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String? provider;
  @override
  final String? googleID;
  @override
  final String? facebookID;
  @override
  final String? title;
  @override
  final String? location;
  @override
  final String? bio;
  @override
  final String? username;
  @override
  final int? points;
  @override
  final UserModelFullName fullName;
  @override
  final String avatarHash;
  final List<UserModelNotification> _notifications;
  @override
  List<UserModelNotification> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  final List<String> _friends;
  @override
  List<String> get friends {
    if (_friends is EqualUnmodifiableListView) return _friends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friends);
  }

  final List<UserModelAchievement> _achievements;
  @override
  List<UserModelAchievement> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  final List<String> _skills;
  @override
  List<String> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  final List<String> _badges;
  @override
  List<String> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  final List<String> _preferredTopics;
  @override
  List<String> get preferredTopics {
    if (_preferredTopics is EqualUnmodifiableListView) return _preferredTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredTopics);
  }

  @override
  @JsonKey()
  final bool admin;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, provider: $provider, googleID: $googleID, facebookID: $facebookID, title: $title, location: $location, bio: $bio, username: $username, points: $points, fullName: $fullName, avatarHash: $avatarHash, notifications: $notifications, friends: $friends, achievements: $achievements, skills: $skills, badges: $badges, preferredTopics: $preferredTopics, admin: $admin, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.googleID, googleID) ||
                other.googleID == googleID) &&
            (identical(other.facebookID, facebookID) ||
                other.facebookID == facebookID) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarHash, avatarHash) ||
                other.avatarHash == avatarHash) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            const DeepCollectionEquality().equals(other._friends, _friends) &&
            const DeepCollectionEquality()
                .equals(other._achievements, _achievements) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            const DeepCollectionEquality().equals(other._badges, _badges) &&
            const DeepCollectionEquality()
                .equals(other._preferredTopics, _preferredTopics) &&
            (identical(other.admin, admin) || other.admin == admin) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        email,
        provider,
        googleID,
        facebookID,
        title,
        location,
        bio,
        username,
        points,
        fullName,
        avatarHash,
        const DeepCollectionEquality().hash(_notifications),
        const DeepCollectionEquality().hash(_friends),
        const DeepCollectionEquality().hash(_achievements),
        const DeepCollectionEquality().hash(_skills),
        const DeepCollectionEquality().hash(_badges),
        const DeepCollectionEquality().hash(_preferredTopics),
        admin,
        createdAt
      ]);

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
      {required final String id,
      required final String email,
      final String? provider,
      final String? googleID,
      final String? facebookID,
      final String? title,
      final String? location,
      final String? bio,
      final String? username,
      final int? points,
      required final UserModelFullName fullName,
      required final String avatarHash,
      required final List<UserModelNotification> notifications,
      required final List<String> friends,
      required final List<UserModelAchievement> achievements,
      required final List<String> skills,
      required final List<String> badges,
      required final List<String> preferredTopics,
      final bool admin,
      final DateTime? createdAt}) = _$UserModelImpl;
  _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String? get provider;
  @override
  String? get googleID;
  @override
  String? get facebookID;
  @override
  String? get title;
  @override
  String? get location;
  @override
  String? get bio;
  @override
  String? get username;
  @override
  int? get points;
  @override
  UserModelFullName get fullName;
  @override
  String get avatarHash;
  @override
  List<UserModelNotification> get notifications;
  @override
  List<String> get friends;
  @override
  List<UserModelAchievement> get achievements;
  @override
  List<String> get skills;
  @override
  List<String> get badges;
  @override
  List<String> get preferredTopics;
  @override
  bool get admin;
  @override
  DateTime? get createdAt;

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
  String? get familyName => throw _privateConstructorUsedError;

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
  final String? givenName;
  @override
  final String? familyName;

  @override
  String toString() {
    return 'UserModelFullName(givenName: $givenName, familyName: $familyName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelFullNameImpl &&
            (identical(other.givenName, givenName) ||
                other.givenName == givenName) &&
            (identical(other.familyName, familyName) ||
                other.familyName == familyName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, givenName, familyName);

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
  factory _UserModelFullName(
      {final String? givenName,
      final String? familyName}) = _$UserModelFullNameImpl;
  _UserModelFullName._() : super._();

  factory _UserModelFullName.fromJson(Map<String, dynamic> json) =
      _$UserModelFullNameImpl.fromJson;

  @override
  String? get givenName;
  @override
  String? get familyName;

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
  String get date => throw _privateConstructorUsedError;

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
  final String title;
  @override
  final String date;

  @override
  String toString() {
    return 'UserModelNotification(title: $title, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelNotificationImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, date);

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
      {required final String title,
      required final String date}) = _$UserModelNotificationImpl;

  factory _UserModelNotification.fromJson(Map<String, dynamic> json) =
      _$UserModelNotificationImpl.fromJson;

  @override
  String get title;
  @override
  String get date;

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
  @JsonValue('date_awarded')
  DateTime get dateAwarded => throw _privateConstructorUsedError;

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
  final String name;
  @override
  @JsonValue('date_awarded')
  final DateTime dateAwarded;

  @override
  String toString() {
    return 'UserModelAchievement(name: $name, dateAwarded: $dateAwarded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelAchievementImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateAwarded, dateAwarded) ||
                other.dateAwarded == dateAwarded));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, dateAwarded);

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
          {required final String name,
          @JsonValue('date_awarded') required final DateTime dateAwarded}) =
      _$UserModelAchievementImpl;

  factory _UserModelAchievement.fromJson(Map<String, dynamic> json) =
      _$UserModelAchievementImpl.fromJson;

  @override
  String get name;
  @override
  @JsonValue('date_awarded')
  DateTime get dateAwarded;

  /// Create a copy of UserModelAchievement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelAchievementImplCopyWith<_$UserModelAchievementImpl>
      get copyWith => throw _privateConstructorUsedError;
}
