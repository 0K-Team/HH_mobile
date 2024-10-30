import 'package:bloc/bloc.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:eco_hero_mobile/features/user/data/repositories/user_repository_impl.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';

part 'current_user_event.dart';
part 'current_user_state.dart';

class CurrentUserBloc extends Bloc<CurrentUserEvent, CurrentUserState> {
  final UserRepositoryImpl _repository;

  CurrentUserBloc(this._repository) : super(CurrentUserInitial()) {
    on<CurrentUserLoaded>(_onCurrentUserLoaded);
    on<CurrentUserLoggedOut>(_onCurrentUserLoggedOut);
  }

  Future<void> _onCurrentUserLoaded(
      CurrentUserLoaded event, Emitter<CurrentUserState> emit) async {
    await _repository.fetchUser(event.email).fold((user) {
      emit(CurrentUserLoadSuccess(user));
    }, (exception) {
      emit(CurrentUserLoadError(exception));
    });
  }

  void _onCurrentUserLoggedOut(
      CurrentUserLoggedOut event, Emitter<CurrentUserState> emit) {
    emit(CurrentUserInitial());
  }
}
