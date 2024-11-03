// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'virtual_garden_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VirtualGardenModel _$VirtualGardenModelFromJson(Map<String, dynamic> json) {
  return _VirtualGardenModel.fromJson(json);
}

/// @nodoc
mixin _$VirtualGardenModel {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  set user(String value) => throw _privateConstructorUsedError;
  List<VirtualGardenModelPlant> get plants =>
      throw _privateConstructorUsedError;
  set plants(List<VirtualGardenModelPlant> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'user_actions')
  VirtualGardenModelUserActions get userActions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'user_actions')
  set userActions(VirtualGardenModelUserActions value) =>
      throw _privateConstructorUsedError;

  /// Serializes this VirtualGardenModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VirtualGardenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VirtualGardenModelCopyWith<VirtualGardenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VirtualGardenModelCopyWith<$Res> {
  factory $VirtualGardenModelCopyWith(
          VirtualGardenModel value, $Res Function(VirtualGardenModel) then) =
      _$VirtualGardenModelCopyWithImpl<$Res, VirtualGardenModel>;
  @useResult
  $Res call(
      {String id,
      String user,
      List<VirtualGardenModelPlant> plants,
      @JsonKey(name: 'user_actions')
      VirtualGardenModelUserActions userActions});

  $VirtualGardenModelUserActionsCopyWith<$Res> get userActions;
}

