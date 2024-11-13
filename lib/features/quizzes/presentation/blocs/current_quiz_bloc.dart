import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eco_hero_mobile/features/quizzes/data/repositories/quizzes_repository_impl.dart';
import 'package:equatable/equatable.dart';

part 'current_quiz_event.dart';
part 'current_quiz_state.dart';

class CurrentQuizBloc extends Bloc<CurrentQuizEvent, CurrentQuizState> {
  final QuizzesRepositoryImpl _repository;

  CurrentQuizBloc(this._repository) : super(CurrentQuizInitial()) {
    on<CurrentQuizFetched>(_onCurrentQuizFetched);
  }

  Future<void> _onCurrentQuizFetched(
      CurrentQuizFetched event, Emitter<CurrentQuizState> emit) async {
    (await _repository.fetchCurrentQuiz()).fold((quiz) {
      emit(CurrentQuizLoadSuccess(quiz));
    }, (exception) {
      emit(CurrentQuizLoadError(exception));
    });
  }
}
