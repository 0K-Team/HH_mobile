part of 'current_user_bloc.dart';

sealed class CurrentUserState extends Equatable {
  const CurrentUserState();

  @override
  List<Object> get props => [];
}

final class CurrentUserInitial extends CurrentUserState {}

final class CurrentUserLoadSuccess extends CurrentUserState {
  final UserModel user;

  const CurrentUserLoadSuccess(this.user);

  @override
  List<Object> get props => [user];
}

final class CurrentUserLoadError extends CurrentUserState {
  final Exception exception;

  const CurrentUserLoadError(this.exception);

  @override
  List<Object> get props => [exception];
}
