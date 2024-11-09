// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eco_calculator_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EcoCalculatorResultModel _$EcoCalculatorResultModelFromJson(
    Map<String, dynamic> json) {
  return _EcoCalculatorResultModel.fromJson(json);
}

/// @nodoc
mixin _$EcoCalculatorResultModel {
  @JsonKey(name: 'total_emission_week')
  double get totalEmissionWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_emission_week')
  set totalEmissionWeek(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'specific_emission')
  EcoCalculatorResultModelSpecificEmission get specificEmission =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'specific_emission')
  set specificEmission(EcoCalculatorResultModelSpecificEmission value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'AI_suggestion')
  String get aiSuggestion => throw _privateConstructorUsedError;
  @JsonKey(name: 'AI_suggestion')
  set aiSuggestion(String value) => throw _privateConstructorUsedError;

  /// Serializes this EcoCalculatorResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EcoCalculatorResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EcoCalculatorResultModelCopyWith<EcoCalculatorResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EcoCalculatorResultModelCopyWith<$Res> {
  factory $EcoCalculatorResultModelCopyWith(EcoCalculatorResultModel value,
          $Res Function(EcoCalculatorResultModel) then) =
      _$EcoCalculatorResultModelCopyWithImpl<$Res, EcoCalculatorResultModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_emission_week') double totalEmissionWeek,
      @JsonKey(name: 'specific_emission')
      EcoCalculatorResultModelSpecificEmission specificEmission,
      @JsonKey(name: 'AI_suggestion') String aiSuggestion});

  $EcoCalculatorResultModelSpecificEmissionCopyWith<$Res> get specificEmission;
}

