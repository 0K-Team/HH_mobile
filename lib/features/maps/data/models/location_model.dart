import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@unfreezed
class LocationModel with _$LocationModel {
  LocationModel._();

  factory LocationModel({
    required String name,
    required LocationModelCoordinates coordinates,
    required String address,
    required String type,
    required String description,
    String? image,
    @JsonKey(name: 'opening_hours')
    required LocationModelOpeningHours openingHours,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Color get color {
    return switch (type) {
      'park' => Colors.lightGreen,
      'ogrod-botaniczny' => Colors.green,
      'rezerwat-przyrody' => Colors.greenAccent,
      'teren-rekreacyjny' => Colors.blue,
      'skwer' => Colors.green[200]!,
      'laka-miejska' => Colors.yellowAccent,
      'obszar-ochrony-krajobrazu' => Colors.teal,
      'miejsce-zrownowazonego-rozwoju' => Colors.orange,
      'zielona-przestrzen-publiczna' => Colors.lightBlue,
      'centrum-edukacji-ekologicznej' => Colors.deepOrange,
      'sciezka-edukacyjna' => Colors.brown,
      'zielony-dach' => Colors.green[400]!,
      'tereny-chronione' => Colors.lightGreenAccent,
      'ogrod-spoleczny' => Colors.purple,
      'rekreacyjny-obszar-wodny' => Colors.cyan,
      String() => Colors.black,
    };
  }

}

@unfreezed
class LocationModelCoordinates with _$LocationModelCoordinates {
  LocationModelCoordinates._();

  factory LocationModelCoordinates({
    required double latitude,
    required double longitude,
  }) = _LocationModelCoordinates;

  factory LocationModelCoordinates.fromJson(Map<String, dynamic> json) =>
      _$LocationModelCoordinatesFromJson(json);

  LatLng get location => LatLng(latitude, longitude);
}

@unfreezed
class LocationModelOpeningHours with _$LocationModelOpeningHours {
  factory LocationModelOpeningHours({
    required String monday,
    required String tuesday,
    required String wednesday,
    required String thursday,
    required String friday,
    required String saturday,
    required String sunday,
  }) = _LocationModelOpeningHours;

  factory LocationModelOpeningHours.fromJson(Map<String, dynamic> json) =>
      _$LocationModelOpeningHoursFromJson(json);
}
