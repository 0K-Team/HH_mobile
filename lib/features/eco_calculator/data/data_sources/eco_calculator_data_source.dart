import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/eco_calculator/data/models/eco_calculator_model.dart';
import 'package:eco_hero_mobile/features/eco_calculator/data/models/eco_calculator_result_model.dart';

class EcoCalculatorDataSource {
  final Dio _dio;

  EcoCalculatorDataSource(this._dio);

  Future<EcoCalculatorResultModel?> fetchResult(EcoCalculatorModel calculator) async {
    Response response = await _dio.post('https://ecohero.q1000q.me/api/v1/calc', data: calculator.toJson());
    if (response.statusCode == 200) {
      return EcoCalculatorResultModel.fromJson(response.data);
    }

    return null;
  }
}