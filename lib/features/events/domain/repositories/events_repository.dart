import 'package:eco_hero_mobile/features/events/data/models/event_model.dart';
import 'package:either_dart/either.dart';

abstract class EventsRepository {

  Future<Either<EventModel, Exception>> createEvent(EventModel event);

  Future<Either<List<EventModel>, Exception>> fetchEvents();

  Future<Either<EventModel, Exception>> joinEvent(EventModel event);

  Future<Either<EventModel, Exception>> quitEvent(EventModel event);
}