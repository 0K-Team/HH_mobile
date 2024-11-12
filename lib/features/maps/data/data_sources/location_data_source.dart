import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/maps/data/models/location_model.dart';

class LocationDataSource {
  final Dio _dio;

  LocationDataSource(this._dio);

  Future<List<LocationModel>?> fetchLocations() async {
    // _dio fixme implement

    return [
      LocationModel(
        id: 1,
        name: 'Park Centralny',
        coordinates: LocationModelCoordinates(
          latitude: 50.062333,
          longitude: 19.91725,
        ),
        address: 'ul. Zielona 10, Kraków',
        type: 'park',
        description:
            'Duży park miejski z miejscami do wypoczynku, trasami rowerowymi i stawem ekologicznym.',
        openingHours: LocationModelOpeningHours(
          monday: '8:00-20:00',
          tuesday: '8:00-20:00',
          wednesday: '8:00-20:00',
          thursday: '8:00-20:00',
          friday: '8:00-20:00',
          saturday: '8:00-20:00',
          sunday: '8:00-20:00',
        ),
      ),
      LocationModel(
        id: 2,
        name: 'Park Łazienki Królewskie',
        coordinates: LocationModelCoordinates(
          latitude: 52.210648,
          longitude: 21.034915,
        ),
        address: 'ul. Agrykola 1, Warszawa',
        type: 'park',
        description:
            'Znany warszawski park z Pałacem na Wyspie, ogrodami, pomnikami i wieloma ścieżkami spacerowymi.',
        openingHours: LocationModelOpeningHours(
          monday: '6:00-22:00',
          tuesday: '6:00-22:00',
          wednesday: '6:00-22:00',
          thursday: '6:00-22:00',
          friday: '6:00-22:00',
          saturday: '6:00-22:00',
          sunday: '6:00-22:00',
        ),
      ),
      LocationModel(
        id: 3,
        name: 'Ogród Botaniczny Uniwersytetu Warszawskiego',
        coordinates: LocationModelCoordinates(
          latitude: 52.212735,
          longitude: 21.028679,
        ),
        address: 'ul. Okólnik 18, Warszawa',
        type: 'ogrod-botaniczny',
        description:
            'Jeden z najstarszych ogrodów botanicznych w Polsce, pełen roślin egzotycznych i krajowych.',
        openingHours: LocationModelOpeningHours(
          monday: '9:00-18:00',
          tuesday: '9:00-18:00',
          wednesday: '9:00-18:00',
          thursday: '9:00-18:00',
          friday: '9:00-18:00',
          saturday: '9:00-18:00',
          sunday: '9:00-18:00',
        ),
      ),
      LocationModel(
        id: 4,
        name: 'Park Skaryszewski',
        coordinates: LocationModelCoordinates(
          latitude: 52.222505,
          longitude: 21.074747,
        ),
        address: 'ul. Barniewicka 9, Warszawa',
        type: 'park',
        description:
            'Rozległy park z jeziorem, ścieżkami spacerowymi, miejscami do relaksu i boiskami sportowymi.',
        openingHours: LocationModelOpeningHours(
          monday: '6:00-22:00',
          tuesday: '6:00-22:00',
          wednesday: '6:00-22:00',
          thursday: '6:00-22:00',
          friday: '6:00-22:00',
          saturday: '6:00-22:00',
          sunday: '6:00-22:00',
        ),
      ),
      LocationModel(
        id: 5,
        name: 'Park Południowy',
        coordinates: LocationModelCoordinates(
          latitude: 51.073825,
          longitude: 17.012155,
        ),
        address: 'ul. Powstańców Śląskich, Wrocław',
        type: 'park',
        description:
            'Park z dużym jeziorem, trasami rowerowymi, placem zabaw i licznymi ścieżkami spacerowymi.',
        openingHours: LocationModelOpeningHours(
          monday: '7:00-22:00',
          tuesday: '7:00-22:00',
          wednesday: '7:00-22:00',
          thursday: '7:00-22:00',
          friday: '7:00-22:00',
          saturday: '7:00-22:00',
          sunday: '7:00-22:00',
        ),
      ),
      LocationModel(
        id: 6,
        name: 'Ogród Zoologiczny w Poznaniu',
        coordinates: LocationModelCoordinates(
          latitude: 52.4394,
          longitude: 16.9076,
        ),
        address: 'ul. Zwierzyniecka 19, Poznań',
        type: 'ogrod-botaniczny',
        description:
            'Jeden z najstarszych ogrodów zoologicznych w Polsce z szeroką kolekcją zwierząt.',
        openingHours: LocationModelOpeningHours(
          monday: '9:00-18:00',
          tuesday: '9:00-18:00',
          wednesday: '9:00-18:00',
          thursday: '9:00-18:00',
          friday: '9:00-18:00',
          saturday: '9:00-18:00',
          sunday: '9:00-18:00',
        ),
      ),
      LocationModel(
        id: 7,
        name: 'Krakowski Rynek Główny',
        coordinates: LocationModelCoordinates(
          latitude: 50.061947,
          longitude: 19.938827,
        ),
        address: 'Rynek Główny, Kraków',
        image: 'https://www.zabytkikrakowa.com.pl/wp-content/uploads/Rynek-Glowny-2.jpg',
        type: 'centrum-edukacji-ekologicznej',
        description:
            'Historyczny rynek w centrum Krakowa z licznymi restauracjami, sklepami i zabytkami.',
        openingHours: LocationModelOpeningHours(
          monday: 'całodobowo',
          tuesday: 'całodobowo',
          wednesday: 'całodobowo',
          thursday: 'całodobowo',
          friday: 'całodobowo',
          saturday: 'całodobowo',
          sunday: 'całodobowo',
        ),
      ),
    ];
  }
}
