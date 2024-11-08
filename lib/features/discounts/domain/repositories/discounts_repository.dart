import 'package:eco_hero_mobile/features/discounts/data/models/discount_model.dart';
import 'package:either_dart/either.dart';

abstract class DiscountsRepository {

  Future<Either<List<DiscountModel>, Exception>> fetchDiscounts();

}