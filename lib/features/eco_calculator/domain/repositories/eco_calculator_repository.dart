import 'package:eco_hero_mobile/features/eco_calculator/data/models/eco_calculator_model.dart';
import 'package:eco_hero_mobile/features/eco_calculator/data/models/eco_calculator_result_model.dart';
import 'package:either_dart/either.dart';

abstract class EcoCalculatorRepository {

  Future<Either<EcoCalculatorResultModel, Exception>> fetchResult(EcoCalculatorModel calculator);
}
