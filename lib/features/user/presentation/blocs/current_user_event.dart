part of 'current_user_bloc.dart';

sealed class CurrentUserEvent extends Equatable {
  const CurrentUserEvent();

  @override
  List<Object?> get props => [];
}

final class CurrentUserLoaded extends CurrentUserEvent {
  final String email;

  const CurrentUserLoaded(this.email);

  @override
  List<Object?> get props => [email];
}

final class CurrentUserLoggedOut extends CurrentUserEvent {}
