// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'virtual_garden_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VirtualGardenModelImpl _$$VirtualGardenModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VirtualGardenModelImpl(
      plants: (json['plants'] as List<dynamic>)
          .map((e) =>
              VirtualGardenModelPlants.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VirtualGardenModelImplToJson(
        _$VirtualGardenModelImpl instance) =>
    <String, dynamic>{
      'plants': instance.plants,
    };

_$VirtualGardenModelPlantsImpl _$$VirtualGardenModelPlantsImplFromJson(
        Map<String, dynamic> json) =>
    _$VirtualGardenModelPlantsImpl(
      plantId: (json['plantId'] as num).toInt(),
      type: json['type'] as String,
      species: json['species'] as String,
      growthStage: (json['growthStage'] as num).toInt(),
      plantedDate: DateTime.parse(json['plantedDate'] as String),
      pointsEarned: (json['pointsEarned'] as num).toInt(),
    );

Map<String, dynamic> _$$VirtualGardenModelPlantsImplToJson(
        _$VirtualGardenModelPlantsImpl instance) =>
    <String, dynamic>{
      'plantId': instance.plantId,
      'type': instance.type,
      'species': instance.species,
      'growthStage': instance.growthStage,
      'plantedDate': instance.plantedDate.toIso8601String(),
      'pointsEarned': instance.pointsEarned,
    };
