import 'package:freezed_annotation/freezed_annotation.dart';

part 'eco_calculator_result_model.freezed.dart';

part 'eco_calculator_result_model.g.dart';

@unfreezed
class EcoCalculatorResultModel with _$EcoCalculatorResultModel {
  factory EcoCalculatorResultModel({
    @JsonKey(name: 'total_emission_week') @Default(0) double totalEmissionWeek,
    @JsonKey(name: 'specific_emission')
    required EcoCalculatorResultModelSpecificEmission specificEmission,
    @JsonKey(name: 'AI_suggestion') required String aiSuggestion,
  }) = _EcoCalculatorResultModel;

  factory EcoCalculatorResultModel.fromJson(Map<String, dynamic> json) =>
      _$EcoCalculatorResultModelFromJson(json);
}

@unfreezed
class EcoCalculatorResultModelSpecificEmission
    with _$EcoCalculatorResultModelSpecificEmission {
  factory EcoCalculatorResultModelSpecificEmission({
    @Default(0) double car,
    @Default(0) int plane,
    @JsonKey(name: 'public_transport') @Default(0) int publicTransport,
    @Default(0) int energy,
    @Default(0) double water,
    @Default(0) double garbage,
    @Default(0) double food,
    @JsonKey(name: 'watch_time') @Default(0) double watchTime,
    @Default(0) double shopping,
  }) = _EcoCalculatorResultModelSpecificEmission;

  factory EcoCalculatorResultModelSpecificEmission.fromJson(
          Map<String, dynamic> json) =>
      _$EcoCalculatorResultModelSpecificEmissionFromJson(json);
}
