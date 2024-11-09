import 'package:freezed_annotation/freezed_annotation.dart';

part 'eco_calculator_model.freezed.dart';

part 'eco_calculator_model.g.dart';

@unfreezed
class EcoCalculatorModel with _$EcoCalculatorModel {
  factory EcoCalculatorModel({
    required EcoCalculatorModelTransport transport,
    required EcoCalculatorModelEnergy energy,
    required EcoCalculatorModelWater water,
    required EcoCalculatorModelWaste waste,
    required EcoCalculatorModelFood food,
    required EcoCalculatorModelLeisure leisure,
  }) = _EcoCalculatorModel;

  factory EcoCalculatorModel.fromJson(Map<String, dynamic> json) =>
      _$EcoCalculatorModelFromJson(json);
}

@unfreezed
class EcoCalculatorModelTransport with _$EcoCalculatorModelTransport {
  factory EcoCalculatorModelTransport({
    @JsonKey(name: 'car_usage') required int carUsage,
    @JsonKey(name: 'fuel_type') required int fuelType,
    @JsonKey(name: 'weekly_km') required int weeklyKm,
    @JsonKey(name: 'flight_frequency') required int flightFrequency,
    @JsonKey(name: 'public_transport_usage') required int publicTransportUsage,
  }) = _EcoCalculatorModelTransport;

  factory EcoCalculatorModelTransport.fromJson(Map<String, dynamic> json) =>
      _$EcoCalculatorModelTransportFromJson(json);
}

@unfreezed
class EcoCalculatorModelEnergy with _$EcoCalculatorModelEnergy {
  factory EcoCalculatorModelEnergy({
    @JsonKey(name: 'energy_source') required int energySource,
    @JsonKey(name: 'water_heating_source') required int waterHeatingSource,
    @JsonKey(name: 'monthly_kWh') required int monthlyKWh,
    @JsonKey(name: 'energy_efficiency') required int energyEfficiency,
  }) = _EcoCalculatorModelEnergy;

  factory EcoCalculatorModelEnergy.fromJson(Map<String, dynamic> json) =>
      _$EcoCalculatorModelEnergyFromJson(json);
}

@unfreezed
class EcoCalculatorModelWater with _$EcoCalculatorModelWater {
  factory EcoCalculatorModelWater({
    @JsonKey(name: 'shower_time') required int showerTime,
    @JsonKey(name: 'bathtub_usage') required int bathtubUsage,
  }) = _EcoCalculatorModelWater;

  factory EcoCalculatorModelWater.fromJson(Map<String, dynamic> json) =>
      _$EcoCalculatorModelWaterFromJson(json);
}

@unfreezed
class EcoCalculatorModelWaste with _$EcoCalculatorModelWaste {
  factory EcoCalculatorModelWaste({
    @JsonKey(name: 'waste_segregation') required int wasteSegregation,
    @JsonKey(name: 'food_waste') required int foodWaste,
    @JsonKey(name: 'plastic_usage') required int plasticUsage,
  }) = _EcoCalculatorModelWaste;

  factory EcoCalculatorModelWaste.fromJson(Map<String, dynamic> json) =>
      _$EcoCalculatorModelWasteFromJson(json);
}

@unfreezed
class EcoCalculatorModelFood with _$EcoCalculatorModelFood {
  factory EcoCalculatorModelFood({
    @JsonKey(name: 'meat_consumption') required int meatConsumption,
    @JsonKey(name: 'local_food_preference') required int localFoodPreference,
  }) = _EcoCalculatorModelFood;

  factory EcoCalculatorModelFood.fromJson(Map<String, dynamic> json) =>
      _$EcoCalculatorModelFoodFromJson(json);
}

@unfreezed
class EcoCalculatorModelLeisure with _$EcoCalculatorModelLeisure {
  factory EcoCalculatorModelLeisure({
    @JsonKey(name: 'movie_watch_time') required int movieWatchTime,
    @JsonKey(name: 'shopping_frequency') required int shoppingFrequency,
  }) = _EcoCalculatorModelLeisure;

  factory EcoCalculatorModelLeisure.fromJson(Map<String, dynamic> json) =>
      _$EcoCalculatorModelLeisureFromJson(json);
}