/// @nodoc
class _$VirtualGardenModelCopyWithImpl<$Res, $Val extends VirtualGardenModel>
    implements $VirtualGardenModelCopyWith<$Res> {
  _$VirtualGardenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VirtualGardenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? plants = null,
    Object? userActions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      plants: null == plants
          ? _value.plants
          : plants // ignore: cast_nullable_to_non_nullable
              as List<VirtualGardenModelPlant>,
      userActions: null == userActions
          ? _value.userActions
          : userActions // ignore: cast_nullable_to_non_nullable
              as VirtualGardenModelUserActions,
    ) as $Val);
  }

  /// Create a copy of VirtualGardenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VirtualGardenModelUserActionsCopyWith<$Res> get userActions {
    return $VirtualGardenModelUserActionsCopyWith<$Res>(_value.userActions,
        (value) {
      return _then(_value.copyWith(userActions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VirtualGardenModelImplCopyWith<$Res>
    implements $VirtualGardenModelCopyWith<$Res> {
  factory _$$VirtualGardenModelImplCopyWith(_$VirtualGardenModelImpl value,
          $Res Function(_$VirtualGardenModelImpl) then) =
      __$$VirtualGardenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String user,
      List<VirtualGardenModelPlant> plants,
      @JsonKey(name: 'user_actions')
      VirtualGardenModelUserActions userActions});

  @override
  $VirtualGardenModelUserActionsCopyWith<$Res> get userActions;
}

/// @nodoc
class __$$VirtualGardenModelImplCopyWithImpl<$Res>
    extends _$VirtualGardenModelCopyWithImpl<$Res, _$VirtualGardenModelImpl>
    implements _$$VirtualGardenModelImplCopyWith<$Res> {
  __$$VirtualGardenModelImplCopyWithImpl(_$VirtualGardenModelImpl _value,
      $Res Function(_$VirtualGardenModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VirtualGardenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? plants = null,
    Object? userActions = null,
  }) {
    return _then(_$VirtualGardenModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      plants: null == plants
          ? _value.plants
          : plants // ignore: cast_nullable_to_non_nullable
              as List<VirtualGardenModelPlant>,
      userActions: null == userActions
          ? _value.userActions
          : userActions // ignore: cast_nullable_to_non_nullable
              as VirtualGardenModelUserActions,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VirtualGardenModelImpl implements _VirtualGardenModel {
  _$VirtualGardenModelImpl(
      {required this.id,
      required this.user,
      required this.plants,
      @JsonKey(name: 'user_actions') required this.userActions});

  factory _$VirtualGardenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VirtualGardenModelImplFromJson(json);

  @override
  String id;
  @override
  String user;
  @override
  List<VirtualGardenModelPlant> plants;
  @override
  @JsonKey(name: 'user_actions')
  VirtualGardenModelUserActions userActions;

  @override
  String toString() {
    return 'VirtualGardenModel(id: $id, user: $user, plants: $plants, userActions: $userActions)';
  }

  /// Create a copy of VirtualGardenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VirtualGardenModelImplCopyWith<_$VirtualGardenModelImpl> get copyWith =>
      __$$VirtualGardenModelImplCopyWithImpl<_$VirtualGardenModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VirtualGardenModelImplToJson(
      this,
    );
  }
}

abstract class _VirtualGardenModel implements VirtualGardenModel {
  factory _VirtualGardenModel(
          {required String id,
          required String user,
          required List<VirtualGardenModelPlant> plants,
          @JsonKey(name: 'user_actions')
          required VirtualGardenModelUserActions userActions}) =
      _$VirtualGardenModelImpl;

  factory _VirtualGardenModel.fromJson(Map<String, dynamic> json) =
      _$VirtualGardenModelImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get user;
  set user(String value);
  @override
  List<VirtualGardenModelPlant> get plants;
  set plants(List<VirtualGardenModelPlant> value);
  @override
  @JsonKey(name: 'user_actions')
  VirtualGardenModelUserActions get userActions;
  @JsonKey(name: 'user_actions')
  set userActions(VirtualGardenModelUserActions value);

  /// Create a copy of VirtualGardenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VirtualGardenModelImplCopyWith<_$VirtualGardenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VirtualGardenModelPlant _$VirtualGardenModelPlantFromJson(
    Map<String, dynamic> json) {
  return _VirtualGardenModelPlant.fromJson(json);
}

/// @nodoc
mixin _$VirtualGardenModelPlant {
  @JsonKey(name: 'plant_id')
  String get plantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'plant_id')
  set plantId(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  set type(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'growth_stage')
  int get growthStage => throw _privateConstructorUsedError;
  @JsonKey(name: 'growth_stage')
  set growthStage(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'watering_needed')
  int get wateringNeeded => throw _privateConstructorUsedError;
  @JsonKey(name: 'watering_needed')
  set wateringNeeded(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'fertilizer_needed')
  int get fertilizerNeeded => throw _privateConstructorUsedError;
  @JsonKey(name: 'fertilizer_needed')
  set fertilizerNeeded(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'weeds_removed_needed')
  int get weedsRemovedNeeded => throw _privateConstructorUsedError;
  @JsonKey(name: 'weeds_removed_needed')
  set weedsRemovedNeeded(int value) => throw _privateConstructorUsedError;
  DateTime get planted => throw _privateConstructorUsedError;
  set planted(DateTime value) => throw _privateConstructorUsedError;
  bool get harvestable => throw _privateConstructorUsedError;
  set harvestable(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_watered')
  DateTime get lastWatered => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_watered')
  set lastWatered(DateTime value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_fertilized')
  DateTime get lastFertilized => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_fertilized')
  set lastFertilized(DateTime value) => throw _privateConstructorUsedError;

  /// Serializes this VirtualGardenModelPlant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VirtualGardenModelPlant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VirtualGardenModelPlantCopyWith<VirtualGardenModelPlant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VirtualGardenModelPlantCopyWith<$Res> {
  factory $VirtualGardenModelPlantCopyWith(VirtualGardenModelPlant value,
          $Res Function(VirtualGardenModelPlant) then) =
      _$VirtualGardenModelPlantCopyWithImpl<$Res, VirtualGardenModelPlant>;
  @useResult
  $Res call(
      {@JsonKey(name: 'plant_id') String plantId,
      String name,
      String type,
      @JsonKey(name: 'growth_stage') int growthStage,
      @JsonKey(name: 'watering_needed') int wateringNeeded,
      @JsonKey(name: 'fertilizer_needed') int fertilizerNeeded,
      @JsonKey(name: 'weeds_removed_needed') int weedsRemovedNeeded,
      DateTime planted,
      bool harvestable,
      @JsonKey(name: 'last_watered') DateTime lastWatered,
      @JsonKey(name: 'last_fertilized') DateTime lastFertilized});
}

/// @nodoc
class _$VirtualGardenModelPlantCopyWithImpl<$Res,
        $Val extends VirtualGardenModelPlant>
    implements $VirtualGardenModelPlantCopyWith<$Res> {
  _$VirtualGardenModelPlantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VirtualGardenModelPlant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plantId = null,
    Object? name = null,
    Object? type = null,
    Object? growthStage = null,
    Object? wateringNeeded = null,
    Object? fertilizerNeeded = null,
    Object? weedsRemovedNeeded = null,
    Object? planted = null,
    Object? harvestable = null,
    Object? lastWatered = null,
    Object? lastFertilized = null,
  }) {
    return _then(_value.copyWith(
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      growthStage: null == growthStage
          ? _value.growthStage
          : growthStage // ignore: cast_nullable_to_non_nullable
              as int,
      wateringNeeded: null == wateringNeeded
          ? _value.wateringNeeded
          : wateringNeeded // ignore: cast_nullable_to_non_nullable
              as int,
      fertilizerNeeded: null == fertilizerNeeded
          ? _value.fertilizerNeeded
          : fertilizerNeeded // ignore: cast_nullable_to_non_nullable
              as int,
      weedsRemovedNeeded: null == weedsRemovedNeeded
          ? _value.weedsRemovedNeeded
          : weedsRemovedNeeded // ignore: cast_nullable_to_non_nullable
              as int,
      planted: null == planted
          ? _value.planted
          : planted // ignore: cast_nullable_to_non_nullable
              as DateTime,
      harvestable: null == harvestable
          ? _value.harvestable
          : harvestable // ignore: cast_nullable_to_non_nullable
              as bool,
      lastWatered: null == lastWatered
          ? _value.lastWatered
          : lastWatered // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastFertilized: null == lastFertilized
          ? _value.lastFertilized
          : lastFertilized // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VirtualGardenModelPlantImplCopyWith<$Res>
    implements $VirtualGardenModelPlantCopyWith<$Res> {
  factory _$$VirtualGardenModelPlantImplCopyWith(
          _$VirtualGardenModelPlantImpl value,
          $Res Function(_$VirtualGardenModelPlantImpl) then) =
      __$$VirtualGardenModelPlantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'plant_id') String plantId,
      String name,
      String type,
      @JsonKey(name: 'growth_stage') int growthStage,
      @JsonKey(name: 'watering_needed') int wateringNeeded,
      @JsonKey(name: 'fertilizer_needed') int fertilizerNeeded,
      @JsonKey(name: 'weeds_removed_needed') int weedsRemovedNeeded,
      DateTime planted,
      bool harvestable,
      @JsonKey(name: 'last_watered') DateTime lastWatered,
      @JsonKey(name: 'last_fertilized') DateTime lastFertilized});
}

/// @nodoc
class __$$VirtualGardenModelPlantImplCopyWithImpl<$Res>
    extends _$VirtualGardenModelPlantCopyWithImpl<$Res,
        _$VirtualGardenModelPlantImpl>
    implements _$$VirtualGardenModelPlantImplCopyWith<$Res> {
  __$$VirtualGardenModelPlantImplCopyWithImpl(
      _$VirtualGardenModelPlantImpl _value,
      $Res Function(_$VirtualGardenModelPlantImpl) _then)
      : super(_value, _then);

  /// Create a copy of VirtualGardenModelPlant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plantId = null,
    Object? name = null,
    Object? type = null,
    Object? growthStage = null,
    Object? wateringNeeded = null,
    Object? fertilizerNeeded = null,
    Object? weedsRemovedNeeded = null,
    Object? planted = null,
    Object? harvestable = null,
    Object? lastWatered = null,
    Object? lastFertilized = null,
  }) {
    return _then(_$VirtualGardenModelPlantImpl(
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      growthStage: null == growthStage
          ? _value.growthStage
          : growthStage // ignore: cast_nullable_to_non_nullable
              as int,
      wateringNeeded: null == wateringNeeded
          ? _value.wateringNeeded
          : wateringNeeded // ignore: cast_nullable_to_non_nullable
              as int,
      fertilizerNeeded: null == fertilizerNeeded
          ? _value.fertilizerNeeded
          : fertilizerNeeded // ignore: cast_nullable_to_non_nullable
              as int,
      weedsRemovedNeeded: null == weedsRemovedNeeded
          ? _value.weedsRemovedNeeded
          : weedsRemovedNeeded // ignore: cast_nullable_to_non_nullable
              as int,
      planted: null == planted
          ? _value.planted
          : planted // ignore: cast_nullable_to_non_nullable
              as DateTime,
      harvestable: null == harvestable
          ? _value.harvestable
          : harvestable // ignore: cast_nullable_to_non_nullable
              as bool,
      lastWatered: null == lastWatered
          ? _value.lastWatered
          : lastWatered // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastFertilized: null == lastFertilized
          ? _value.lastFertilized
          : lastFertilized // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VirtualGardenModelPlantImpl implements _VirtualGardenModelPlant {
  _$VirtualGardenModelPlantImpl(
      {@JsonKey(name: 'plant_id') required this.plantId,
      required this.name,
      required this.type,
      @JsonKey(name: 'growth_stage') required this.growthStage,
      @JsonKey(name: 'watering_needed') required this.wateringNeeded,
      @JsonKey(name: 'fertilizer_needed') required this.fertilizerNeeded,
      @JsonKey(name: 'weeds_removed_needed') required this.weedsRemovedNeeded,
      required this.planted,
      required this.harvestable,
      @JsonKey(name: 'last_watered') required this.lastWatered,
      @JsonKey(name: 'last_fertilized') required this.lastFertilized});

  factory _$VirtualGardenModelPlantImpl.fromJson(Map<String, dynamic> json) =>
      _$$VirtualGardenModelPlantImplFromJson(json);

  @override
  @JsonKey(name: 'plant_id')
  String plantId;
  @override
  String name;
  @override
  String type;
  @override
  @JsonKey(name: 'growth_stage')
  int growthStage;
  @override
  @JsonKey(name: 'watering_needed')
  int wateringNeeded;
  @override
  @JsonKey(name: 'fertilizer_needed')
  int fertilizerNeeded;
  @override
  @JsonKey(name: 'weeds_removed_needed')
  int weedsRemovedNeeded;
  @override
  DateTime planted;
  @override
  bool harvestable;
  @override
  @JsonKey(name: 'last_watered')
  DateTime lastWatered;
  @override
  @JsonKey(name: 'last_fertilized')
  DateTime lastFertilized;

  @override
  String toString() {
    return 'VirtualGardenModelPlant(plantId: $plantId, name: $name, type: $type, growthStage: $growthStage, wateringNeeded: $wateringNeeded, fertilizerNeeded: $fertilizerNeeded, weedsRemovedNeeded: $weedsRemovedNeeded, planted: $planted, harvestable: $harvestable, lastWatered: $lastWatered, lastFertilized: $lastFertilized)';
  }

  /// Create a copy of VirtualGardenModelPlant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VirtualGardenModelPlantImplCopyWith<_$VirtualGardenModelPlantImpl>
      get copyWith => __$$VirtualGardenModelPlantImplCopyWithImpl<
          _$VirtualGardenModelPlantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VirtualGardenModelPlantImplToJson(
      this,
    );
  }
}

abstract class _VirtualGardenModelPlant implements VirtualGardenModelPlant {
  factory _VirtualGardenModelPlant(
      {@JsonKey(name: 'plant_id') required String plantId,
      required String name,
      required String type,
      @JsonKey(name: 'growth_stage') required int growthStage,
      @JsonKey(name: 'watering_needed') required int wateringNeeded,
      @JsonKey(name: 'fertilizer_needed') required int fertilizerNeeded,
      @JsonKey(name: 'weeds_removed_needed') required int weedsRemovedNeeded,
      required DateTime planted,
      required bool harvestable,
      @JsonKey(name: 'last_watered') required DateTime lastWatered,
      @JsonKey(name: 'last_fertilized')
      required DateTime lastFertilized}) = _$VirtualGardenModelPlantImpl;

  factory _VirtualGardenModelPlant.fromJson(Map<String, dynamic> json) =
      _$VirtualGardenModelPlantImpl.fromJson;

  @override
  @JsonKey(name: 'plant_id')
  String get plantId;
  @JsonKey(name: 'plant_id')
  set plantId(String value);
  @override
  String get name;
  set name(String value);
  @override
  String get type;
  set type(String value);
  @override
  @JsonKey(name: 'growth_stage')
  int get growthStage;
  @JsonKey(name: 'growth_stage')
  set growthStage(int value);
  @override
  @JsonKey(name: 'watering_needed')
  int get wateringNeeded;
  @JsonKey(name: 'watering_needed')
  set wateringNeeded(int value);
  @override
  @JsonKey(name: 'fertilizer_needed')
  int get fertilizerNeeded;
  @JsonKey(name: 'fertilizer_needed')
  set fertilizerNeeded(int value);
  @override
  @JsonKey(name: 'weeds_removed_needed')
  int get weedsRemovedNeeded;
  @JsonKey(name: 'weeds_removed_needed')
  set weedsRemovedNeeded(int value);
  @override
  DateTime get planted;
  set planted(DateTime value);
  @override
  bool get harvestable;
  set harvestable(bool value);
  @override
  @JsonKey(name: 'last_watered')
  DateTime get lastWatered;
  @JsonKey(name: 'last_watered')
  set lastWatered(DateTime value);
  @override
  @JsonKey(name: 'last_fertilized')
  DateTime get lastFertilized;
  @JsonKey(name: 'last_fertilized')
  set lastFertilized(DateTime value);

  /// Create a copy of VirtualGardenModelPlant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VirtualGardenModelPlantImplCopyWith<_$VirtualGardenModelPlantImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VirtualGardenModelUserActions _$VirtualGardenModelUserActionsFromJson(
    Map<String, dynamic> json) {
  return _VirtualGardenModelUserActions.fromJson(json);
}

/// @nodoc
mixin _$VirtualGardenModelUserActions {
  @JsonKey(name: 'watering_count')
  int get wateringCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'watering_count')
  set wateringCount(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'watering_max_count')
  int get wateringMaxCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'watering_max_count')
  set wateringMaxCount(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'watering_refill')
  DateTime get wateringRefill => throw _privateConstructorUsedError;
  @JsonKey(name: 'watering_refill')
  set wateringRefill(DateTime value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'fertilizing_count')
  int get fertilizingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'fertilizing_count')
  set fertilizingCount(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'fertilizing_max_count')
  int get fertilizingMaxCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'fertilizing_max_count')
  set fertilizingMaxCount(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'fertilizing_refill')
  DateTime get fertilizingRefill => throw _privateConstructorUsedError;
  @JsonKey(name: 'fertilizing_refill')
  set fertilizingRefill(DateTime value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'weeds_removed')
  int get weedsRemoved => throw _privateConstructorUsedError;
  @JsonKey(name: 'weeds_removed')
  set weedsRemoved(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'weeds_max_removed')
  int get weedsMaxRemoved => throw _privateConstructorUsedError;
  @JsonKey(name: 'weeds_max_removed')
  set weedsMaxRemoved(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'weeds_refill')
  DateTime get weedsRefill => throw _privateConstructorUsedError;
  @JsonKey(name: 'weeds_refill')
  set weedsRefill(DateTime value) => throw _privateConstructorUsedError;

  /// Serializes this VirtualGardenModelUserActions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VirtualGardenModelUserActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VirtualGardenModelUserActionsCopyWith<VirtualGardenModelUserActions>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VirtualGardenModelUserActionsCopyWith<$Res> {
  factory $VirtualGardenModelUserActionsCopyWith(
          VirtualGardenModelUserActions value,
          $Res Function(VirtualGardenModelUserActions) then) =
      _$VirtualGardenModelUserActionsCopyWithImpl<$Res,
          VirtualGardenModelUserActions>;
  @useResult
  $Res call(
      {@JsonKey(name: 'watering_count') int wateringCount,
      @JsonKey(name: 'watering_max_count') int wateringMaxCount,
      @JsonKey(name: 'watering_refill') DateTime wateringRefill,
      @JsonKey(name: 'fertilizing_count') int fertilizingCount,
      @JsonKey(name: 'fertilizing_max_count') int fertilizingMaxCount,
      @JsonKey(name: 'fertilizing_refill') DateTime fertilizingRefill,
      @JsonKey(name: 'weeds_removed') int weedsRemoved,
      @JsonKey(name: 'weeds_max_removed') int weedsMaxRemoved,
      @JsonKey(name: 'weeds_refill') DateTime weedsRefill});
}

/// @nodoc
class _$VirtualGardenModelUserActionsCopyWithImpl<$Res,
        $Val extends VirtualGardenModelUserActions>
    implements $VirtualGardenModelUserActionsCopyWith<$Res> {
  _$VirtualGardenModelUserActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VirtualGardenModelUserActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wateringCount = null,
    Object? wateringMaxCount = null,
    Object? wateringRefill = null,
    Object? fertilizingCount = null,
    Object? fertilizingMaxCount = null,
    Object? fertilizingRefill = null,
    Object? weedsRemoved = null,
    Object? weedsMaxRemoved = null,
    Object? weedsRefill = null,
  }) {
    return _then(_value.copyWith(
      wateringCount: null == wateringCount
          ? _value.wateringCount
          : wateringCount // ignore: cast_nullable_to_non_nullable
              as int,
      wateringMaxCount: null == wateringMaxCount
          ? _value.wateringMaxCount
          : wateringMaxCount // ignore: cast_nullable_to_non_nullable
              as int,
      wateringRefill: null == wateringRefill
          ? _value.wateringRefill
          : wateringRefill // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fertilizingCount: null == fertilizingCount
          ? _value.fertilizingCount
          : fertilizingCount // ignore: cast_nullable_to_non_nullable
              as int,
      fertilizingMaxCount: null == fertilizingMaxCount
          ? _value.fertilizingMaxCount
          : fertilizingMaxCount // ignore: cast_nullable_to_non_nullable
              as int,
      fertilizingRefill: null == fertilizingRefill
          ? _value.fertilizingRefill
          : fertilizingRefill // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weedsRemoved: null == weedsRemoved
          ? _value.weedsRemoved
          : weedsRemoved // ignore: cast_nullable_to_non_nullable
              as int,
      weedsMaxRemoved: null == weedsMaxRemoved
          ? _value.weedsMaxRemoved
          : weedsMaxRemoved // ignore: cast_nullable_to_non_nullable
              as int,
      weedsRefill: null == weedsRefill
          ? _value.weedsRefill
          : weedsRefill // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VirtualGardenModelUserActionsImplCopyWith<$Res>
    implements $VirtualGardenModelUserActionsCopyWith<$Res> {
  factory _$$VirtualGardenModelUserActionsImplCopyWith(
          _$VirtualGardenModelUserActionsImpl value,
          $Res Function(_$VirtualGardenModelUserActionsImpl) then) =
      __$$VirtualGardenModelUserActionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'watering_count') int wateringCount,
      @JsonKey(name: 'watering_max_count') int wateringMaxCount,
      @JsonKey(name: 'watering_refill') DateTime wateringRefill,
      @JsonKey(name: 'fertilizing_count') int fertilizingCount,
      @JsonKey(name: 'fertilizing_max_count') int fertilizingMaxCount,
      @JsonKey(name: 'fertilizing_refill') DateTime fertilizingRefill,
      @JsonKey(name: 'weeds_removed') int weedsRemoved,
      @JsonKey(name: 'weeds_max_removed') int weedsMaxRemoved,
      @JsonKey(name: 'weeds_refill') DateTime weedsRefill});
}

