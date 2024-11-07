import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/events/data/models/event_model.dart';

class EventsDataSource {
  final Dio _dio;

  EventsDataSource(this._dio);

  Future<List<EventModel>?> fetchEvents() async {

    return [
      EventModel(
        id: '',
        title: 'Sprzątanie miejskiej plaży',
        description: 'Dołącz do nas i pomóż w sprzątaniu miejskiej plaży! Wspólnie zadbajmy o naszą okolicę.',
        category: 'Akcja sprzątania',
        isOffline: false,
        location: EventModelLocation(
          address: 'address',
          latitude: 45.9,
          longitude: 46.7,
        ),
        date: DateTime.timestamp(),
        duration: '2h',
        organizer: 'organizer',
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl1cvI_MS8oxczCxgYZmc1eGlHKeJoi1ES2g&s',
        additionalInfo: EventModelAdditionalInfo(
          whatToBring: 'bring 2 tooth',
        ),
      )
    ];
  }
}
