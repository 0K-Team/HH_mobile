part of 'events_bloc.dart';

sealed class EventsEvent extends Equatable {
  const EventsEvent();

  @override
  List<Object?> get props => [];
}

final class EventsFetched extends EventsEvent {

}

final class EventsAdded extends EventsEvent {
  final List<EventModel> events;

  const EventsAdded(this.events);

  @override
  List<Object?> get props => [events];
}

final class EventsJoined extends EventsEvent {
  final EventModel event;

  const EventsJoined(this.event);

  @override
  List<Object?> get props => [event];
}

final class EventsQuited extends EventsEvent {
  final EventModel event;

  const EventsQuited(this.event);

  @override
  List<Object?> get props => [event];
}
