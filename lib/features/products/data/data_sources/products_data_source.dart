import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/products/data/models/product_model.dart';

class ProductsDataSource {
  final Dio _dio;

  ProductsDataSource(this._dio);

  Future<List<ProductModel>?> fetchProducts(int page) async {
    Response response = await _dio
        .get('https://ecohero.q1000q.me/api/v1/products?page=$page&limit=25');
    if (response.statusCode == 200) {
      List<dynamic> list = response.data['data'];
      return list.map((dynamic) => ProductModel.fromJson(dynamic)).toList();
    }

    return null;
  }
}
