part of 'quizzes_bloc.dart';

sealed class QuizzesState extends Equatable {
  const QuizzesState();

  @override
  List<Object> get props => [];
}

final class QuizzesInitial extends QuizzesState {}

final class QuizzesLoadSuccess extends QuizzesState {
  final List<QuizTopicModel> topics;
  final List<QuizModel> quizzes;

  const QuizzesLoadSuccess(this.topics, this.quizzes);

  @override
  List<Object> get props => [
        topics,
        quizzes,
      ];
}

final class QuizzesLoadError extends QuizzesState {
  final Exception exception;

  const QuizzesLoadError(this.exception);

  @override
  List<Object> get props => [exception];
}