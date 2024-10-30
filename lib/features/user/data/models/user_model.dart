import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@unfreezed
class UserModel with _$UserModel {
  factory UserModel({
    @JsonValue('id_title') required String idTitle,
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
    @JsonValue('preferred_topics') required List<String> preferredTopics,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@unfreezed
class UserModelNotifications with _$UserModelNotifications {
  factory UserModelNotifications({
    required String title,
    required String date,
  }) = _UserModelNotifications;

  factory UserModelNotifications.fromJson(Map<String, dynamic> json) =>
      _$UserModelNotificationsFromJson(json);
}

@unfreezed
class UserModelAchievements with _$UserModelAchievements {
  factory UserModelAchievements({
    required String name,
    @JsonValue('date_awarded') required String dateAwarded,
  }) = _UserModelAchievements;

  factory UserModelAchievements.fromJson(Map<String, dynamic> json) =>
      _$UserModelAchievementsFromJson(json);
}

@unfreezed
class UserModelBadges with _$UserModelBadges {
  factory UserModelBadges({
    @JsonValue('badge_id') required int badgeId,
    required String name,
    required String description,
  }) = _UserModelBadges;

  factory UserModelBadges.fromJson(Map<String, dynamic> json) =>
      _$UserModelBadgesFromJson(json);
}
