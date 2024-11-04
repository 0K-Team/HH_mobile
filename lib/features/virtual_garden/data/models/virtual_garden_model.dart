// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'virtual_garden_model.freezed.dart';
part 'virtual_garden_model.g.dart';

@unfreezed
class VirtualGardenModel with _$VirtualGardenModel {
  factory VirtualGardenModel({
    @JsonKey(name: '_id') required String id,
    required String user,
    required List<VirtualGardenModelPlant> plants,
    required VirtualGardenModelUserActions userActions,
  }) = _VirtualGardenModel;

  factory VirtualGardenModel.fromJson(Map<String, dynamic> json) =>
      _$VirtualGardenModelFromJson(json);
}

@unfreezed
class VirtualGardenModelPlant with _$VirtualGardenModelPlant {
  factory VirtualGardenModelPlant({
    @JsonKey(name: '_id') required String plantId,
    required String name,
    required String type,
    required int growthStage,
    required int wateringNeeded,
    required int fertilizerNeeded,
    required int weedsRemovedNeeded,
    required DateTime planted,
    required bool harvestable,
    @JsonKey(name: 'last_watered') DateTime? lastWatered,
    @JsonKey(name: 'last_fertilized') DateTime? lastFertilized,
  }) = _VirtualGardenModelPlant;

  factory VirtualGardenModelPlant.fromJson(Map<String, dynamic> json) =>
      _$VirtualGardenModelPlantFromJson(json);
}

@unfreezed
class VirtualGardenModelUserActions with _$VirtualGardenModelUserActions {
  factory VirtualGardenModelUserActions({
    required int wateringCount,
    int? wateringMaxCount,
    DateTime? wateringRefill,
    required int fertilizingCount,
    int? fertilizingMaxCount,
    DateTime? fertilizingRefill,
    required int weedsRemoved,
    int? weedsMaxRemoved,
    DateTime? weedsRefill,
  }) = _VirtualGardenModelUserActions;

  factory VirtualGardenModelUserActions.fromJson(Map<String, dynamic> json) =>
      _$VirtualGardenModelUserActionsFromJson(json);
}
