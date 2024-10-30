// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      idTitle: json['id_title'] as String,
      email: json['email'] as String,
      firstName: json['first_name'] as String,
      secondName: json['second_name'] as String,
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
      preferredTopics: (json['preferred_topics'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id_title': instance.idTitle,
      'email': instance.email,
      'first_name': instance.firstName,
      'second_name': instance.secondName,
      'notifications': instance.notifications,
      'points': instance.points,
      'friends': instance.friends,
      'avatar': instance.avatar,
      'bio': instance.bio,
      'achievements': instance.achievements,
      'skills': instance.skills,
      'badges': instance.badges,
      'location': instance.location,
      'preferred_topics': instance.preferredTopics,
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
      dateAwarded: json['date_awarded'] as String,
    );

Map<String, dynamic> _$$UserModelAchievementsImplToJson(
        _$UserModelAchievementsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date_awarded': instance.dateAwarded,
    };

_$UserModelBadgesImpl _$$UserModelBadgesImplFromJson(
        Map<String, dynamic> json) =>
    _$UserModelBadgesImpl(
      badgeId: (json['badge_id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$UserModelBadgesImplToJson(
        _$UserModelBadgesImpl instance) =>
    <String, dynamic>{
      'badge_id': instance.badgeId,
      'name': instance.name,
      'description': instance.description,
    };
