// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'virtual_garden_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VirtualGardenModelImpl _$$VirtualGardenModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VirtualGardenModelImpl(
      id: json['_id'] as String,
      user: json['user'] as String,
      plants: (json['plants'] as List<dynamic>)
          .map((e) =>
              VirtualGardenModelPlant.fromJson(e as Map<String, dynamic>))
          .toList(),
      userActions: VirtualGardenModelUserActions.fromJson(
          json['userActions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VirtualGardenModelImplToJson(
        _$VirtualGardenModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user': instance.user,
      'plants': instance.plants,
      'userActions': instance.userActions,
    };

_$VirtualGardenModelPlantImpl _$$VirtualGardenModelPlantImplFromJson(
        Map<String, dynamic> json) =>
    _$VirtualGardenModelPlantImpl(
      plantId: json['_id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      growthStage: (json['growthStage'] as num).toInt(),
      wateringNeeded: (json['wateringNeeded'] as num).toInt(),
      fertilizerNeeded: (json['fertilizerNeeded'] as num).toInt(),
      weedsRemovedNeeded: (json['weedsRemovedNeeded'] as num).toInt(),
      planted: DateTime.parse(json['planted'] as String),
      harvestable: json['harvestable'] as bool,
      lastWatered: json['last_watered'] == null
          ? null
          : DateTime.parse(json['last_watered'] as String),
      lastFertilized: json['last_fertilized'] == null
          ? null
          : DateTime.parse(json['last_fertilized'] as String),
    );

Map<String, dynamic> _$$VirtualGardenModelPlantImplToJson(
        _$VirtualGardenModelPlantImpl instance) =>
    <String, dynamic>{
      '_id': instance.plantId,
      'name': instance.name,
      'type': instance.type,
      'growthStage': instance.growthStage,
      'wateringNeeded': instance.wateringNeeded,
      'fertilizerNeeded': instance.fertilizerNeeded,
      'weedsRemovedNeeded': instance.weedsRemovedNeeded,
      'planted': instance.planted.toIso8601String(),
      'harvestable': instance.harvestable,
      'last_watered': instance.lastWatered?.toIso8601String(),
      'last_fertilized': instance.lastFertilized?.toIso8601String(),
    };

_$VirtualGardenModelUserActionsImpl
    _$$VirtualGardenModelUserActionsImplFromJson(Map<String, dynamic> json) =>
        _$VirtualGardenModelUserActionsImpl(
          wateringCount: (json['wateringCount'] as num).toInt(),
          wateringMaxCount: (json['wateringMaxCount'] as num?)?.toInt(),
          wateringRefill: json['wateringRefill'] == null
              ? null
              : DateTime.parse(json['wateringRefill'] as String),
          fertilizingCount: (json['fertilizingCount'] as num).toInt(),
          fertilizingMaxCount: (json['fertilizingMaxCount'] as num?)?.toInt(),
          fertilizingRefill: json['fertilizingRefill'] == null
              ? null
              : DateTime.parse(json['fertilizingRefill'] as String),
          weedsRemoved: (json['weedsRemoved'] as num).toInt(),
          weedsMaxRemoved: (json['weedsMaxRemoved'] as num?)?.toInt(),
          weedsRefill: json['weedsRefill'] == null
              ? null
              : DateTime.parse(json['weedsRefill'] as String),
        );

Map<String, dynamic> _$$VirtualGardenModelUserActionsImplToJson(
        _$VirtualGardenModelUserActionsImpl instance) =>
    <String, dynamic>{
      'wateringCount': instance.wateringCount,
      'wateringMaxCount': instance.wateringMaxCount,
      'wateringRefill': instance.wateringRefill?.toIso8601String(),
      'fertilizingCount': instance.fertilizingCount,
      'fertilizingMaxCount': instance.fertilizingMaxCount,
      'fertilizingRefill': instance.fertilizingRefill?.toIso8601String(),
      'weedsRemoved': instance.weedsRemoved,
      'weedsMaxRemoved': instance.weedsMaxRemoved,
      'weedsRefill': instance.weedsRefill?.toIso8601String(),
    };
