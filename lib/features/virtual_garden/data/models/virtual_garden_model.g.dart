// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'virtual_garden_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VirtualGardenModelImpl _$$VirtualGardenModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VirtualGardenModelImpl(
      id: json['id'] as String,
      user: json['user'] as String,
      plants: (json['plants'] as List<dynamic>)
          .map((e) =>
              VirtualGardenModelPlant.fromJson(e as Map<String, dynamic>))
          .toList(),
      userActions: VirtualGardenModelUserActions.fromJson(
          json['user_actions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VirtualGardenModelImplToJson(
        _$VirtualGardenModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'plants': instance.plants,
      'user_actions': instance.userActions,
    };

_$VirtualGardenModelPlantImpl _$$VirtualGardenModelPlantImplFromJson(
        Map<String, dynamic> json) =>
    _$VirtualGardenModelPlantImpl(
      plantId: json['plant_id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      growthStage: (json['growth_stage'] as num).toInt(),
      wateringNeeded: (json['watering_needed'] as num).toInt(),
      fertilizerNeeded: (json['fertilizer_needed'] as num).toInt(),
      weedsRemovedNeeded: (json['weeds_removed_needed'] as num).toInt(),
      planted: DateTime.parse(json['planted'] as String),
      harvestable: json['harvestable'] as bool,
      lastWatered: DateTime.parse(json['last_watered'] as String),
      lastFertilized: DateTime.parse(json['last_fertilized'] as String),
    );

Map<String, dynamic> _$$VirtualGardenModelPlantImplToJson(
        _$VirtualGardenModelPlantImpl instance) =>
    <String, dynamic>{
      'plant_id': instance.plantId,
      'name': instance.name,
      'type': instance.type,
      'growth_stage': instance.growthStage,
      'watering_needed': instance.wateringNeeded,
      'fertilizer_needed': instance.fertilizerNeeded,
      'weeds_removed_needed': instance.weedsRemovedNeeded,
      'planted': instance.planted.toIso8601String(),
      'harvestable': instance.harvestable,
      'last_watered': instance.lastWatered.toIso8601String(),
      'last_fertilized': instance.lastFertilized.toIso8601String(),
    };

_$VirtualGardenModelUserActionsImpl
    _$$VirtualGardenModelUserActionsImplFromJson(Map<String, dynamic> json) =>
        _$VirtualGardenModelUserActionsImpl(
          wateringCount: (json['watering_count'] as num).toInt(),
          wateringMaxCount: (json['watering_max_count'] as num).toInt(),
          wateringRefill: DateTime.parse(json['watering_refill'] as String),
          fertilizingCount: (json['fertilizing_count'] as num).toInt(),
          fertilizingMaxCount: (json['fertilizing_max_count'] as num).toInt(),
          fertilizingRefill:
              DateTime.parse(json['fertilizing_refill'] as String),
          weedsRemoved: (json['weeds_removed'] as num).toInt(),
          weedsMaxRemoved: (json['weeds_max_removed'] as num).toInt(),
          weedsRefill: DateTime.parse(json['weeds_refill'] as String),
        );

Map<String, dynamic> _$$VirtualGardenModelUserActionsImplToJson(
        _$VirtualGardenModelUserActionsImpl instance) =>
    <String, dynamic>{
      'watering_count': instance.wateringCount,
      'watering_max_count': instance.wateringMaxCount,
      'watering_refill': instance.wateringRefill.toIso8601String(),
      'fertilizing_count': instance.fertilizingCount,
      'fertilizing_max_count': instance.fertilizingMaxCount,
      'fertilizing_refill': instance.fertilizingRefill.toIso8601String(),
      'weeds_removed': instance.weedsRemoved,
      'weeds_max_removed': instance.weedsMaxRemoved,
      'weeds_refill': instance.weedsRefill.toIso8601String(),
    };
