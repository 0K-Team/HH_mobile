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
  List<VirtualGardenModelPlants> get plants =>
      throw _privateConstructorUsedError;
  set plants(List<VirtualGardenModelPlants> value) =>
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
  $Res call({List<VirtualGardenModelPlants> plants});
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
    Object? plants = null,
  }) {
    return _then(_value.copyWith(
      plants: null == plants
          ? _value.plants
          : plants // ignore: cast_nullable_to_non_nullable
              as List<VirtualGardenModelPlants>,
    ) as $Val);
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
  $Res call({List<VirtualGardenModelPlants> plants});
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
    Object? plants = null,
  }) {
    return _then(_$VirtualGardenModelImpl(
      plants: null == plants
          ? _value.plants
          : plants // ignore: cast_nullable_to_non_nullable
              as List<VirtualGardenModelPlants>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VirtualGardenModelImpl implements _VirtualGardenModel {
  _$VirtualGardenModelImpl({required this.plants});

  factory _$VirtualGardenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VirtualGardenModelImplFromJson(json);

  @override
  List<VirtualGardenModelPlants> plants;

  @override
  String toString() {
    return 'VirtualGardenModel(plants: $plants)';
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
          {required List<VirtualGardenModelPlants> plants}) =
      _$VirtualGardenModelImpl;

  factory _VirtualGardenModel.fromJson(Map<String, dynamic> json) =
      _$VirtualGardenModelImpl.fromJson;

  @override
  List<VirtualGardenModelPlants> get plants;
  set plants(List<VirtualGardenModelPlants> value);

  /// Create a copy of VirtualGardenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VirtualGardenModelImplCopyWith<_$VirtualGardenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VirtualGardenModelPlants _$VirtualGardenModelPlantsFromJson(
    Map<String, dynamic> json) {
  return _VirtualGardenModelPlants.fromJson(json);
}

/// @nodoc
mixin _$VirtualGardenModelPlants {
  @JsonValue('plant_id')
  int get plantId => throw _privateConstructorUsedError;
  @JsonValue('plant_id')
  set plantId(int value) => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  set type(String value) => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  set species(String value) => throw _privateConstructorUsedError;
  @JsonValue('growth_stage')
  int get growthStage => throw _privateConstructorUsedError;
  @JsonValue('growth_stage')
  set growthStage(int value) => throw _privateConstructorUsedError;
  @JsonValue('planted_date')
  DateTime get plantedDate => throw _privateConstructorUsedError;
  @JsonValue('planted_date')
  set plantedDate(DateTime value) => throw _privateConstructorUsedError;
  @JsonValue('points_earned')
  int get pointsEarned => throw _privateConstructorUsedError;
  @JsonValue('points_earned')
  set pointsEarned(int value) => throw _privateConstructorUsedError;

  /// Serializes this VirtualGardenModelPlants to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VirtualGardenModelPlants
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VirtualGardenModelPlantsCopyWith<VirtualGardenModelPlants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VirtualGardenModelPlantsCopyWith<$Res> {
  factory $VirtualGardenModelPlantsCopyWith(VirtualGardenModelPlants value,
          $Res Function(VirtualGardenModelPlants) then) =
      _$VirtualGardenModelPlantsCopyWithImpl<$Res, VirtualGardenModelPlants>;
  @useResult
  $Res call(
      {@JsonValue('plant_id') int plantId,
      String type,
      String species,
      @JsonValue('growth_stage') int growthStage,
      @JsonValue('planted_date') DateTime plantedDate,
      @JsonValue('points_earned') int pointsEarned});
}

/// @nodoc
class _$VirtualGardenModelPlantsCopyWithImpl<$Res,
        $Val extends VirtualGardenModelPlants>
    implements $VirtualGardenModelPlantsCopyWith<$Res> {
  _$VirtualGardenModelPlantsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VirtualGardenModelPlants
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plantId = null,
    Object? type = null,
    Object? species = null,
    Object? growthStage = null,
    Object? plantedDate = null,
    Object? pointsEarned = null,
  }) {
    return _then(_value.copyWith(
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      growthStage: null == growthStage
          ? _value.growthStage
          : growthStage // ignore: cast_nullable_to_non_nullable
              as int,
      plantedDate: null == plantedDate
          ? _value.plantedDate
          : plantedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pointsEarned: null == pointsEarned
          ? _value.pointsEarned
          : pointsEarned // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VirtualGardenModelPlantsImplCopyWith<$Res>
    implements $VirtualGardenModelPlantsCopyWith<$Res> {
  factory _$$VirtualGardenModelPlantsImplCopyWith(
          _$VirtualGardenModelPlantsImpl value,
          $Res Function(_$VirtualGardenModelPlantsImpl) then) =
      __$$VirtualGardenModelPlantsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonValue('plant_id') int plantId,
      String type,
      String species,
      @JsonValue('growth_stage') int growthStage,
      @JsonValue('planted_date') DateTime plantedDate,
      @JsonValue('points_earned') int pointsEarned});
}

/// @nodoc
class __$$VirtualGardenModelPlantsImplCopyWithImpl<$Res>
    extends _$VirtualGardenModelPlantsCopyWithImpl<$Res,
        _$VirtualGardenModelPlantsImpl>
    implements _$$VirtualGardenModelPlantsImplCopyWith<$Res> {
  __$$VirtualGardenModelPlantsImplCopyWithImpl(
      _$VirtualGardenModelPlantsImpl _value,
      $Res Function(_$VirtualGardenModelPlantsImpl) _then)
      : super(_value, _then);

  /// Create a copy of VirtualGardenModelPlants
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plantId = null,
    Object? type = null,
    Object? species = null,
    Object? growthStage = null,
    Object? plantedDate = null,
    Object? pointsEarned = null,
  }) {
    return _then(_$VirtualGardenModelPlantsImpl(
      plantId: null == plantId
          ? _value.plantId
          : plantId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      growthStage: null == growthStage
          ? _value.growthStage
          : growthStage // ignore: cast_nullable_to_non_nullable
              as int,
      plantedDate: null == plantedDate
          ? _value.plantedDate
          : plantedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pointsEarned: null == pointsEarned
          ? _value.pointsEarned
          : pointsEarned // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VirtualGardenModelPlantsImpl implements _VirtualGardenModelPlants {
  _$VirtualGardenModelPlantsImpl(
      {@JsonValue('plant_id') required this.plantId,
      required this.type,
      required this.species,
      @JsonValue('growth_stage') required this.growthStage,
      @JsonValue('planted_date') required this.plantedDate,
      @JsonValue('points_earned') required this.pointsEarned});

  factory _$VirtualGardenModelPlantsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VirtualGardenModelPlantsImplFromJson(json);

  @override
  @JsonValue('plant_id')
  int plantId;
  @override
  String type;
  @override
  String species;
  @override
  @JsonValue('growth_stage')
  int growthStage;
  @override
  @JsonValue('planted_date')
  DateTime plantedDate;
  @override
  @JsonValue('points_earned')
  int pointsEarned;

  @override
  String toString() {
    return 'VirtualGardenModelPlants(plantId: $plantId, type: $type, species: $species, growthStage: $growthStage, plantedDate: $plantedDate, pointsEarned: $pointsEarned)';
  }

  /// Create a copy of VirtualGardenModelPlants
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VirtualGardenModelPlantsImplCopyWith<_$VirtualGardenModelPlantsImpl>
      get copyWith => __$$VirtualGardenModelPlantsImplCopyWithImpl<
          _$VirtualGardenModelPlantsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VirtualGardenModelPlantsImplToJson(
      this,
    );
  }
}

abstract class _VirtualGardenModelPlants implements VirtualGardenModelPlants {
  factory _VirtualGardenModelPlants(
          {@JsonValue('plant_id') required int plantId,
          required String type,
          required String species,
          @JsonValue('growth_stage') required int growthStage,
          @JsonValue('planted_date') required DateTime plantedDate,
          @JsonValue('points_earned') required int pointsEarned}) =
      _$VirtualGardenModelPlantsImpl;

  factory _VirtualGardenModelPlants.fromJson(Map<String, dynamic> json) =
      _$VirtualGardenModelPlantsImpl.fromJson;

  @override
  @JsonValue('plant_id')
  int get plantId;
  @JsonValue('plant_id')
  set plantId(int value);
  @override
  String get type;
  set type(String value);
  @override
  String get species;
  set species(String value);
  @override
  @JsonValue('growth_stage')
  int get growthStage;
  @JsonValue('growth_stage')
  set growthStage(int value);
  @override
  @JsonValue('planted_date')
  DateTime get plantedDate;
  @JsonValue('planted_date')
  set plantedDate(DateTime value);
  @override
  @JsonValue('points_earned')
  int get pointsEarned;
  @JsonValue('points_earned')
  set pointsEarned(int value);

  /// Create a copy of VirtualGardenModelPlants
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VirtualGardenModelPlantsImplCopyWith<_$VirtualGardenModelPlantsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
