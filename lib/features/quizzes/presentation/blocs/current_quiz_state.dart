part of 'current_quiz_bloc.dart';

sealed class CurrentQuizState extends Equatable {
  const CurrentQuizState();

  @override
  List<Object> get props => [];
}

final class CurrentQuizInitial extends CurrentQuizState {}

final class CurrentQuizLoadSuccess extends CurrentQuizState {
  final int currentQuestion;

  const CurrentQuizLoadSuccess(this.currentQuestion);

  @override
  List<Object> get props => [currentQuestion];
}

final class CurrentQuizLoadError extends CurrentQuizState {
  final Exception exception;

  const CurrentQuizLoadError(this.exception);

  @override
  List<Object> get props => [exception];
}
