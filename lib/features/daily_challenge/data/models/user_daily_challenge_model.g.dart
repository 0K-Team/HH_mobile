// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_daily_challenge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDailyChallengeModelImpl _$$UserDailyChallengeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDailyChallengeModelImpl(
      title: json['title'] as String,
      type: json['type'] as String,
      amount: (json['amount'] as num).toInt(),
      done: (json['done'] as num).toInt(),
    );

Map<String, dynamic> _$$UserDailyChallengeModelImplToJson(
        _$UserDailyChallengeModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'amount': instance.amount,
      'done': instance.done,
    };
