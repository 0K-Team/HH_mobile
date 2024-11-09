// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eco_calculator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EcoCalculatorModelImpl _$$EcoCalculatorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EcoCalculatorModelImpl(
      transport: EcoCalculatorModelTransport.fromJson(
          json['transport'] as Map<String, dynamic>),
      energy: EcoCalculatorModelEnergy.fromJson(
          json['energy'] as Map<String, dynamic>),
      water: EcoCalculatorModelWater.fromJson(
          json['water'] as Map<String, dynamic>),
      waste: EcoCalculatorModelWaste.fromJson(
          json['waste'] as Map<String, dynamic>),
      food:
          EcoCalculatorModelFood.fromJson(json['food'] as Map<String, dynamic>),
      leisure: EcoCalculatorModelLeisure.fromJson(
          json['leisure'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EcoCalculatorModelImplToJson(
        _$EcoCalculatorModelImpl instance) =>
    <String, dynamic>{
      'transport': instance.transport,
      'energy': instance.energy,
      'water': instance.water,
      'waste': instance.waste,
      'food': instance.food,
      'leisure': instance.leisure,
    };

_$EcoCalculatorModelTransportImpl _$$EcoCalculatorModelTransportImplFromJson(
        Map<String, dynamic> json) =>
    _$EcoCalculatorModelTransportImpl(
      carUsage: (json['car_usage'] as num).toInt(),
      fuelType: (json['fuel_type'] as num).toInt(),
      weeklyKm: (json['weekly_km'] as num).toInt(),
      flightFrequency: (json['flight_frequency'] as num).toInt(),
      publicTransportUsage: (json['public_transport_usage'] as num).toInt(),
    );

Map<String, dynamic> _$$EcoCalculatorModelTransportImplToJson(
        _$EcoCalculatorModelTransportImpl instance) =>
    <String, dynamic>{
      'car_usage': instance.carUsage,
      'fuel_type': instance.fuelType,
      'weekly_km': instance.weeklyKm,
      'flight_frequency': instance.flightFrequency,
      'public_transport_usage': instance.publicTransportUsage,
    };

_$EcoCalculatorModelEnergyImpl _$$EcoCalculatorModelEnergyImplFromJson(
        Map<String, dynamic> json) =>
    _$EcoCalculatorModelEnergyImpl(
      energySource: (json['energy_source'] as num).toInt(),
      waterHeatingSource: (json['water_heating_source'] as num).toInt(),
      monthlyKWh: (json['monthly_kWh'] as num).toInt(),
      energyEfficiency: (json['energy_efficiency'] as num).toInt(),
    );

Map<String, dynamic> _$$EcoCalculatorModelEnergyImplToJson(
        _$EcoCalculatorModelEnergyImpl instance) =>
    <String, dynamic>{
      'energy_source': instance.energySource,
      'water_heating_source': instance.waterHeatingSource,
      'monthly_kWh': instance.monthlyKWh,
      'energy_efficiency': instance.energyEfficiency,
    };

_$EcoCalculatorModelWaterImpl _$$EcoCalculatorModelWaterImplFromJson(
        Map<String, dynamic> json) =>
    _$EcoCalculatorModelWaterImpl(
      showerTime: (json['shower_time'] as num).toInt(),
      bathtubUsage: (json['bathtub_usage'] as num).toInt(),
    );

Map<String, dynamic> _$$EcoCalculatorModelWaterImplToJson(
        _$EcoCalculatorModelWaterImpl instance) =>
    <String, dynamic>{
      'shower_time': instance.showerTime,
      'bathtub_usage': instance.bathtubUsage,
    };

_$EcoCalculatorModelWasteImpl _$$EcoCalculatorModelWasteImplFromJson(
        Map<String, dynamic> json) =>
    _$EcoCalculatorModelWasteImpl(
      wasteSegregation: (json['waste_segregation'] as num).toInt(),
      foodWaste: (json['food_waste'] as num).toInt(),
      plasticUsage: (json['plastic_usage'] as num).toInt(),
    );

Map<String, dynamic> _$$EcoCalculatorModelWasteImplToJson(
        _$EcoCalculatorModelWasteImpl instance) =>
    <String, dynamic>{
      'waste_segregation': instance.wasteSegregation,
      'food_waste': instance.foodWaste,
      'plastic_usage': instance.plasticUsage,
    };

_$EcoCalculatorModelFoodImpl _$$EcoCalculatorModelFoodImplFromJson(
        Map<String, dynamic> json) =>
    _$EcoCalculatorModelFoodImpl(
      meatConsumption: (json['meat_consumption'] as num).toInt(),
      localFoodPreference: (json['local_food_preference'] as num).toInt(),
    );

Map<String, dynamic> _$$EcoCalculatorModelFoodImplToJson(
        _$EcoCalculatorModelFoodImpl instance) =>
    <String, dynamic>{
      'meat_consumption': instance.meatConsumption,
      'local_food_preference': instance.localFoodPreference,
    };

_$EcoCalculatorModelLeisureImpl _$$EcoCalculatorModelLeisureImplFromJson(
        Map<String, dynamic> json) =>
    _$EcoCalculatorModelLeisureImpl(
      movieWatchTime: (json['movie_watch_time'] as num).toInt(),
      shoppingFrequency: (json['shopping_frequency'] as num).toInt(),
    );

Map<String, dynamic> _$$EcoCalculatorModelLeisureImplToJson(
        _$EcoCalculatorModelLeisureImpl instance) =>
    <String, dynamic>{
      'movie_watch_time': instance.movieWatchTime,
      'shopping_frequency': instance.shoppingFrequency,
    };
