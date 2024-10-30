import 'package:freezed_annotation/freezed_annotation.dart';

part 'virtual_garden_model.freezed.dart';
part 'virtual_garden_model.g.dart';

@unfreezed
class VirtualGardenModel with _$VirtualGardenModel {
  factory VirtualGardenModel({
    required List<VirtualGardenModelPlants> plants,
  }) = _VirtualGardenModel;

  factory VirtualGardenModel.fromJson(Map<String, dynamic> json) =>
      _$VirtualGardenModelFromJson(json);
}

@unfreezed
class VirtualGardenModelPlants with _$VirtualGardenModelPlants {
  factory VirtualGardenModelPlants({
    @JsonValue('plant_id') required int plantId,
    required String type,
    required String species,
    @JsonValue('growth_stage') required int growthStage,
    @JsonValue('planted_date') required DateTime plantedDate,
    @JsonValue('points_earned') required int pointsEarned,
  }) = _VirtualGardenModelPlants;

  factory VirtualGardenModelPlants.fromJson(Map<String, dynamic> json) =>
      _$VirtualGardenModelPlantsFromJson(json);
}
