// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      idTitle: json['idTitle'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      secondName: json['secondName'] as String,
      notifications: (json['notifications'] as List<dynamic>)
          .map(
              (e) => UserModelNotifications.fromJson(e as Map<String, dynamic>))
          .toList(),
      points: (json['points'] as num).toInt(),
      friends:
          (json['friends'] as List<dynamic>).map((e) => e as String).toList(),
      avatar: json['avatar'] as String,
      bio: json['bio'] as String,
      achievements: (json['achievements'] as List<dynamic>)
          .map((e) => UserModelAchievements.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills:
          (json['skills'] as List<dynamic>).map((e) => e as String).toList(),
      badges: (json['badges'] as List<dynamic>)
          .map((e) => UserModelBadges.fromJson(e as Map<String, dynamic>))
          .toList(),
      location: json['location'] as String,
      preferredTopics: (json['preferredTopics'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'idTitle': instance.idTitle,
      'email': instance.email,
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'notifications': instance.notifications,
      'points': instance.points,
      'friends': instance.friends,
      'avatar': instance.avatar,
      'bio': instance.bio,
      'achievements': instance.achievements,
      'skills': instance.skills,
      'badges': instance.badges,
      'location': instance.location,
      'preferredTopics': instance.preferredTopics,
    };

_$UserModelNotificationsImpl _$$UserModelNotificationsImplFromJson(
        Map<String, dynamic> json) =>
    _$UserModelNotificationsImpl(
      title: json['title'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$UserModelNotificationsImplToJson(
        _$UserModelNotificationsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'date': instance.date,
    };

_$UserModelAchievementsImpl _$$UserModelAchievementsImplFromJson(
        Map<String, dynamic> json) =>
    _$UserModelAchievementsImpl(
      name: json['name'] as String,
      dateAwarded: json['dateAwarded'] as String,
    );

Map<String, dynamic> _$$UserModelAchievementsImplToJson(
        _$UserModelAchievementsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dateAwarded': instance.dateAwarded,
    };

_$UserModelBadgesImpl _$$UserModelBadgesImplFromJson(
        Map<String, dynamic> json) =>
    _$UserModelBadgesImpl(
      badgeId: (json['badgeId'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$UserModelBadgesImplToJson(
        _$UserModelBadgesImpl instance) =>
    <String, dynamic>{
      'badgeId': instance.badgeId,
      'name': instance.name,
      'description': instance.description,
    };
