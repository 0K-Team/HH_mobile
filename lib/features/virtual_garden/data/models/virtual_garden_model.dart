// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'virtual_garden_model.freezed.dart';
part 'virtual_garden_model.g.dart';

@unfreezed
class VirtualGardenModel with _$VirtualGardenModel {
  factory VirtualGardenModel({
    required String id,
    required String user,
    required List<VirtualGardenModelPlant> plants,
    @JsonKey(name: 'user_actions')
    required VirtualGardenModelUserActions userActions,
  }) = _VirtualGardenModel;

  factory VirtualGardenModel.fromJson(Map<String, dynamic> json) =>
      _$VirtualGardenModelFromJson(json);
}

@unfreezed
class VirtualGardenModelPlant with _$VirtualGardenModelPlant {
  factory VirtualGardenModelPlant({
    @JsonKey(name: 'plant_id') required String plantId,
    required String name,
    required String type,
    @JsonKey(name: 'growth_stage') required int growthStage,
    @JsonKey(name: 'watering_needed') required int wateringNeeded,
    @JsonKey(name: 'fertilizer_needed') required int fertilizerNeeded,
    @JsonKey(name: 'weeds_removed_needed') required int weedsRemovedNeeded,
    required DateTime planted,
    required bool harvestable,
    @JsonKey(name: 'last_watered') required DateTime lastWatered,
    @JsonKey(name: 'last_fertilized') required DateTime lastFertilized,
  }) = _VirtualGardenModelPlant;

  factory VirtualGardenModelPlant.fromJson(Map<String, dynamic> json) =>
      _$VirtualGardenModelPlantFromJson(json);
}

@unfreezed
class VirtualGardenModelUserActions with _$VirtualGardenModelUserActions {
  factory VirtualGardenModelUserActions({
    @JsonKey(name: 'watering_count') required int wateringCount,
    @JsonKey(name: 'watering_max_count') required int wateringMaxCount,
    @JsonKey(name: 'watering_refill') required DateTime wateringRefill,
    @JsonKey(name: 'fertilizing_count') required int fertilizingCount,
    @JsonKey(name: 'fertilizing_max_count') required int fertilizingMaxCount,
    @JsonKey(name: 'fertilizing_refill') required DateTime fertilizingRefill,
    @JsonKey(name: 'weeds_removed') required int weedsRemoved,
    @JsonKey(name: 'weeds_max_removed') required int weedsMaxRemoved,
    @JsonKey(name: 'weeds_refill') required DateTime weedsRefill,
  }) = _VirtualGardenModelUserActions;

  factory VirtualGardenModelUserActions.fromJson(Map<String, dynamic> json) =>
      _$VirtualGardenModelUserActionsFromJson(json);
}
