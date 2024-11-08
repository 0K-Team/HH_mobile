// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventModelImpl _$$EventModelImplFromJson(Map<String, dynamic> json) =>
    _$EventModelImpl(
      id: json['_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      isOffline: json['isOffline'] as bool,
      location:
          EventModelLocation.fromJson(json['location'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      duration: json['duration'] as String,
      organizer: json['organizer'] as String,
      image: json['image'] as String,
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
      additionalInfo: EventModelAdditionalInfo.fromJson(
          json['additionalInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EventModelImplToJson(_$EventModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'isOffline': instance.isOffline,
      'location': instance.location,
      'date': instance.date.toIso8601String(),
      'duration': instance.duration,
      'organizer': instance.organizer,
      'image': instance.image,
      'members': instance.members,
      'additionalInfo': instance.additionalInfo,
    };

_$EventModelLocationImpl _$$EventModelLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$EventModelLocationImpl(
      address: json['address'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$EventModelLocationImplToJson(
        _$EventModelLocationImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$EventModelAdditionalInfoImpl _$$EventModelAdditionalInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$EventModelAdditionalInfoImpl(
      whatToBring: json['whatToBring'] as String?,
      eventRules: json['eventRules'] as String?,
    );

Map<String, dynamic> _$$EventModelAdditionalInfoImplToJson(
        _$EventModelAdditionalInfoImpl instance) =>
    <String, dynamic>{
      'whatToBring': instance.whatToBring,
      'eventRules': instance.eventRules,
    };
