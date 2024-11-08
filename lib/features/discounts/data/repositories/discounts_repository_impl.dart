import 'package:eco_hero_mobile/features/discounts/data/data_sources/discounts_data_source.dart';
import 'package:eco_hero_mobile/features/discounts/data/models/discount_model.dart';
import 'package:eco_hero_mobile/features/discounts/domain/repositories/discounts_repository.dart';
import 'package:either_dart/either.dart';

class DiscountsRepositoryImpl extends DiscountsRepository {
  final DiscountsDataSource _source;

  DiscountsRepositoryImpl(this._source);


  @override
  Future<Either<List<DiscountModel>, Exception>> fetchDiscounts() async {
    List<DiscountModel>? discounts = await _source.fetchDiscounts();
    if (discounts == null) {
      return Right(Exception('Error fetching discounts'));
    }

    return Left(discounts);
  }

}