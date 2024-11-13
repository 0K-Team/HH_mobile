import 'package:eco_hero_mobile/features/quizzes/data/models/quiz_model.dart';
import 'package:eco_hero_mobile/features/quizzes/data/models/quiz_topic_model.dart';
import 'package:either_dart/either.dart';

abstract class QuizzesRepository {

  Future<Either<List<QuizTopicModel>, Exception>> fetchQuizTopics();

  Future<Either<QuizModel, Exception>> fetchQuiz(QuizTopicModel topic);

  Future<Either<int, Exception>> fetchCurrentQuiz();

  Future<bool> setCurrentQuiz(int currentQuiz);
}