// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventModel _$EventModelFromJson(Map<String, dynamic> json) {
  return _EventModel.fromJson(json);
}

/// @nodoc
mixin _$EventModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  bool get isOffline => throw _privateConstructorUsedError;
  EventModelLocation get location => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get organizer => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<String> get members => throw _privateConstructorUsedError;
  EventModelAdditionalInfo get additionalInfo =>
      throw _privateConstructorUsedError;

  /// Serializes this EventModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventModelCopyWith<EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) then) =
      _$EventModelCopyWithImpl<$Res, EventModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String description,
      String category,
      bool isOffline,
      EventModelLocation location,
      DateTime date,
      String duration,
      String organizer,
      String image,
      List<String> members,
      EventModelAdditionalInfo additionalInfo});

  $EventModelLocationCopyWith<$Res> get location;
  $EventModelAdditionalInfoCopyWith<$Res> get additionalInfo;
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res, $Val extends EventModel>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? isOffline = null,
    Object? location = null,
    Object? date = null,
    Object? duration = null,
    Object? organizer = null,
    Object? image = null,
    Object? members = null,
    Object? additionalInfo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      isOffline: null == isOffline
          ? _value.isOffline
          : isOffline // ignore: cast_nullable_to_non_nullable
              as bool,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as EventModelLocation,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      organizer: null == organizer
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as EventModelAdditionalInfo,
    ) as $Val);
  }

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventModelLocationCopyWith<$Res> get location {
    return $EventModelLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventModelAdditionalInfoCopyWith<$Res> get additionalInfo {
    return $EventModelAdditionalInfoCopyWith<$Res>(_value.additionalInfo,
        (value) {
      return _then(_value.copyWith(additionalInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventModelImplCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory _$$EventModelImplCopyWith(
          _$EventModelImpl value, $Res Function(_$EventModelImpl) then) =
      __$$EventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String description,
      String category,
      bool isOffline,
      EventModelLocation location,
      DateTime date,
      String duration,
      String organizer,
      String image,
      List<String> members,
      EventModelAdditionalInfo additionalInfo});

  @override
  $EventModelLocationCopyWith<$Res> get location;
  @override
  $EventModelAdditionalInfoCopyWith<$Res> get additionalInfo;
}

/// @nodoc
class __$$EventModelImplCopyWithImpl<$Res>
    extends _$EventModelCopyWithImpl<$Res, _$EventModelImpl>
    implements _$$EventModelImplCopyWith<$Res> {
  __$$EventModelImplCopyWithImpl(
      _$EventModelImpl _value, $Res Function(_$EventModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? isOffline = null,
    Object? location = null,
    Object? date = null,
    Object? duration = null,
    Object? organizer = null,
    Object? image = null,
    Object? members = null,
    Object? additionalInfo = null,
  }) {
    return _then(_$EventModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      isOffline: null == isOffline
          ? _value.isOffline
          : isOffline // ignore: cast_nullable_to_non_nullable
              as bool,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as EventModelLocation,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      organizer: null == organizer
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as EventModelAdditionalInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventModelImpl implements _EventModel {
  _$EventModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.description,
      required this.category,
      required this.isOffline,
      required this.location,
      required this.date,
      required this.duration,
      required this.organizer,
      required this.image,
      required final List<String> members,
      required this.additionalInfo})
      : _members = members;

  factory _$EventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String category;
  @override
  final bool isOffline;
  @override
  final EventModelLocation location;
  @override
  final DateTime date;
  @override
  final String duration;
  @override
  final String organizer;
  @override
  final String image;
  final List<String> _members;
  @override
  List<String> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final EventModelAdditionalInfo additionalInfo;

  @override
  String toString() {
    return 'EventModel(id: $id, title: $title, description: $description, category: $category, isOffline: $isOffline, location: $location, date: $date, duration: $duration, organizer: $organizer, image: $image, members: $members, additionalInfo: $additionalInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.isOffline, isOffline) ||
                other.isOffline == isOffline) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.organizer, organizer) ||
                other.organizer == organizer) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      category,
      isOffline,
      location,
      date,
      duration,
      organizer,
      image,
      const DeepCollectionEquality().hash(_members),
      additionalInfo);

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      __$$EventModelImplCopyWithImpl<_$EventModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventModelImplToJson(
      this,
    );
  }
}