/// @nodoc
class _$EcoCalculatorResultModelCopyWithImpl<$Res,
        $Val extends EcoCalculatorResultModel>
    implements $EcoCalculatorResultModelCopyWith<$Res> {
  _$EcoCalculatorResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EcoCalculatorResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalEmissionWeek = null,
    Object? specificEmission = null,
    Object? aiSuggestion = null,
  }) {
    return _then(_value.copyWith(
      totalEmissionWeek: null == totalEmissionWeek
          ? _value.totalEmissionWeek
          : totalEmissionWeek // ignore: cast_nullable_to_non_nullable
              as double,
      specificEmission: null == specificEmission
          ? _value.specificEmission
          : specificEmission // ignore: cast_nullable_to_non_nullable
              as EcoCalculatorResultModelSpecificEmission,
      aiSuggestion: null == aiSuggestion
          ? _value.aiSuggestion
          : aiSuggestion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of EcoCalculatorResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EcoCalculatorResultModelSpecificEmissionCopyWith<$Res> get specificEmission {
    return $EcoCalculatorResultModelSpecificEmissionCopyWith<$Res>(
        _value.specificEmission, (value) {
      return _then(_value.copyWith(specificEmission: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EcoCalculatorResultModelImplCopyWith<$Res>
    implements $EcoCalculatorResultModelCopyWith<$Res> {
  factory _$$EcoCalculatorResultModelImplCopyWith(
          _$EcoCalculatorResultModelImpl value,
          $Res Function(_$EcoCalculatorResultModelImpl) then) =
      __$$EcoCalculatorResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_emission_week') double totalEmissionWeek,
      @JsonKey(name: 'specific_emission')
      EcoCalculatorResultModelSpecificEmission specificEmission,
      @JsonKey(name: 'AI_suggestion') String aiSuggestion});

  @override
  $EcoCalculatorResultModelSpecificEmissionCopyWith<$Res> get specificEmission;
}

/// @nodoc
class __$$EcoCalculatorResultModelImplCopyWithImpl<$Res>
    extends _$EcoCalculatorResultModelCopyWithImpl<$Res,
        _$EcoCalculatorResultModelImpl>
    implements _$$EcoCalculatorResultModelImplCopyWith<$Res> {
  __$$EcoCalculatorResultModelImplCopyWithImpl(
      _$EcoCalculatorResultModelImpl _value,
      $Res Function(_$EcoCalculatorResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EcoCalculatorResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalEmissionWeek = null,
    Object? specificEmission = null,
    Object? aiSuggestion = null,
  }) {
    return _then(_$EcoCalculatorResultModelImpl(
      totalEmissionWeek: null == totalEmissionWeek
          ? _value.totalEmissionWeek
          : totalEmissionWeek // ignore: cast_nullable_to_non_nullable
              as double,
      specificEmission: null == specificEmission
          ? _value.specificEmission
          : specificEmission // ignore: cast_nullable_to_non_nullable
              as EcoCalculatorResultModelSpecificEmission,
      aiSuggestion: null == aiSuggestion
          ? _value.aiSuggestion
          : aiSuggestion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EcoCalculatorResultModelImpl implements _EcoCalculatorResultModel {
  _$EcoCalculatorResultModelImpl(
      {@JsonKey(name: 'total_emission_week') this.totalEmissionWeek = 0,
      @JsonKey(name: 'specific_emission') required this.specificEmission,
      @JsonKey(name: 'AI_suggestion') required this.aiSuggestion});

  factory _$EcoCalculatorResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EcoCalculatorResultModelImplFromJson(json);

  @override
  @JsonKey(name: 'total_emission_week')
  double totalEmissionWeek;
  @override
  @JsonKey(name: 'specific_emission')
  EcoCalculatorResultModelSpecificEmission specificEmission;
  @override
  @JsonKey(name: 'AI_suggestion')
  String aiSuggestion;

  @override
  String toString() {
    return 'EcoCalculatorResultModel(totalEmissionWeek: $totalEmissionWeek, specificEmission: $specificEmission, aiSuggestion: $aiSuggestion)';
  }

  /// Create a copy of EcoCalculatorResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EcoCalculatorResultModelImplCopyWith<_$EcoCalculatorResultModelImpl>
      get copyWith => __$$EcoCalculatorResultModelImplCopyWithImpl<
          _$EcoCalculatorResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EcoCalculatorResultModelImplToJson(
      this,
    );
  }
}

abstract class _EcoCalculatorResultModel implements EcoCalculatorResultModel {
  factory _EcoCalculatorResultModel(
          {@JsonKey(name: 'total_emission_week') double totalEmissionWeek,
          @JsonKey(name: 'specific_emission')
          required EcoCalculatorResultModelSpecificEmission specificEmission,
          @JsonKey(name: 'AI_suggestion') required String aiSuggestion}) =
      _$EcoCalculatorResultModelImpl;

  factory _EcoCalculatorResultModel.fromJson(Map<String, dynamic> json) =
      _$EcoCalculatorResultModelImpl.fromJson;

  @override
  @JsonKey(name: 'total_emission_week')
  double get totalEmissionWeek;
  @JsonKey(name: 'total_emission_week')
  set totalEmissionWeek(double value);
  @override
  @JsonKey(name: 'specific_emission')
  EcoCalculatorResultModelSpecificEmission get specificEmission;
  @JsonKey(name: 'specific_emission')
  set specificEmission(EcoCalculatorResultModelSpecificEmission value);
  @override
  @JsonKey(name: 'AI_suggestion')
  String get aiSuggestion;
  @JsonKey(name: 'AI_suggestion')
  set aiSuggestion(String value);

  /// Create a copy of EcoCalculatorResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EcoCalculatorResultModelImplCopyWith<_$EcoCalculatorResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EcoCalculatorResultModelSpecificEmission
    _$EcoCalculatorResultModelSpecificEmissionFromJson(
        Map<String, dynamic> json) {
  return _EcoCalculatorResultModelSpecificEmission.fromJson(json);
}

/// @nodoc
mixin _$EcoCalculatorResultModelSpecificEmission {
  double get car => throw _privateConstructorUsedError;
  set car(double value) => throw _privateConstructorUsedError;
  int get plane => throw _privateConstructorUsedError;
  set plane(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_transport')
  int get publicTransport => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_transport')
  set publicTransport(int value) => throw _privateConstructorUsedError;
  int get energy => throw _privateConstructorUsedError;
  set energy(int value) => throw _privateConstructorUsedError;
  double get water => throw _privateConstructorUsedError;
  set water(double value) => throw _privateConstructorUsedError;
  double get garbage => throw _privateConstructorUsedError;
  set garbage(double value) => throw _privateConstructorUsedError;
  double get food => throw _privateConstructorUsedError;
  set food(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'watch_time')
  double get watchTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'watch_time')
  set watchTime(double value) => throw _privateConstructorUsedError;
  double get shopping => throw _privateConstructorUsedError;
  set shopping(double value) => throw _privateConstructorUsedError;

  /// Serializes this EcoCalculatorResultModelSpecificEmission to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EcoCalculatorResultModelSpecificEmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EcoCalculatorResultModelSpecificEmissionCopyWith<
          EcoCalculatorResultModelSpecificEmission>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EcoCalculatorResultModelSpecificEmissionCopyWith<$Res> {
  factory $EcoCalculatorResultModelSpecificEmissionCopyWith(
          EcoCalculatorResultModelSpecificEmission value,
          $Res Function(EcoCalculatorResultModelSpecificEmission) then) =
      _$EcoCalculatorResultModelSpecificEmissionCopyWithImpl<$Res,
          EcoCalculatorResultModelSpecificEmission>;
  @useResult
  $Res call(
      {double car,
      int plane,
      @JsonKey(name: 'public_transport') int publicTransport,
      int energy,
      double water,
      double garbage,
      double food,
      @JsonKey(name: 'watch_time') double watchTime,
      double shopping});
}

/// @nodoc
class _$EcoCalculatorResultModelSpecificEmissionCopyWithImpl<$Res,
        $Val extends EcoCalculatorResultModelSpecificEmission>
    implements $EcoCalculatorResultModelSpecificEmissionCopyWith<$Res> {
  _$EcoCalculatorResultModelSpecificEmissionCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EcoCalculatorResultModelSpecificEmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car = null,
    Object? plane = null,
    Object? publicTransport = null,
    Object? energy = null,
    Object? water = null,
    Object? garbage = null,
    Object? food = null,
    Object? watchTime = null,
    Object? shopping = null,
  }) {
    return _then(_value.copyWith(
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as double,
      plane: null == plane
          ? _value.plane
          : plane // ignore: cast_nullable_to_non_nullable
              as int,
      publicTransport: null == publicTransport
          ? _value.publicTransport
          : publicTransport // ignore: cast_nullable_to_non_nullable
              as int,
      energy: null == energy
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as int,
      water: null == water
          ? _value.water
          : water // ignore: cast_nullable_to_non_nullable
              as double,
      garbage: null == garbage
          ? _value.garbage
          : garbage // ignore: cast_nullable_to_non_nullable
              as double,
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as double,
      watchTime: null == watchTime
          ? _value.watchTime
          : watchTime // ignore: cast_nullable_to_non_nullable
              as double,
      shopping: null == shopping
          ? _value.shopping
          : shopping // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EcoCalculatorResultModelSpecificEmissionImplCopyWith<$Res>
    implements $EcoCalculatorResultModelSpecificEmissionCopyWith<$Res> {
  factory _$$EcoCalculatorResultModelSpecificEmissionImplCopyWith(
          _$EcoCalculatorResultModelSpecificEmissionImpl value,
          $Res Function(_$EcoCalculatorResultModelSpecificEmissionImpl) then) =
      __$$EcoCalculatorResultModelSpecificEmissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double car,
      int plane,
      @JsonKey(name: 'public_transport') int publicTransport,
      int energy,
      double water,
      double garbage,
      double food,
      @JsonKey(name: 'watch_time') double watchTime,
      double shopping});
}

/// @nodoc
class __$$EcoCalculatorResultModelSpecificEmissionImplCopyWithImpl<$Res>
    extends _$EcoCalculatorResultModelSpecificEmissionCopyWithImpl<$Res,
        _$EcoCalculatorResultModelSpecificEmissionImpl>
    implements _$$EcoCalculatorResultModelSpecificEmissionImplCopyWith<$Res> {
  __$$EcoCalculatorResultModelSpecificEmissionImplCopyWithImpl(
      _$EcoCalculatorResultModelSpecificEmissionImpl _value,
      $Res Function(_$EcoCalculatorResultModelSpecificEmissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of EcoCalculatorResultModelSpecificEmission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? car = null,
    Object? plane = null,
    Object? publicTransport = null,
    Object? energy = null,
    Object? water = null,
    Object? garbage = null,
    Object? food = null,
    Object? watchTime = null,
    Object? shopping = null,
  }) {
    return _then(_$EcoCalculatorResultModelSpecificEmissionImpl(
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as double,
      plane: null == plane
          ? _value.plane
          : plane // ignore: cast_nullable_to_non_nullable
              as int,
      publicTransport: null == publicTransport
          ? _value.publicTransport
          : publicTransport // ignore: cast_nullable_to_non_nullable
              as int,
      energy: null == energy
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as int,
      water: null == water
          ? _value.water
          : water // ignore: cast_nullable_to_non_nullable
              as double,
      garbage: null == garbage
          ? _value.garbage
          : garbage // ignore: cast_nullable_to_non_nullable
              as double,
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as double,
      watchTime: null == watchTime
          ? _value.watchTime
          : watchTime // ignore: cast_nullable_to_non_nullable
              as double,
      shopping: null == shopping
          ? _value.shopping
          : shopping // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EcoCalculatorResultModelSpecificEmissionImpl
    implements _EcoCalculatorResultModelSpecificEmission {
  _$EcoCalculatorResultModelSpecificEmissionImpl(
      {this.car = 0,
      this.plane = 0,
      @JsonKey(name: 'public_transport') this.publicTransport = 0,
      this.energy = 0,
      this.water = 0,
      this.garbage = 0,
      this.food = 0,
      @JsonKey(name: 'watch_time') this.watchTime = 0,
      this.shopping = 0});

  factory _$EcoCalculatorResultModelSpecificEmissionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EcoCalculatorResultModelSpecificEmissionImplFromJson(json);

  @override
  @JsonKey()
  double car;
  @override
  @JsonKey()
  int plane;
  @override
  @JsonKey(name: 'public_transport')
  int publicTransport;
  @override
  @JsonKey()
  int energy;
  @override
  @JsonKey()
  double water;
  @override
  @JsonKey()
  double garbage;
  @override
  @JsonKey()
  double food;
  @override
  @JsonKey(name: 'watch_time')
  double watchTime;
  @override
  @JsonKey()
  double shopping;

  @override
  String toString() {
    return 'EcoCalculatorResultModelSpecificEmission(car: $car, plane: $plane, publicTransport: $publicTransport, energy: $energy, water: $water, garbage: $garbage, food: $food, watchTime: $watchTime, shopping: $shopping)';
  }

  /// Create a copy of EcoCalculatorResultModelSpecificEmission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EcoCalculatorResultModelSpecificEmissionImplCopyWith<
          _$EcoCalculatorResultModelSpecificEmissionImpl>
      get copyWith =>
          __$$EcoCalculatorResultModelSpecificEmissionImplCopyWithImpl<
              _$EcoCalculatorResultModelSpecificEmissionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EcoCalculatorResultModelSpecificEmissionImplToJson(
      this,
    );
  }
}

abstract class _EcoCalculatorResultModelSpecificEmission
    implements EcoCalculatorResultModelSpecificEmission {
  factory _EcoCalculatorResultModelSpecificEmission(
      {double car,
      int plane,
      @JsonKey(name: 'public_transport') int publicTransport,
      int energy,
      double water,
      double garbage,
      double food,
      @JsonKey(name: 'watch_time') double watchTime,
      double shopping}) = _$EcoCalculatorResultModelSpecificEmissionImpl;

  factory _EcoCalculatorResultModelSpecificEmission.fromJson(
          Map<String, dynamic> json) =
      _$EcoCalculatorResultModelSpecificEmissionImpl.fromJson;

  @override
  double get car;
  set car(double value);
  @override
  int get plane;
  set plane(int value);
  @override
  @JsonKey(name: 'public_transport')
  int get publicTransport;
  @JsonKey(name: 'public_transport')
  set publicTransport(int value);
  @override
  int get energy;
  set energy(int value);
  @override
  double get water;
  set water(double value);
  @override
  double get garbage;
  set garbage(double value);
  @override
  double get food;
  set food(double value);
  @override
  @JsonKey(name: 'watch_time')
  double get watchTime;
  @JsonKey(name: 'watch_time')
  set watchTime(double value);
  @override
  double get shopping;
  set shopping(double value);

  /// Create a copy of EcoCalculatorResultModelSpecificEmission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EcoCalculatorResultModelSpecificEmissionImplCopyWith<
          _$EcoCalculatorResultModelSpecificEmissionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
