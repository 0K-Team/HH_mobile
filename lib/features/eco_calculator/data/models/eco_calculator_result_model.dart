import 'package:freezed_annotation/freezed_annotation.dart';

part 'eco_calculator_result_model.freezed.dart';

part 'eco_calculator_result_model.g.dart';

@unfreezed
class EcoCalculatorResultModel with _$EcoCalculatorResultModel {
  factory EcoCalculatorResultModel({
    @JsonKey(name: 'total_emission_week') required double totalEmissionWeek,
    @JsonKey(name: 'specific_emission')
    required EcoCalculatorResultModelSpecificEmission specificEmission,
    @JsonKey(name: 'AI_suggestion') required String AISuggestion,
  }) = _EcoCalculatorResultModel;

  factory EcoCalculatorResultModel.fromJson(Map<String, dynamic> json) =>
      _$EcoCalculatorResultModelFromJson(json);
}

@unfreezed
class EcoCalculatorResultModelSpecificEmission
    with _$EcoCalculatorResultModelSpecificEmission {
  factory EcoCalculatorResultModelSpecificEmission({
    required double car,
    required int plane,
    @JsonKey(name: 'public_transport') required int publicTransport,
    required int energy,
    required double water,
    required double garbage,
    required double food,
    @JsonKey(name: 'watch_time') required double watchTime,
    required double shopping,
  }) = _EcoCalculatorResultModelSpecificEmission;

  factory EcoCalculatorResultModelSpecificEmission.fromJson(
          Map<String, dynamic> json) =>
      _$EcoCalculatorResultModelSpecificEmissionFromJson(json);
}
