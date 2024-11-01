part of 'current_user_bloc.dart';

sealed class CurrentUserState extends Equatable {
  const CurrentUserState();

  @override
  List<Object> get props => [];
}

final class CurrentUserInitial extends CurrentUserState {}

final class CurrentUserLoadSuccess extends CurrentUserState {
  final UserModel user;
  final String jwt;

  const CurrentUserLoadSuccess(this.user, this.jwt);

  @override
  List<Object> get props => [
        user,
        jwt,
      ];
}

final class CurrentUserLoadError extends CurrentUserState {
  final Exception exception;

  const CurrentUserLoadError(this.exception);

  @override
  List<Object> get props => [exception];
}