abstract class _EventModel implements EventModel {
  factory _EventModel(
          {@JsonKey(name: '_id') required final String id,
          required final String title,
          required final String description,
          required final String category,
          required final bool isOffline,
          required final EventModelLocation location,
          required final DateTime date,
          required final String duration,
          required final String organizer,
          required final String image,
          required final List<String> members,
          required final EventModelAdditionalInfo additionalInfo}) =
      _$EventModelImpl;

  factory _EventModel.fromJson(Map<String, dynamic> json) =
      _$EventModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get category;
  @override
  bool get isOffline;
  @override
  EventModelLocation get location;
  @override
  DateTime get date;
  @override
  String get duration;
  @override
  String get organizer;
  @override
  String get image;
  @override
  List<String> get members;
  @override
  EventModelAdditionalInfo get additionalInfo;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventModelLocation _$EventModelLocationFromJson(Map<String, dynamic> json) {
  return _EventModelLocation.fromJson(json);
}

/// @nodoc
mixin _$EventModelLocation {
  String get address => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  /// Serializes this EventModelLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventModelLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventModelLocationCopyWith<EventModelLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelLocationCopyWith<$Res> {
  factory $EventModelLocationCopyWith(
          EventModelLocation value, $Res Function(EventModelLocation) then) =
      _$EventModelLocationCopyWithImpl<$Res, EventModelLocation>;
  @useResult
  $Res call({String address, double latitude, double longitude});
}

/// @nodoc
class _$EventModelLocationCopyWithImpl<$Res, $Val extends EventModelLocation>
    implements $EventModelLocationCopyWith<$Res> {
  _$EventModelLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventModelLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventModelLocationImplCopyWith<$Res>
    implements $EventModelLocationCopyWith<$Res> {
  factory _$$EventModelLocationImplCopyWith(_$EventModelLocationImpl value,
          $Res Function(_$EventModelLocationImpl) then) =
      __$$EventModelLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, double latitude, double longitude});
}

