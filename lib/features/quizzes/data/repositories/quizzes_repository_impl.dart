import 'package:eco_hero_mobile/features/quizzes/data/data_sources/quizzes_data_source.dart';
import 'package:eco_hero_mobile/features/quizzes/data/models/quiz_model.dart';
import 'package:eco_hero_mobile/features/quizzes/data/models/quiz_topic_model.dart';
import 'package:eco_hero_mobile/features/quizzes/domain/repositories/quizzes_repository.dart';
import 'package:either_dart/either.dart';

class QuizzesRepositoryImpl extends QuizzesRepository {
  final QuizzesDataSource _source;

  QuizzesRepositoryImpl(this._source);

  @override
  Future<Either<QuizModel, Exception>> fetchQuiz(QuizTopicModel topic) async {
    QuizModel? quiz = await _source.fetchQuiz(topic);
    if (quiz == null) {
      return Right(Exception('Error fetching quiz'));
    }

    return Left(quiz);
  }

  @override
  Future<Either<List<QuizTopicModel>, Exception>> fetchQuizTopics() async {
    List<QuizTopicModel>? topics = await _source.fetchQuizTopics();
    if (topics == null) {
      return Right(Exception('Error fetching topics'));
    }

    return Left(topics);
  }

  @override
  Future<Either<int, Exception>> fetchCurrentQuiz() async {
    int? currentQuiz = await _source.fetchCurrentQuiz();
    if (currentQuiz == null) {
      return Right(Exception('Error fetching current quiz'));
    }

    return Left(currentQuiz);
  }
}
