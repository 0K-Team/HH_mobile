import 'package:bloc/bloc.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:equatable/equatable.dart';

part 'current_user_event.dart';

part 'current_user_state.dart';

class CurrentUserBloc extends Bloc<CurrentUserEvent, CurrentUserState> {

  CurrentUserBloc() : super(CurrentUserInitial()) {
    on<CurrentUserLoaded>(_onCurrentUserLoaded);
    on<CurrentUserLoggedOut>(_onCurrentUserLoggedOut);
  }

  Future<void> _onCurrentUserLoaded(
      CurrentUserLoaded event, Emitter<CurrentUserState> emit) async {
    emit(CurrentUserLoadSuccess(event.user, event.jwt));
  }

  void _onCurrentUserLoggedOut(
      CurrentUserLoggedOut event, Emitter<CurrentUserState> emit) {
    emit(CurrentUserInitial());
  }
}