/// @nodoc
class __$$EventModelLocationImplCopyWithImpl<$Res>
    extends _$EventModelLocationCopyWithImpl<$Res, _$EventModelLocationImpl>
    implements _$$EventModelLocationImplCopyWith<$Res> {
  __$$EventModelLocationImplCopyWithImpl(_$EventModelLocationImpl _value,
      $Res Function(_$EventModelLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventModelLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$EventModelLocationImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventModelLocationImpl implements _EventModelLocation {
  _$EventModelLocationImpl(
      {required this.address, required this.latitude, required this.longitude});

  factory _$EventModelLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventModelLocationImplFromJson(json);

  @override
  final String address;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'EventModelLocation(address: $address, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModelLocationImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address, latitude, longitude);

  /// Create a copy of EventModelLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventModelLocationImplCopyWith<_$EventModelLocationImpl> get copyWith =>
      __$$EventModelLocationImplCopyWithImpl<_$EventModelLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventModelLocationImplToJson(
      this,
    );
  }
}

abstract class _EventModelLocation implements EventModelLocation {
  factory _EventModelLocation(
      {required final String address,
      required final double latitude,
      required final double longitude}) = _$EventModelLocationImpl;

  factory _EventModelLocation.fromJson(Map<String, dynamic> json) =
      _$EventModelLocationImpl.fromJson;

  @override
  String get address;
  @override
  double get latitude;
  @override
  double get longitude;

  /// Create a copy of EventModelLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventModelLocationImplCopyWith<_$EventModelLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventModelAdditionalInfo _$EventModelAdditionalInfoFromJson(
    Map<String, dynamic> json) {
  return _EventModelAdditionalInfo.fromJson(json);
}

/// @nodoc
mixin _$EventModelAdditionalInfo {
  String? get whatToBring => throw _privateConstructorUsedError;
  String? get eventRules => throw _privateConstructorUsedError;

  /// Serializes this EventModelAdditionalInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventModelAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventModelAdditionalInfoCopyWith<EventModelAdditionalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelAdditionalInfoCopyWith<$Res> {
  factory $EventModelAdditionalInfoCopyWith(EventModelAdditionalInfo value,
          $Res Function(EventModelAdditionalInfo) then) =
      _$EventModelAdditionalInfoCopyWithImpl<$Res, EventModelAdditionalInfo>;
  @useResult
  $Res call({String? whatToBring, String? eventRules});
}

/// @nodoc
class _$EventModelAdditionalInfoCopyWithImpl<$Res,
        $Val extends EventModelAdditionalInfo>
    implements $EventModelAdditionalInfoCopyWith<$Res> {
  _$EventModelAdditionalInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventModelAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whatToBring = freezed,
    Object? eventRules = freezed,
  }) {
    return _then(_value.copyWith(
      whatToBring: freezed == whatToBring
          ? _value.whatToBring
          : whatToBring // ignore: cast_nullable_to_non_nullable
              as String?,
      eventRules: freezed == eventRules
          ? _value.eventRules
          : eventRules // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventModelAdditionalInfoImplCopyWith<$Res>
    implements $EventModelAdditionalInfoCopyWith<$Res> {
  factory _$$EventModelAdditionalInfoImplCopyWith(
          _$EventModelAdditionalInfoImpl value,
          $Res Function(_$EventModelAdditionalInfoImpl) then) =
      __$$EventModelAdditionalInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? whatToBring, String? eventRules});
}

/// @nodoc
class __$$EventModelAdditionalInfoImplCopyWithImpl<$Res>
    extends _$EventModelAdditionalInfoCopyWithImpl<$Res,
        _$EventModelAdditionalInfoImpl>
    implements _$$EventModelAdditionalInfoImplCopyWith<$Res> {
  __$$EventModelAdditionalInfoImplCopyWithImpl(
      _$EventModelAdditionalInfoImpl _value,
      $Res Function(_$EventModelAdditionalInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventModelAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whatToBring = freezed,
    Object? eventRules = freezed,
  }) {
    return _then(_$EventModelAdditionalInfoImpl(
      whatToBring: freezed == whatToBring
          ? _value.whatToBring
          : whatToBring // ignore: cast_nullable_to_non_nullable
              as String?,
      eventRules: freezed == eventRules
          ? _value.eventRules
          : eventRules // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventModelAdditionalInfoImpl implements _EventModelAdditionalInfo {
  _$EventModelAdditionalInfoImpl({this.whatToBring, this.eventRules});

  factory _$EventModelAdditionalInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventModelAdditionalInfoImplFromJson(json);

  @override
  final String? whatToBring;
  @override
  final String? eventRules;

  @override
  String toString() {
    return 'EventModelAdditionalInfo(whatToBring: $whatToBring, eventRules: $eventRules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModelAdditionalInfoImpl &&
            (identical(other.whatToBring, whatToBring) ||
                other.whatToBring == whatToBring) &&
            (identical(other.eventRules, eventRules) ||
                other.eventRules == eventRules));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, whatToBring, eventRules);

  /// Create a copy of EventModelAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventModelAdditionalInfoImplCopyWith<_$EventModelAdditionalInfoImpl>
      get copyWith => __$$EventModelAdditionalInfoImplCopyWithImpl<
          _$EventModelAdditionalInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventModelAdditionalInfoImplToJson(
      this,
    );
  }
}

abstract class _EventModelAdditionalInfo implements EventModelAdditionalInfo {
  factory _EventModelAdditionalInfo(
      {final String? whatToBring,
      final String? eventRules}) = _$EventModelAdditionalInfoImpl;

  factory _EventModelAdditionalInfo.fromJson(Map<String, dynamic> json) =
      _$EventModelAdditionalInfoImpl.fromJson;

  @override
  String? get whatToBring;
  @override
  String? get eventRules;

  /// Create a copy of EventModelAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventModelAdditionalInfoImplCopyWith<_$EventModelAdditionalInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
