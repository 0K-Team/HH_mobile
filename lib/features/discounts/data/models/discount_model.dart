import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_model.freezed.dart';
part 'discount_model.g.dart';

@freezed
class DiscountModel with _$DiscountModel {
  factory DiscountModel({
    @JsonKey(name: '_id') required String id,
    required String discountCode,
    required String description,
    required DateTime validUntil,
    required String partnerBrand,
    required String productRestrictions,
    required String termsAndConditions,
    required String url,
  }) = _DiscountModel;

  factory DiscountModel.fromJson(Map<String, dynamic> json) =>
      _$DiscountModelFromJson(json);
}
