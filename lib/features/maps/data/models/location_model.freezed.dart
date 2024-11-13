// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  LocationModelCoordinates get coordinates =>
      throw _privateConstructorUsedError;
  set coordinates(LocationModelCoordinates value) =>
      throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  set address(String value) => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  set type(String value) => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  set description(String value) => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  set image(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'opening_hours')
  LocationModelOpeningHours get openingHours =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'opening_hours')
  set openingHours(LocationModelOpeningHours value) =>
      throw _privateConstructorUsedError;

  /// Serializes this LocationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call(
      {String name,
      LocationModelCoordinates coordinates,
      String address,
      String type,
      String description,
      String? image,
      @JsonKey(name: 'opening_hours') LocationModelOpeningHours openingHours});

  $LocationModelCoordinatesCopyWith<$Res> get coordinates;
  $LocationModelOpeningHoursCopyWith<$Res> get openingHours;
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? coordinates = null,
    Object? address = null,
    Object? type = null,
    Object? description = null,
    Object? image = freezed,
    Object? openingHours = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LocationModelCoordinates,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: null == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as LocationModelOpeningHours,
    ) as $Val);
  }

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCoordinatesCopyWith<$Res> get coordinates {
    return $LocationModelCoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelOpeningHoursCopyWith<$Res> get openingHours {
    return $LocationModelOpeningHoursCopyWith<$Res>(_value.openingHours,
        (value) {
      return _then(_value.copyWith(openingHours: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationModelImplCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$LocationModelImplCopyWith(
          _$LocationModelImpl value, $Res Function(_$LocationModelImpl) then) =
      __$$LocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      LocationModelCoordinates coordinates,
      String address,
      String type,
      String description,
      String? image,
      @JsonKey(name: 'opening_hours') LocationModelOpeningHours openingHours});

  @override
  $LocationModelCoordinatesCopyWith<$Res> get coordinates;
  @override
  $LocationModelOpeningHoursCopyWith<$Res> get openingHours;
}

/// @nodoc
class __$$LocationModelImplCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$LocationModelImpl>
    implements _$$LocationModelImplCopyWith<$Res> {
  __$$LocationModelImplCopyWithImpl(
      _$LocationModelImpl _value, $Res Function(_$LocationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? coordinates = null,
    Object? address = null,
    Object? type = null,
    Object? description = null,
    Object? image = freezed,
    Object? openingHours = null,
  }) {
    return _then(_$LocationModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LocationModelCoordinates,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHours: null == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as LocationModelOpeningHours,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationModelImpl extends _LocationModel {
  _$LocationModelImpl(
      {required this.name,
      required this.coordinates,
      required this.address,
      required this.type,
      required this.description,
      this.image,
      @JsonKey(name: 'opening_hours') required this.openingHours})
      : super._();

  factory _$LocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationModelImplFromJson(json);

  @override
  String name;
  @override
  LocationModelCoordinates coordinates;
  @override
  String address;
  @override
  String type;
  @override
  String description;
  @override
  String? image;
  @override
  @JsonKey(name: 'opening_hours')
  LocationModelOpeningHours openingHours;

  @override
  String toString() {
    return 'LocationModel(name: $name, coordinates: $coordinates, address: $address, type: $type, description: $description, image: $image, openingHours: $openingHours)';
  }

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      __$$LocationModelImplCopyWithImpl<_$LocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationModelImplToJson(
      this,
    );
  }
}

abstract class _LocationModel extends LocationModel {
  factory _LocationModel(
      {required String name,
      required LocationModelCoordinates coordinates,
      required String address,
      required String type,
      required String description,
      String? image,
      @JsonKey(name: 'opening_hours')
      required LocationModelOpeningHours openingHours}) = _$LocationModelImpl;
  _LocationModel._() : super._();

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$LocationModelImpl.fromJson;

  @override
  String get name;
  set name(String value);
  @override
  LocationModelCoordinates get coordinates;
  set coordinates(LocationModelCoordinates value);
  @override
  String get address;
  set address(String value);
  @override
  String get type;
  set type(String value);
  @override
  String get description;
  set description(String value);
  @override
  String? get image;
  set image(String? value);
  @override
  @JsonKey(name: 'opening_hours')
  LocationModelOpeningHours get openingHours;
  @JsonKey(name: 'opening_hours')
  set openingHours(LocationModelOpeningHours value);

  /// Create a copy of LocationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationModelCoordinates _$LocationModelCoordinatesFromJson(
    Map<String, dynamic> json) {
  return _LocationModelCoordinates.fromJson(json);
}

/// @nodoc
mixin _$LocationModelCoordinates {
  double get latitude => throw _privateConstructorUsedError;
  set latitude(double value) => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  set longitude(double value) => throw _privateConstructorUsedError;

  /// Serializes this LocationModelCoordinates to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationModelCoordinates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationModelCoordinatesCopyWith<LocationModelCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCoordinatesCopyWith<$Res> {
  factory $LocationModelCoordinatesCopyWith(LocationModelCoordinates value,
          $Res Function(LocationModelCoordinates) then) =
      _$LocationModelCoordinatesCopyWithImpl<$Res, LocationModelCoordinates>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$LocationModelCoordinatesCopyWithImpl<$Res,
        $Val extends LocationModelCoordinates>
    implements $LocationModelCoordinatesCopyWith<$Res> {
  _$LocationModelCoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationModelCoordinates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$LocationModelCoordinatesImplCopyWith<$Res>
    implements $LocationModelCoordinatesCopyWith<$Res> {
  factory _$$LocationModelCoordinatesImplCopyWith(
          _$LocationModelCoordinatesImpl value,
          $Res Function(_$LocationModelCoordinatesImpl) then) =
      __$$LocationModelCoordinatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$LocationModelCoordinatesImplCopyWithImpl<$Res>
    extends _$LocationModelCoordinatesCopyWithImpl<$Res,
        _$LocationModelCoordinatesImpl>
    implements _$$LocationModelCoordinatesImplCopyWith<$Res> {
  __$$LocationModelCoordinatesImplCopyWithImpl(
      _$LocationModelCoordinatesImpl _value,
      $Res Function(_$LocationModelCoordinatesImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationModelCoordinates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$LocationModelCoordinatesImpl(
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
class _$LocationModelCoordinatesImpl extends _LocationModelCoordinates {
  _$LocationModelCoordinatesImpl(
      {required this.latitude, required this.longitude})
      : super._();

  factory _$LocationModelCoordinatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationModelCoordinatesImplFromJson(json);

  @override
  double latitude;
  @override
  double longitude;

  @override
  String toString() {
    return 'LocationModelCoordinates(latitude: $latitude, longitude: $longitude)';
  }

  /// Create a copy of LocationModelCoordinates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationModelCoordinatesImplCopyWith<_$LocationModelCoordinatesImpl>
      get copyWith => __$$LocationModelCoordinatesImplCopyWithImpl<
          _$LocationModelCoordinatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationModelCoordinatesImplToJson(
      this,
    );
  }
}

abstract class _LocationModelCoordinates extends LocationModelCoordinates {
  factory _LocationModelCoordinates(
      {required double latitude,
      required double longitude}) = _$LocationModelCoordinatesImpl;
  _LocationModelCoordinates._() : super._();

  factory _LocationModelCoordinates.fromJson(Map<String, dynamic> json) =
      _$LocationModelCoordinatesImpl.fromJson;

  @override
  double get latitude;
  set latitude(double value);
  @override
  double get longitude;
  set longitude(double value);

  /// Create a copy of LocationModelCoordinates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationModelCoordinatesImplCopyWith<_$LocationModelCoordinatesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LocationModelOpeningHours _$LocationModelOpeningHoursFromJson(
    Map<String, dynamic> json) {
  return _LocationModelOpeningHours.fromJson(json);
}

/// @nodoc
mixin _$LocationModelOpeningHours {
  String get monday => throw _privateConstructorUsedError;
  set monday(String value) => throw _privateConstructorUsedError;
  String get tuesday => throw _privateConstructorUsedError;
  set tuesday(String value) => throw _privateConstructorUsedError;
  String get wednesday => throw _privateConstructorUsedError;
  set wednesday(String value) => throw _privateConstructorUsedError;
  String get thursday => throw _privateConstructorUsedError;
  set thursday(String value) => throw _privateConstructorUsedError;
  String get friday => throw _privateConstructorUsedError;
  set friday(String value) => throw _privateConstructorUsedError;
  String get saturday => throw _privateConstructorUsedError;
  set saturday(String value) => throw _privateConstructorUsedError;
  String get sunday => throw _privateConstructorUsedError;
  set sunday(String value) => throw _privateConstructorUsedError;

  /// Serializes this LocationModelOpeningHours to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationModelOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationModelOpeningHoursCopyWith<LocationModelOpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelOpeningHoursCopyWith<$Res> {
  factory $LocationModelOpeningHoursCopyWith(LocationModelOpeningHours value,
          $Res Function(LocationModelOpeningHours) then) =
      _$LocationModelOpeningHoursCopyWithImpl<$Res, LocationModelOpeningHours>;
  @useResult
  $Res call(
      {String monday,
      String tuesday,
      String wednesday,
      String thursday,
      String friday,
      String saturday,
      String sunday});
}

/// @nodoc
class _$LocationModelOpeningHoursCopyWithImpl<$Res,
        $Val extends LocationModelOpeningHours>
    implements $LocationModelOpeningHoursCopyWith<$Res> {
  _$LocationModelOpeningHoursCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationModelOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monday = null,
    Object? tuesday = null,
    Object? wednesday = null,
    Object? thursday = null,
    Object? friday = null,
    Object? saturday = null,
    Object? sunday = null,
  }) {
    return _then(_value.copyWith(
      monday: null == monday
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as String,
      tuesday: null == tuesday
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as String,
      wednesday: null == wednesday
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as String,
      thursday: null == thursday
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as String,
      friday: null == friday
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as String,
      saturday: null == saturday
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as String,
      sunday: null == sunday
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationModelOpeningHoursImplCopyWith<$Res>
    implements $LocationModelOpeningHoursCopyWith<$Res> {
  factory _$$LocationModelOpeningHoursImplCopyWith(
          _$LocationModelOpeningHoursImpl value,
          $Res Function(_$LocationModelOpeningHoursImpl) then) =
      __$$LocationModelOpeningHoursImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String monday,
      String tuesday,
      String wednesday,
      String thursday,
      String friday,
      String saturday,
      String sunday});
}

/// @nodoc
class __$$LocationModelOpeningHoursImplCopyWithImpl<$Res>
    extends _$LocationModelOpeningHoursCopyWithImpl<$Res,
        _$LocationModelOpeningHoursImpl>
    implements _$$LocationModelOpeningHoursImplCopyWith<$Res> {
  __$$LocationModelOpeningHoursImplCopyWithImpl(
      _$LocationModelOpeningHoursImpl _value,
      $Res Function(_$LocationModelOpeningHoursImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationModelOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monday = null,
    Object? tuesday = null,
    Object? wednesday = null,
    Object? thursday = null,
    Object? friday = null,
    Object? saturday = null,
    Object? sunday = null,
  }) {
    return _then(_$LocationModelOpeningHoursImpl(
      monday: null == monday
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as String,
      tuesday: null == tuesday
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as String,
      wednesday: null == wednesday
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as String,
      thursday: null == thursday
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as String,
      friday: null == friday
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as String,
      saturday: null == saturday
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as String,
      sunday: null == sunday
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationModelOpeningHoursImpl implements _LocationModelOpeningHours {
  _$LocationModelOpeningHoursImpl(
      {required this.monday,
      required this.tuesday,
      required this.wednesday,
      required this.thursday,
      required this.friday,
      required this.saturday,
      required this.sunday});

  factory _$LocationModelOpeningHoursImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationModelOpeningHoursImplFromJson(json);

  @override
  String monday;
  @override
  String tuesday;
  @override
  String wednesday;
  @override
  String thursday;
  @override
  String friday;
  @override
  String saturday;
  @override
  String sunday;

  @override
  String toString() {
    return 'LocationModelOpeningHours(monday: $monday, tuesday: $tuesday, wednesday: $wednesday, thursday: $thursday, friday: $friday, saturday: $saturday, sunday: $sunday)';
  }

  /// Create a copy of LocationModelOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationModelOpeningHoursImplCopyWith<_$LocationModelOpeningHoursImpl>
      get copyWith => __$$LocationModelOpeningHoursImplCopyWithImpl<
          _$LocationModelOpeningHoursImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationModelOpeningHoursImplToJson(
      this,
    );
  }
}

abstract class _LocationModelOpeningHours implements LocationModelOpeningHours {
  factory _LocationModelOpeningHours(
      {required String monday,
      required String tuesday,
      required String wednesday,
      required String thursday,
      required String friday,
      required String saturday,
      required String sunday}) = _$LocationModelOpeningHoursImpl;

  factory _LocationModelOpeningHours.fromJson(Map<String, dynamic> json) =
      _$LocationModelOpeningHoursImpl.fromJson;

  @override
  String get monday;
  set monday(String value);
  @override
  String get tuesday;
  set tuesday(String value);
  @override
  String get wednesday;
  set wednesday(String value);
  @override
  String get thursday;
  set thursday(String value);
  @override
  String get friday;
  set friday(String value);
  @override
  String get saturday;
  set saturday(String value);
  @override
  String get sunday;
  set sunday(String value);

  /// Create a copy of LocationModelOpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationModelOpeningHoursImplCopyWith<_$LocationModelOpeningHoursImpl>
      get copyWith => throw _privateConstructorUsedError;
}
