// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountModelImpl _$$DiscountModelImplFromJson(Map<String, dynamic> json) =>
    _$DiscountModelImpl(
      id: json['_id'] as String,
      discountCode: json['discountCode'] as String,
      description: json['description'] as String,
      validUntil: DateTime.parse(json['validUntil'] as String),
      partnerBrand: json['partnerBrand'] as String,
      productRestrictions: json['productRestrictions'] as String,
      termsAndConditions: json['termsAndConditions'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$DiscountModelImplToJson(_$DiscountModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'discountCode': instance.discountCode,
      'description': instance.description,
      'validUntil': instance.validUntil.toIso8601String(),
      'partnerBrand': instance.partnerBrand,
      'productRestrictions': instance.productRestrictions,
      'termsAndConditions': instance.termsAndConditions,
      'url': instance.url,
    };
