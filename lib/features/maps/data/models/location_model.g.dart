// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      id: (json['_id'] as num).toInt(),
      name: json['name'] as String,
      coordinates: LocationModelCoordinates.fromJson(
          json['coordinates'] as Map<String, dynamic>),
      address: json['address'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      image: json['image'] as String?,
      openingHours: LocationModelOpeningHours.fromJson(
          json['opening_hours'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'coordinates': instance.coordinates,
      'address': instance.address,
      'type': instance.type,
      'description': instance.description,
      'image': instance.image,
      'opening_hours': instance.openingHours,
    };

_$LocationModelCoordinatesImpl _$$LocationModelCoordinatesImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationModelCoordinatesImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$LocationModelCoordinatesImplToJson(
        _$LocationModelCoordinatesImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$LocationModelOpeningHoursImpl _$$LocationModelOpeningHoursImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationModelOpeningHoursImpl(
      monday: json['monday'] as String,
      tuesday: json['tuesday'] as String,
      wednesday: json['wednesday'] as String,
      thursday: json['thursday'] as String,
      friday: json['friday'] as String,
      saturday: json['saturday'] as String,
      sunday: json['sunday'] as String,
    );

Map<String, dynamic> _$$LocationModelOpeningHoursImplToJson(
        _$LocationModelOpeningHoursImpl instance) =>
    <String, dynamic>{
      'monday': instance.monday,
      'tuesday': instance.tuesday,
      'wednesday': instance.wednesday,
      'thursday': instance.thursday,
      'friday': instance.friday,
      'saturday': instance.saturday,
      'sunday': instance.sunday,
    };
