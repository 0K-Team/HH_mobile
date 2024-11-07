import 'package:eco_hero_mobile/features/products/data/data_sources/products_data_source.dart';
import 'package:eco_hero_mobile/features/products/data/models/product_model.dart';
import 'package:eco_hero_mobile/features/products/domain/repositories/products_repository.dart';
import 'package:either_dart/either.dart';

class ProductsRepositoryImpl extends ProductsRepository {
  final ProductsDataSource _source;

  ProductsRepositoryImpl(this._source);

  @override
  Future<Either<List<ProductModel>, Exception>> fetchProducts(int page) async {
    List<ProductModel>? products = await _source.fetchProducts(page);
    if (products == null) {
      return Right(Exception('Error fetching products'));
    }

    return Left(products);
  }

}