// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      carbonFootprint: ProductModelCarbonFootprint.fromJson(
          json['carbonFootprint'] as Map<String, dynamic>),
      id: json['_id'] as String,
      name: json['name'] as String,
      brand: json['brand'] as String,
      category: json['category'] as String,
      currency: json['currency'] as String,
      description: json['description'] as String,
      durability: json['durability'] as String,
      ecoCertification: json['ecoCertification'] as String,
      ecoFriendly: json['ecoFriendly'] as bool,
      imageUrl: json['imageUrl'] as String,
      price: (json['price'] as num).toDouble(),
      productUrl: json['productUrl'] as String,
      recyclingInfo: json['recyclingInfo'] as String,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'carbonFootprint': instance.carbonFootprint,
      '_id': instance.id,
      'name': instance.name,
      'brand': instance.brand,
      'category': instance.category,
      'currency': instance.currency,
      'description': instance.description,
      'durability': instance.durability,
      'ecoCertification': instance.ecoCertification,
      'ecoFriendly': instance.ecoFriendly,
      'imageUrl': instance.imageUrl,
      'price': instance.price,
      'productUrl': instance.productUrl,
      'recyclingInfo': instance.recyclingInfo,
    };

_$ProductModelCarbonFootprintImpl _$$ProductModelCarbonFootprintImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductModelCarbonFootprintImpl(
      co2Emission: json['co2Emission'] as String,
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$ProductModelCarbonFootprintImplToJson(
        _$ProductModelCarbonFootprintImpl instance) =>
    <String, dynamic>{
      'co2Emission': instance.co2Emission,
      'unit': instance.unit,
    };
