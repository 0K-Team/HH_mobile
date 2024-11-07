import 'package:eco_hero_mobile/features/products/data/models/product_model.dart';
import 'package:either_dart/either.dart';

abstract class ProductsRepository {

  Future<Either<List<ProductModel>, Exception>> fetchProducts(int page);
}