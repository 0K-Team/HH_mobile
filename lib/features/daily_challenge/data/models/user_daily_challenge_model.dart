import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_daily_challenge_model.freezed.dart';

part 'user_daily_challenge_model.g.dart';

@unfreezed
class UserDailyChallengeModel with _$UserDailyChallengeModel {
  factory UserDailyChallengeModel({
    required String title,
    required String type,
    required int amount,
    required int done,
  }) = _UserDailyChallengeModel;

  factory UserDailyChallengeModel.fromJson(Map<String, dynamic> json) =>
      _$UserDailyChallengeModelFromJson(json);
}
