part of 'quizzes_bloc.dart';

sealed class QuizzesEvent extends Equatable {
  const QuizzesEvent();

  @override
  List<Object?> get props => [];
}

final class QuizzesFetched extends QuizzesEvent {

}
