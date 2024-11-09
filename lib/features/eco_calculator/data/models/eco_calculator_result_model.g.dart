// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eco_calculator_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EcoCalculatorResultModelImpl _$$EcoCalculatorResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EcoCalculatorResultModelImpl(
      totalEmissionWeek: (json['total_emission_week'] as num?)?.toDouble() ?? 0,
      specificEmission: EcoCalculatorResultModelSpecificEmission.fromJson(
          json['specific_emission'] as Map<String, dynamic>),
      aiSuggestion: json['AI_suggestion'] as String,
    );

Map<String, dynamic> _$$EcoCalculatorResultModelImplToJson(
        _$EcoCalculatorResultModelImpl instance) =>
    <String, dynamic>{
      'total_emission_week': instance.totalEmissionWeek,
      'specific_emission': instance.specificEmission,
      'AI_suggestion': instance.aiSuggestion,
    };

_$EcoCalculatorResultModelSpecificEmissionImpl
    _$$EcoCalculatorResultModelSpecificEmissionImplFromJson(
            Map<String, dynamic> json) =>
        _$EcoCalculatorResultModelSpecificEmissionImpl(
          car: (json['car'] as num?)?.toDouble() ?? 0,
          plane: (json['plane'] as num?)?.toInt() ?? 0,
          publicTransport: (json['public_transport'] as num?)?.toInt() ?? 0,
          energy: (json['energy'] as num?)?.toInt() ?? 0,
          water: (json['water'] as num?)?.toDouble() ?? 0,
          garbage: (json['garbage'] as num?)?.toDouble() ?? 0,
          food: (json['food'] as num?)?.toDouble() ?? 0,
          watchTime: (json['watch_time'] as num?)?.toDouble() ?? 0,
          shopping: (json['shopping'] as num?)?.toDouble() ?? 0,
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
