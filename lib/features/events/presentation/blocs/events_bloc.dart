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
    on<EventsAdded>(_onEventsAdded);
    on<EventsJoined>(_onEventsJoined);
    on<EventsQuited>(_onEventsQuited);
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

  FutureOr<void> _onEventsAdded(EventsAdded event, Emitter<EventsState> emit) {
    List<EventModel> events = [];
    if (state is EventsLoadSuccess) {
      events.addAll((state as EventsLoadSuccess).events);
    }

    events.addAll(event.events);

    final uniqueEvents = List.from(events)
        .fold<Map<String, EventModel>>({}, (map, event) {
          map[event.id] = event;
          return map;
        })
        .values
        .toList();

    emit(EventsLoadSuccess(uniqueEvents));
  }

  FutureOr<void> _onEventsJoined(
      EventsJoined event, Emitter<EventsState> emit) {
    _repository.joinEvent(event.event).fold((event) {
      add(EventsAdded([event]));
    }, (exception) {
      emit(EventsLoadError(exception));
    });
  }

  FutureOr<void> _onEventsQuited(
      EventsQuited event, Emitter<EventsState> emit) {
    _repository.quitEvent(event.event).fold((event) {
      add(EventsAdded([event]));
    }, (exception) {
      emit(EventsLoadError(exception));
    });
  }
}
