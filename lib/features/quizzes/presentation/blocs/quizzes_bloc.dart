import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eco_hero_mobile/features/quizzes/data/models/quiz_model.dart';
import 'package:eco_hero_mobile/features/quizzes/data/models/quiz_topic_model.dart';
import 'package:eco_hero_mobile/features/quizzes/data/repositories/quizzes_repository_impl.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';

part 'quizzes_event.dart';
part 'quizzes_state.dart';

class QuizzesBloc extends Bloc<QuizzesEvent, QuizzesState> {
  final QuizzesRepositoryImpl _repository;

  QuizzesBloc(this._repository) : super(QuizzesInitial()) {
   on<QuizzesFetched>(_onQuizzesFetched);
  }

  FutureOr<void> _onQuizzesFetched(QuizzesFetched event, Emitter<QuizzesState> emit) async {
    Either<List<QuizTopicModel>, Exception> topicsEither = await _repository.fetchQuizTopics();
    if (topicsEither.isRight) {
      emit(QuizzesLoadError(topicsEither.right));
      return;
    }

    List<QuizModel> quizzes = [];

    List<QuizTopicModel> topics = topicsEither.left;
    for (QuizTopicModel topic in topics) {
      Either<QuizModel, Exception> quizEither = await _repository.fetchQuiz(topic);
      if (quizEither.isRight) {
        emit(QuizzesLoadError(quizEither.right));
        return;
      }

      quizzes.add(quizEither.left);
    }

    emit(QuizzesLoadSuccess(topics, quizzes));
  }
}
