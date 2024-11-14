import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_model.freezed.dart';
part 'plant_model.g.dart';

@unfreezed
class PlantModel with _$PlantModel {
  factory PlantModel({
    required String name,
    required String type,
    required String description,
    required int price,
  }) = _PlantModel;

  factory PlantModel.fromJson(Map<String, dynamic> json) =>
      _$PlantModelFromJson(json);
}
