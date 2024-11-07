part of 'events_bloc.dart';

sealed class EventsState extends Equatable {
  const EventsState();

  @override
  List<Object> get props => [];
}

final class EventsInitial extends EventsState {}

final class EventsLoadSuccess extends EventsState {
  final List<EventModel> events;

  const EventsLoadSuccess(this.events);

  @override
  List<Object> get props => [events];
}

final class EventsLoadError extends EventsState {
  final Exception exception;

  const EventsLoadError(this.exception);

  @override
  List<Object> get props => [exception];
}
