import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  UserModel._();

  factory UserModel({
    required String id,
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
    required List<String> friends,
    required List<UserModelAchievement> achievements,
    required List<String> skills,
    required List<String> preferredTopics,
    @Default(false) bool admin,
    DateTime? createdAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  String get avatar => 'https://ecohero.q1000q.me/api/v1/avatar/$id/$avatarHash';
}

@freezed
class UserModelFullName with _$UserModelFullName {
  UserModelFullName._();

  factory UserModelFullName({
    String? givenName,
    String? familyName,
  }) = _UserModelFullName;

  factory UserModelFullName.fromJson(Map<String, dynamic> json) =>
      _$UserModelFullNameFromJson(json);

 String get full {
    if (givenName == null && familyName != null) {
      return familyName!;
    }

    if (givenName != null && familyName == null) {
      return givenName!;
    }

    return '$givenName $familyName';
  }
}

@freezed
class UserModelNotification with _$UserModelNotification {
  factory UserModelNotification({
    required String title,
    required String date,
  }) = _UserModelNotification;

  factory UserModelNotification.fromJson(Map<String, dynamic> json) =>
      _$UserModelNotificationFromJson(json);
}

@freezed
class UserModelAchievement with _$UserModelAchievement {
  factory UserModelAchievement({
    required String name,
    @JsonValue('date_awarded') required DateTime dateAwarded,
  }) = _UserModelAchievement;

  factory UserModelAchievement.fromJson(Map<String, dynamic> json) =>
      _$UserModelAchievementFromJson(json);
}
