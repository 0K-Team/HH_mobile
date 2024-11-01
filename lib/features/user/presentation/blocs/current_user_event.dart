part of 'current_user_bloc.dart';

sealed class CurrentUserEvent extends Equatable {
  const CurrentUserEvent();

  @override
  List<Object?> get props => [];
}

final class CurrentUserLoaded extends CurrentUserEvent {
  final UserModel user;
  final String jwt;

  const CurrentUserLoaded(this.user, this.jwt);

  @override
  List<Object?> get props => [
        user,
        jwt,
      ];
}

final class CurrentUserLoggedOut extends CurrentUserEvent {}
