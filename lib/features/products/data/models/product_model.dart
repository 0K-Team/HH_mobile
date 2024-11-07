import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';

part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    required ProductModelCarbonFootprint carbonFootprint,
    @JsonKey(name: '_id') required String id,
    required String name,
    required String brand,
    required String category,
    required String currency,
    required String description,
    required String durability,
    required String ecoCertification,
    required bool ecoFriendly,
    required String imageUrl,
    required double price,
    required String productUrl,
    required String recyclingInfo,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class ProductModelCarbonFootprint with _$ProductModelCarbonFootprint {
  factory ProductModelCarbonFootprint({
    required String co2Emission,
    required String unit,
  }) = _ProductModelCarbonFootprint;

  factory ProductModelCarbonFootprint.fromJson(Map<String, dynamic> json) =>
      _$ProductModelCarbonFootprintFromJson(json);
}
