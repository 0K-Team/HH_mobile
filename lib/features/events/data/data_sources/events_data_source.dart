import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/events/data/models/event_model.dart';

class EventsDataSource {
  final Dio _dio;

  EventsDataSource(this._dio);

  Future<List<EventModel>?> fetchEvents() async {
    Response response = await _dio.get('https://ecohero.q1000q.me/api/v1/events');
    if (response.statusCode == 200) {
      List<dynamic> list = response.data;
      return list.map((dynamic) => EventModel.fromJson(dynamic)).toList();
    }
    
    return null;
  }

  Future<EventModel?> joinEvent(EventModel event) async {
    Response response = await _dio.post('https://ecohero.q1000q.me/api/v1/events/${event.id}/members/me');
    if (response.statusCode == 200) {
      return EventModel.fromJson(response.data);
    }

    return null;
  }

  Future<EventModel?> quitEvent(EventModel event) async {
    Response response = await _dio.delete('https://ecohero.q1000q.me/api/v1/events/${event.id}/members/me');
    if (response.statusCode == 200) {
      return EventModel.fromJson(response.data);
    }

    return null;
  }
}