/// @nodoc
class __$$VirtualGardenModelUserActionsImplCopyWithImpl<$Res>
    extends _$VirtualGardenModelUserActionsCopyWithImpl<$Res,
        _$VirtualGardenModelUserActionsImpl>
    implements _$$VirtualGardenModelUserActionsImplCopyWith<$Res> {
  __$$VirtualGardenModelUserActionsImplCopyWithImpl(
      _$VirtualGardenModelUserActionsImpl _value,
      $Res Function(_$VirtualGardenModelUserActionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of VirtualGardenModelUserActions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wateringCount = null,
    Object? wateringMaxCount = null,
    Object? wateringRefill = null,
    Object? fertilizingCount = null,
    Object? fertilizingMaxCount = null,
    Object? fertilizingRefill = null,
    Object? weedsRemoved = null,
    Object? weedsMaxRemoved = null,
    Object? weedsRefill = null,
  }) {
    return _then(_$VirtualGardenModelUserActionsImpl(
      wateringCount: null == wateringCount
          ? _value.wateringCount
          : wateringCount // ignore: cast_nullable_to_non_nullable
              as int,
      wateringMaxCount: null == wateringMaxCount
          ? _value.wateringMaxCount
          : wateringMaxCount // ignore: cast_nullable_to_non_nullable
              as int,
      wateringRefill: null == wateringRefill
          ? _value.wateringRefill
          : wateringRefill // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fertilizingCount: null == fertilizingCount
          ? _value.fertilizingCount
          : fertilizingCount // ignore: cast_nullable_to_non_nullable
              as int,
      fertilizingMaxCount: null == fertilizingMaxCount
          ? _value.fertilizingMaxCount
          : fertilizingMaxCount // ignore: cast_nullable_to_non_nullable
              as int,
      fertilizingRefill: null == fertilizingRefill
          ? _value.fertilizingRefill
          : fertilizingRefill // ignore: cast_nullable_to_non_nullable
              as DateTime,
      weedsRemoved: null == weedsRemoved
          ? _value.weedsRemoved
          : weedsRemoved // ignore: cast_nullable_to_non_nullable
              as int,
      weedsMaxRemoved: null == weedsMaxRemoved
          ? _value.weedsMaxRemoved
          : weedsMaxRemoved // ignore: cast_nullable_to_non_nullable
              as int,
      weedsRefill: null == weedsRefill
          ? _value.weedsRefill
          : weedsRefill // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VirtualGardenModelUserActionsImpl
    implements _VirtualGardenModelUserActions {
  _$VirtualGardenModelUserActionsImpl(
      {@JsonKey(name: 'watering_count') required this.wateringCount,
      @JsonKey(name: 'watering_max_count') required this.wateringMaxCount,
      @JsonKey(name: 'watering_refill') required this.wateringRefill,
      @JsonKey(name: 'fertilizing_count') required this.fertilizingCount,
      @JsonKey(name: 'fertilizing_max_count') required this.fertilizingMaxCount,
      @JsonKey(name: 'fertilizing_refill') required this.fertilizingRefill,
      @JsonKey(name: 'weeds_removed') required this.weedsRemoved,
      @JsonKey(name: 'weeds_max_removed') required this.weedsMaxRemoved,
      @JsonKey(name: 'weeds_refill') required this.weedsRefill});

  factory _$VirtualGardenModelUserActionsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VirtualGardenModelUserActionsImplFromJson(json);

  @override
  @JsonKey(name: 'watering_count')
  int wateringCount;
  @override
  @JsonKey(name: 'watering_max_count')
  int wateringMaxCount;
  @override
  @JsonKey(name: 'watering_refill')
  DateTime wateringRefill;
  @override
  @JsonKey(name: 'fertilizing_count')
  int fertilizingCount;
  @override
  @JsonKey(name: 'fertilizing_max_count')
  int fertilizingMaxCount;
  @override
  @JsonKey(name: 'fertilizing_refill')
  DateTime fertilizingRefill;
  @override
  @JsonKey(name: 'weeds_removed')
  int weedsRemoved;
  @override
  @JsonKey(name: 'weeds_max_removed')
  int weedsMaxRemoved;
  @override
  @JsonKey(name: 'weeds_refill')
  DateTime weedsRefill;

  @override
  String toString() {
    return 'VirtualGardenModelUserActions(wateringCount: $wateringCount, wateringMaxCount: $wateringMaxCount, wateringRefill: $wateringRefill, fertilizingCount: $fertilizingCount, fertilizingMaxCount: $fertilizingMaxCount, fertilizingRefill: $fertilizingRefill, weedsRemoved: $weedsRemoved, weedsMaxRemoved: $weedsMaxRemoved, weedsRefill: $weedsRefill)';
  }

  /// Create a copy of VirtualGardenModelUserActions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VirtualGardenModelUserActionsImplCopyWith<
          _$VirtualGardenModelUserActionsImpl>
      get copyWith => __$$VirtualGardenModelUserActionsImplCopyWithImpl<
          _$VirtualGardenModelUserActionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VirtualGardenModelUserActionsImplToJson(
      this,
    );
  }
}

abstract class _VirtualGardenModelUserActions
    implements VirtualGardenModelUserActions {
  factory _VirtualGardenModelUserActions(
      {@JsonKey(name: 'watering_count') required int wateringCount,
      @JsonKey(name: 'watering_max_count') required int wateringMaxCount,
      @JsonKey(name: 'watering_refill') required DateTime wateringRefill,
      @JsonKey(name: 'fertilizing_count') required int fertilizingCount,
      @JsonKey(name: 'fertilizing_max_count') required int fertilizingMaxCount,
      @JsonKey(name: 'fertilizing_refill') required DateTime fertilizingRefill,
      @JsonKey(name: 'weeds_removed') required int weedsRemoved,
      @JsonKey(name: 'weeds_max_removed') required int weedsMaxRemoved,
      @JsonKey(name: 'weeds_refill')
      required DateTime weedsRefill}) = _$VirtualGardenModelUserActionsImpl;

  factory _VirtualGardenModelUserActions.fromJson(Map<String, dynamic> json) =
      _$VirtualGardenModelUserActionsImpl.fromJson;

  @override
  @JsonKey(name: 'watering_count')
  int get wateringCount;
  @JsonKey(name: 'watering_count')
  set wateringCount(int value);
  @override
  @JsonKey(name: 'watering_max_count')
  int get wateringMaxCount;
  @JsonKey(name: 'watering_max_count')
  set wateringMaxCount(int value);
  @override
  @JsonKey(name: 'watering_refill')
  DateTime get wateringRefill;
  @JsonKey(name: 'watering_refill')
  set wateringRefill(DateTime value);
  @override
  @JsonKey(name: 'fertilizing_count')
  int get fertilizingCount;
  @JsonKey(name: 'fertilizing_count')
  set fertilizingCount(int value);
  @override
  @JsonKey(name: 'fertilizing_max_count')
  int get fertilizingMaxCount;
  @JsonKey(name: 'fertilizing_max_count')
  set fertilizingMaxCount(int value);
  @override
  @JsonKey(name: 'fertilizing_refill')
  DateTime get fertilizingRefill;
  @JsonKey(name: 'fertilizing_refill')
  set fertilizingRefill(DateTime value);
  @override
  @JsonKey(name: 'weeds_removed')
  int get weedsRemoved;
  @JsonKey(name: 'weeds_removed')
  set weedsRemoved(int value);
  @override
  @JsonKey(name: 'weeds_max_removed')
  int get weedsMaxRemoved;
  @JsonKey(name: 'weeds_max_removed')
  set weedsMaxRemoved(int value);
  @override
  @JsonKey(name: 'weeds_refill')
  DateTime get weedsRefill;
  @JsonKey(name: 'weeds_refill')
  set weedsRefill(DateTime value);

  /// Create a copy of VirtualGardenModelUserActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VirtualGardenModelUserActionsImplCopyWith<
          _$VirtualGardenModelUserActionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
