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
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  set id(String value) => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  set user(String value) => throw _privateConstructorUsedError;
  List<VirtualGardenModelPlant> get plants =>
      throw _privateConstructorUsedError;
  set plants(List<VirtualGardenModelPlant> value) =>
      throw _privateConstructorUsedError;
  VirtualGardenModelUserActions get userActions =>
      throw _privateConstructorUsedError;
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
      {@JsonKey(name: '_id') String id,
      String user,
      List<VirtualGardenModelPlant> plants,
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
      {@JsonKey(name: '_id') String id,
      String user,
      List<VirtualGardenModelPlant> plants,
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
      {@JsonKey(name: '_id') required this.id,
      required this.user,
      required this.plants,
      required this.userActions});

  factory _$VirtualGardenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VirtualGardenModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  String id;
  @override
  String user;
  @override
  List<VirtualGardenModelPlant> plants;
  @override
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
          {@JsonKey(name: '_id') required String id,
          required String user,
          required List<VirtualGardenModelPlant> plants,
          required VirtualGardenModelUserActions userActions}) =
      _$VirtualGardenModelImpl;

  factory _VirtualGardenModel.fromJson(Map<String, dynamic> json) =
      _$VirtualGardenModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @JsonKey(name: '_id')
  set id(String value);
  @override
  String get user;
  set user(String value);
  @override
  List<VirtualGardenModelPlant> get plants;
  set plants(List<VirtualGardenModelPlant> value);
  @override
  VirtualGardenModelUserActions get userActions;
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
  @JsonKey(name: '_id')
  String get plantId => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  set plantId(String value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  set type(String value) => throw _privateConstructorUsedError;
  int get growthStage => throw _privateConstructorUsedError;
  set growthStage(int value) => throw _privateConstructorUsedError;
  int get wateringNeeded => throw _privateConstructorUsedError;
  set wateringNeeded(int value) => throw _privateConstructorUsedError;
  int get fertilizerNeeded => throw _privateConstructorUsedError;
  set fertilizerNeeded(int value) => throw _privateConstructorUsedError;
  int get weedsRemovedNeeded => throw _privateConstructorUsedError;
  set weedsRemovedNeeded(int value) => throw _privateConstructorUsedError;
  DateTime get planted => throw _privateConstructorUsedError;
  set planted(DateTime value) => throw _privateConstructorUsedError;
  bool get harvestable => throw _privateConstructorUsedError;
  set harvestable(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_watered')
  DateTime? get lastWatered => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_watered')
  set lastWatered(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_fertilized')
  DateTime? get lastFertilized => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_fertilized')
  set lastFertilized(DateTime? value) => throw _privateConstructorUsedError;

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
      {@JsonKey(name: '_id') String plantId,
      String name,
      String type,
      int growthStage,
      int wateringNeeded,
      int fertilizerNeeded,
      int weedsRemovedNeeded,
      DateTime planted,
      bool harvestable,
      @JsonKey(name: 'last_watered') DateTime? lastWatered,
      @JsonKey(name: 'last_fertilized') DateTime? lastFertilized});
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
    Object? lastWatered = freezed,
    Object? lastFertilized = freezed,
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
      lastWatered: freezed == lastWatered
          ? _value.lastWatered
          : lastWatered // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastFertilized: freezed == lastFertilized
          ? _value.lastFertilized
          : lastFertilized // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      {@JsonKey(name: '_id') String plantId,
      String name,
      String type,
      int growthStage,
      int wateringNeeded,
      int fertilizerNeeded,
      int weedsRemovedNeeded,
      DateTime planted,
      bool harvestable,
      @JsonKey(name: 'last_watered') DateTime? lastWatered,
      @JsonKey(name: 'last_fertilized') DateTime? lastFertilized});
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
    Object? lastWatered = freezed,
    Object? lastFertilized = freezed,
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
      lastWatered: freezed == lastWatered
          ? _value.lastWatered
          : lastWatered // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastFertilized: freezed == lastFertilized
          ? _value.lastFertilized
          : lastFertilized // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VirtualGardenModelPlantImpl implements _VirtualGardenModelPlant {
  _$VirtualGardenModelPlantImpl(
      {@JsonKey(name: '_id') required this.plantId,
      required this.name,
      required this.type,
      required this.growthStage,
      required this.wateringNeeded,
      required this.fertilizerNeeded,
      required this.weedsRemovedNeeded,
      required this.planted,
      required this.harvestable,
      @JsonKey(name: 'last_watered') this.lastWatered,
      @JsonKey(name: 'last_fertilized') this.lastFertilized});

  factory _$VirtualGardenModelPlantImpl.fromJson(Map<String, dynamic> json) =>
      _$$VirtualGardenModelPlantImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  String plantId;
  @override
  String name;
  @override
  String type;
  @override
  int growthStage;
  @override
  int wateringNeeded;
  @override
  int fertilizerNeeded;
  @override
  int weedsRemovedNeeded;
  @override
  DateTime planted;
  @override
  bool harvestable;
  @override
  @JsonKey(name: 'last_watered')
  DateTime? lastWatered;
  @override
  @JsonKey(name: 'last_fertilized')
  DateTime? lastFertilized;

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
          {@JsonKey(name: '_id') required String plantId,
          required String name,
          required String type,
          required int growthStage,
          required int wateringNeeded,
          required int fertilizerNeeded,
          required int weedsRemovedNeeded,
          required DateTime planted,
          required bool harvestable,
          @JsonKey(name: 'last_watered') DateTime? lastWatered,
          @JsonKey(name: 'last_fertilized') DateTime? lastFertilized}) =
      _$VirtualGardenModelPlantImpl;

  factory _VirtualGardenModelPlant.fromJson(Map<String, dynamic> json) =
      _$VirtualGardenModelPlantImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get plantId;
  @JsonKey(name: '_id')
  set plantId(String value);
  @override
  String get name;
  set name(String value);
  @override
  String get type;
  set type(String value);
  @override
  int get growthStage;
  set growthStage(int value);
  @override
  int get wateringNeeded;
  set wateringNeeded(int value);
  @override
  int get fertilizerNeeded;
  set fertilizerNeeded(int value);
  @override
  int get weedsRemovedNeeded;
  set weedsRemovedNeeded(int value);
  @override
  DateTime get planted;
  set planted(DateTime value);
  @override
  bool get harvestable;
  set harvestable(bool value);
  @override
  @JsonKey(name: 'last_watered')
  DateTime? get lastWatered;
  @JsonKey(name: 'last_watered')
  set lastWatered(DateTime? value);
  @override
  @JsonKey(name: 'last_fertilized')
  DateTime? get lastFertilized;
  @JsonKey(name: 'last_fertilized')
  set lastFertilized(DateTime? value);

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
  int get wateringCount => throw _privateConstructorUsedError;
  set wateringCount(int value) => throw _privateConstructorUsedError;
  int? get wateringMaxCount => throw _privateConstructorUsedError;
  set wateringMaxCount(int? value) => throw _privateConstructorUsedError;
  DateTime? get wateringRefill => throw _privateConstructorUsedError;
  set wateringRefill(DateTime? value) => throw _privateConstructorUsedError;
  int get fertilizingCount => throw _privateConstructorUsedError;
  set fertilizingCount(int value) => throw _privateConstructorUsedError;
  int? get fertilizingMaxCount => throw _privateConstructorUsedError;
  set fertilizingMaxCount(int? value) => throw _privateConstructorUsedError;
  DateTime? get fertilizingRefill => throw _privateConstructorUsedError;
  set fertilizingRefill(DateTime? value) => throw _privateConstructorUsedError;
  int get weedsRemoved => throw _privateConstructorUsedError;
  set weedsRemoved(int value) => throw _privateConstructorUsedError;
  int? get weedsMaxRemoved => throw _privateConstructorUsedError;
  set weedsMaxRemoved(int? value) => throw _privateConstructorUsedError;
  DateTime? get weedsRefill => throw _privateConstructorUsedError;
  set weedsRefill(DateTime? value) => throw _privateConstructorUsedError;

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
      {int wateringCount,
      int? wateringMaxCount,
      DateTime? wateringRefill,
      int fertilizingCount,
      int? fertilizingMaxCount,
      DateTime? fertilizingRefill,
      int weedsRemoved,
      int? weedsMaxRemoved,
      DateTime? weedsRefill});
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
    Object? wateringMaxCount = freezed,
    Object? wateringRefill = freezed,
    Object? fertilizingCount = null,
    Object? fertilizingMaxCount = freezed,
    Object? fertilizingRefill = freezed,
    Object? weedsRemoved = null,
    Object? weedsMaxRemoved = freezed,
    Object? weedsRefill = freezed,
  }) {
    return _then(_value.copyWith(
      wateringCount: null == wateringCount
          ? _value.wateringCount
          : wateringCount // ignore: cast_nullable_to_non_nullable
              as int,
      wateringMaxCount: freezed == wateringMaxCount
          ? _value.wateringMaxCount
          : wateringMaxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      wateringRefill: freezed == wateringRefill
          ? _value.wateringRefill
          : wateringRefill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fertilizingCount: null == fertilizingCount
          ? _value.fertilizingCount
          : fertilizingCount // ignore: cast_nullable_to_non_nullable
              as int,
      fertilizingMaxCount: freezed == fertilizingMaxCount
          ? _value.fertilizingMaxCount
          : fertilizingMaxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      fertilizingRefill: freezed == fertilizingRefill
          ? _value.fertilizingRefill
          : fertilizingRefill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      weedsRemoved: null == weedsRemoved
          ? _value.weedsRemoved
          : weedsRemoved // ignore: cast_nullable_to_non_nullable
              as int,
      weedsMaxRemoved: freezed == weedsMaxRemoved
          ? _value.weedsMaxRemoved
          : weedsMaxRemoved // ignore: cast_nullable_to_non_nullable
              as int?,
      weedsRefill: freezed == weedsRefill
          ? _value.weedsRefill
          : weedsRefill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      {int wateringCount,
      int? wateringMaxCount,
      DateTime? wateringRefill,
      int fertilizingCount,
      int? fertilizingMaxCount,
      DateTime? fertilizingRefill,
      int weedsRemoved,
      int? weedsMaxRemoved,
      DateTime? weedsRefill});
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
    Object? wateringMaxCount = freezed,
    Object? wateringRefill = freezed,
    Object? fertilizingCount = null,
    Object? fertilizingMaxCount = freezed,
    Object? fertilizingRefill = freezed,
    Object? weedsRemoved = null,
    Object? weedsMaxRemoved = freezed,
    Object? weedsRefill = freezed,
  }) {
    return _then(_$VirtualGardenModelUserActionsImpl(
      wateringCount: null == wateringCount
          ? _value.wateringCount
          : wateringCount // ignore: cast_nullable_to_non_nullable
              as int,
      wateringMaxCount: freezed == wateringMaxCount
          ? _value.wateringMaxCount
          : wateringMaxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      wateringRefill: freezed == wateringRefill
          ? _value.wateringRefill
          : wateringRefill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fertilizingCount: null == fertilizingCount
          ? _value.fertilizingCount
          : fertilizingCount // ignore: cast_nullable_to_non_nullable
              as int,
      fertilizingMaxCount: freezed == fertilizingMaxCount
          ? _value.fertilizingMaxCount
          : fertilizingMaxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      fertilizingRefill: freezed == fertilizingRefill
          ? _value.fertilizingRefill
          : fertilizingRefill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      weedsRemoved: null == weedsRemoved
          ? _value.weedsRemoved
          : weedsRemoved // ignore: cast_nullable_to_non_nullable
              as int,
      weedsMaxRemoved: freezed == weedsMaxRemoved
          ? _value.weedsMaxRemoved
          : weedsMaxRemoved // ignore: cast_nullable_to_non_nullable
              as int?,
      weedsRefill: freezed == weedsRefill
          ? _value.weedsRefill
          : weedsRefill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VirtualGardenModelUserActionsImpl
    implements _VirtualGardenModelUserActions {
  _$VirtualGardenModelUserActionsImpl(
      {required this.wateringCount,
      this.wateringMaxCount,
      this.wateringRefill,
      required this.fertilizingCount,
      this.fertilizingMaxCount,
      this.fertilizingRefill,
      required this.weedsRemoved,
      this.weedsMaxRemoved,
      this.weedsRefill});

  factory _$VirtualGardenModelUserActionsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VirtualGardenModelUserActionsImplFromJson(json);

  @override
  int wateringCount;
  @override
  int? wateringMaxCount;
  @override
  DateTime? wateringRefill;
  @override
  int fertilizingCount;
  @override
  int? fertilizingMaxCount;
  @override
  DateTime? fertilizingRefill;
  @override
  int weedsRemoved;
  @override
  int? weedsMaxRemoved;
  @override
  DateTime? weedsRefill;

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
      {required int wateringCount,
      int? wateringMaxCount,
      DateTime? wateringRefill,
      required int fertilizingCount,
      int? fertilizingMaxCount,
      DateTime? fertilizingRefill,
      required int weedsRemoved,
      int? weedsMaxRemoved,
      DateTime? weedsRefill}) = _$VirtualGardenModelUserActionsImpl;

  factory _VirtualGardenModelUserActions.fromJson(Map<String, dynamic> json) =
      _$VirtualGardenModelUserActionsImpl.fromJson;

  @override
  int get wateringCount;
  set wateringCount(int value);
  @override
  int? get wateringMaxCount;
  set wateringMaxCount(int? value);
  @override
  DateTime? get wateringRefill;
  set wateringRefill(DateTime? value);
  @override
  int get fertilizingCount;
  set fertilizingCount(int value);
  @override
  int? get fertilizingMaxCount;
  set fertilizingMaxCount(int? value);
  @override
  DateTime? get fertilizingRefill;
  set fertilizingRefill(DateTime? value);
  @override
  int get weedsRemoved;
  set weedsRemoved(int value);
  @override
  int? get weedsMaxRemoved;
  set weedsMaxRemoved(int? value);
  @override
  DateTime? get weedsRefill;
  set weedsRefill(DateTime? value);

  /// Create a copy of VirtualGardenModelUserActions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VirtualGardenModelUserActionsImplCopyWith<
          _$VirtualGardenModelUserActionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
