import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_model.freezed.dart';

part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  factory EventModel({
    @JsonKey(name: '_id') required String id,
    required String title,
    required String description,
    required String category,
    @JsonKey(name: 'is_offline') required bool isOffline,
    required EventModelLocation location,
    required DateTime date,
    required String duration,
    required String organizer,
    required String image,
    @JsonKey(name: 'additional_info')
    required EventModelAdditionalInfo additionalInfo,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);
}

@freezed
class EventModelLocation with _$EventModelLocation {
  factory EventModelLocation({
    required String address,
    required double latitude,
    required double longitude,
  }) = _EventModelLocation;

  factory EventModelLocation.fromJson(Map<String, dynamic> json) =>
      _$EventModelLocationFromJson(json);
}

@freezed
class EventModelAdditionalInfo with _$EventModelAdditionalInfo {
  factory EventModelAdditionalInfo({
    @JsonKey(name: 'what_to_bring') String? whatToBring,
    @JsonKey(name: 'event_rules') String? eventRules,
  }) = _EventModelAdditionalInfo;

  factory EventModelAdditionalInfo.fromJson(Map<String, dynamic> json) =>
      _$EventModelAdditionalInfoFromJson(json);
}
