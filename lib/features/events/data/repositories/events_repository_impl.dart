import 'package:eco_hero_mobile/features/events/data/data_sources/events_data_source.dart';
import 'package:eco_hero_mobile/features/events/data/models/event_model.dart';
import 'package:eco_hero_mobile/features/events/domain/repositories/events_repository.dart';
import 'package:either_dart/either.dart';

class EventsRepositoryImpl extends EventsRepository {
  final EventsDataSource _source;

  EventsRepositoryImpl(this._source);

  @override
  Future<Either<EventModel, Exception>> createEvent(EventModel event) {
    // TODO: implement createEvent
    throw UnimplementedError();
  }

  @override
  Future<Either<List<EventModel>, Exception>> fetchEvents() async {
    List<EventModel>? events = await _source.fetchEvents();
    if (events == null) {
      return Right(Exception('Error fetching events'));
    }

    return Left(events);
  }

  @override
  Future<Either<EventModel, Exception>> joinEvent(EventModel event) async {
    EventModel? eventResult = await _source.joinEvent(event);
    if (eventResult == null) {
      return Right(Exception('Error joining event'));
    }

    return Left(eventResult);
  }

  @override
  Future<Either<EventModel, Exception>> quitEvent(EventModel event) async {
    EventModel? eventResult = await _source.quitEvent(event);
    if (eventResult == null) {
      return Right(Exception('Error quiting event'));
    }

    return Left(eventResult);
  }
}