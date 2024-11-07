import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eco_hero_mobile/features/events/data/models/event_model.dart';
import 'package:eco_hero_mobile/features/events/data/repositories/events_repository_impl.dart';
import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';

part 'events_event.dart';
part 'events_state.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final EventsRepositoryImpl _repository;

  EventsBloc(this._repository) : super(EventsInitial()) {
    on<EventsFetched>(_onEventsFetch);
  }

  FutureOr<void> _onEventsFetch(
      EventsFetched event, Emitter<EventsState> emit) async {
    Either<List<EventModel>, Exception> either =
        await _repository.fetchEvents();
    if (either.isRight) {
      emit(EventsLoadError(either.right));
      return;
    }

    List<EventModel> events = either.left;
    emit(EventsLoadSuccess(events));
  }
}
