// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      provider: json['provider'] as String?,
      googleID: json['googleID'] as String?,
      facebookID: json['facebookID'] as String?,
      title: json['title'] as String?,
      location: json['location'] as String?,
      bio: json['bio'] as String?,
      username: json['username'] as String?,
      points: (json['points'] as num?)?.toInt(),
      fullName:
          UserModelFullName.fromJson(json['fullName'] as Map<String, dynamic>),
      avatarHash: json['avatarHash'] as String,
      friends:
          (json['friends'] as List<dynamic>).map((e) => e as String).toList(),
      achievements: (json['achievements'] as List<dynamic>)
          .map((e) => UserModelAchievement.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills:
          (json['skills'] as List<dynamic>).map((e) => e as String).toList(),
      preferredTopics: (json['preferredTopics'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      admin: json['admin'] as bool? ?? false,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'provider': instance.provider,
      'googleID': instance.googleID,
      'facebookID': instance.facebookID,
      'title': instance.title,
      'location': instance.location,
      'bio': instance.bio,
      'username': instance.username,
      'points': instance.points,
      'fullName': instance.fullName,
      'avatarHash': instance.avatarHash,
      'friends': instance.friends,
      'achievements': instance.achievements,
      'skills': instance.skills,
      'preferredTopics': instance.preferredTopics,
      'admin': instance.admin,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$UserModelFullNameImpl _$$UserModelFullNameImplFromJson(
        Map<String, dynamic> json) =>
    _$UserModelFullNameImpl(
      givenName: json['givenName'] as String?,
      familyName: json['familyName'] as String?,
    );

Map<String, dynamic> _$$UserModelFullNameImplToJson(
        _$UserModelFullNameImpl instance) =>
    <String, dynamic>{
      'givenName': instance.givenName,
      'familyName': instance.familyName,
    };

_$UserModelNotificationImpl _$$UserModelNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$UserModelNotificationImpl(
      title: json['title'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$UserModelNotificationImplToJson(
        _$UserModelNotificationImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'date': instance.date,
    };

_$UserModelAchievementImpl _$$UserModelAchievementImplFromJson(
        Map<String, dynamic> json) =>
    _$UserModelAchievementImpl(
      name: json['name'] as String,
      dateAwarded: DateTime.parse(json['dateAwarded'] as String),
    );

Map<String, dynamic> _$$UserModelAchievementImplToJson(
        _$UserModelAchievementImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dateAwarded': instance.dateAwarded.toIso8601String(),
    };
