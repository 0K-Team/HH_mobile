part of 'current_quiz_bloc.dart';

sealed class CurrentQuizEvent extends Equatable {
  const CurrentQuizEvent();

  @override
  List<Object?> get props => [];
}

final class CurrentQuizFetched extends CurrentQuizEvent {}
