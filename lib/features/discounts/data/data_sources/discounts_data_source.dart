import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/discounts/data/models/discount_model.dart';

class DiscountsDataSource {
  final Dio _dio;

  DiscountsDataSource(this._dio);

  Future<List<DiscountModel>?> fetchDiscounts() async {
    Response response = await _dio
        .get('https://ecohero.q1000q.me/api/v1/products/discounts');
    if (response.statusCode == 200) {
      return (response.data as List<dynamic>)
          .map((item) => DiscountModel.fromJson(item))
          .toList();
    }

    return null;
  }
}