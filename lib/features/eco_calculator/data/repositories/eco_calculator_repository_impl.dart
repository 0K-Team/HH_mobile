import 'package:eco_hero_mobile/features/eco_calculator/data/data_sources/eco_calculator_data_source.dart';
import 'package:eco_hero_mobile/features/eco_calculator/data/models/eco_calculator_model.dart';
import 'package:eco_hero_mobile/features/eco_calculator/data/models/eco_calculator_result_model.dart';
import 'package:eco_hero_mobile/features/eco_calculator/domain/repositories/eco_calculator_repository.dart';
import 'package:either_dart/either.dart';

class EcoCalculatorRepositoryImpl extends EcoCalculatorRepository {
  final EcoCalculatorDataSource _source;

  EcoCalculatorRepositoryImpl(this._source);

  @override
  Future<Either<EcoCalculatorResultModel, Exception>> fetchResult(EcoCalculatorModel calculator) async {
    EcoCalculatorResultModel? result = await _source.fetchResult(calculator);
    if (result == null) {
      return Right(Exception('Error fetching eco calculator result'));
    }

    return Left(result);
  }

}
