// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eco_calculator_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EcoCalculatorResultModelImpl _$$EcoCalculatorResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EcoCalculatorResultModelImpl(
      totalEmissionWeek: (json['total_emission_week'] as num).toDouble(),
      specificEmission: EcoCalculatorResultModelSpecificEmission.fromJson(
          json['specific_emission'] as Map<String, dynamic>),
      AISuggestion: json['AI_suggestion'] as String,
    );

Map<String, dynamic> _$$EcoCalculatorResultModelImplToJson(
        _$EcoCalculatorResultModelImpl instance) =>
    <String, dynamic>{
      'total_emission_week': instance.totalEmissionWeek,
      'specific_emission': instance.specificEmission,
      'AI_suggestion': instance.AISuggestion,
    };

_$EcoCalculatorResultModelSpecificEmissionImpl
    _$$EcoCalculatorResultModelSpecificEmissionImplFromJson(
            Map<String, dynamic> json) =>
        _$EcoCalculatorResultModelSpecificEmissionImpl(
          car: (json['car'] as num).toDouble(),
          plane: (json['plane'] as num).toInt(),
          publicTransport: (json['public_transport'] as num).toInt(),
          energy: (json['energy'] as num).toInt(),
          water: (json['water'] as num).toDouble(),
          garbage: (json['garbage'] as num).toDouble(),
          food: (json['food'] as num).toDouble(),
          watchTime: (json['watch_time'] as num).toDouble(),
          shopping: (json['shopping'] as num).toDouble(),
        );

Map<String, dynamic> _$$EcoCalculatorResultModelSpecificEmissionImplToJson(
        _$EcoCalculatorResultModelSpecificEmissionImpl instance) =>
    <String, dynamic>{
      'car': instance.car,
      'plane': instance.plane,
      'public_transport': instance.publicTransport,
      'energy': instance.energy,
      'water': instance.water,
      'garbage': instance.garbage,
      'food': instance.food,
      'watch_time': instance.watchTime,
      'shopping': instance.shopping,
    };
