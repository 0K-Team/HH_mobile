import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/quizzes/data/models/quiz_model.dart';
import 'package:eco_hero_mobile/features/quizzes/data/models/quiz_topic_model.dart';

class QuizzesDataSource {
  final Dio _dio;

  QuizzesDataSource(this._dio);

  Future<List<QuizTopicModel>?> fetchQuizTopics() async {
    Response response =
        await _dio.get('https://ecohero.q1000q.me/api/v1/quizzes');
    if (response.statusCode == 200) {
      List<dynamic> list = response.data;
      return list.map((dynamic) => QuizTopicModel.fromJson(dynamic)).toList();
    }

    return null;
  }

  Future<QuizModel?> fetchQuiz(QuizTopicModel topic) async {
    Response response =
        await _dio.get('https://ecohero.q1000q.me/api/v1/quizzes/${topic.id}');
    if (response.statusCode == 200) {
      return QuizModel.fromJson(response.data);
    }

    return null;
  }

  Future<int?> fetchCurrentQuiz() async {
    Response response =
        await _dio.get('https://ecohero.q1000q.me/api/v1/currentQuiz');
    if (response.statusCode == 200) {
      return response.data['currentQuestionId'];
    }

    return null;
  }

  Future<bool> setCurrentQuiz(int currentQuiz) async {
    Response response =
        await _dio.post('https://ecohero.q1000q.me/api/v1/currentQuiz', data: {
      "currentQuiz": {
        "_id": "string",
        "currentQuestionId": currentQuiz,
      }
    });
    if (response.statusCode == 200) {
      return true;
    }

    return false;
  }
}
