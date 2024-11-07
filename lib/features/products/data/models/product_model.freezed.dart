// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  ProductModelCarbonFootprint get carbonFootprint =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get durability => throw _privateConstructorUsedError;
  String get ecoCertification => throw _privateConstructorUsedError;
  bool get ecoFriendly => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get productUrl => throw _privateConstructorUsedError;
  String get recyclingInfo => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {ProductModelCarbonFootprint carbonFootprint,
      @JsonKey(name: '_id') String id,
      String name,
      String brand,
      String category,
      String currency,
      String description,
      String durability,
      String ecoCertification,
      bool ecoFriendly,
      String imageUrl,
      double price,
      String productUrl,
      String recyclingInfo});

  $ProductModelCarbonFootprintCopyWith<$Res> get carbonFootprint;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carbonFootprint = null,
    Object? id = null,
    Object? name = null,
    Object? brand = null,
    Object? category = null,
    Object? currency = null,
    Object? description = null,
    Object? durability = null,
    Object? ecoCertification = null,
    Object? ecoFriendly = null,
    Object? imageUrl = null,
    Object? price = null,
    Object? productUrl = null,
    Object? recyclingInfo = null,
  }) {
    return _then(_value.copyWith(
      carbonFootprint: null == carbonFootprint
          ? _value.carbonFootprint
          : carbonFootprint // ignore: cast_nullable_to_non_nullable
              as ProductModelCarbonFootprint,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      durability: null == durability
          ? _value.durability
          : durability // ignore: cast_nullable_to_non_nullable
              as String,
      ecoCertification: null == ecoCertification
          ? _value.ecoCertification
          : ecoCertification // ignore: cast_nullable_to_non_nullable
              as String,
      ecoFriendly: null == ecoFriendly
          ? _value.ecoFriendly
          : ecoFriendly // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      productUrl: null == productUrl
          ? _value.productUrl
          : productUrl // ignore: cast_nullable_to_non_nullable
              as String,
      recyclingInfo: null == recyclingInfo
          ? _value.recyclingInfo
          : recyclingInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCarbonFootprintCopyWith<$Res> get carbonFootprint {
    return $ProductModelCarbonFootprintCopyWith<$Res>(_value.carbonFootprint,
        (value) {
      return _then(_value.copyWith(carbonFootprint: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductModelCarbonFootprint carbonFootprint,
      @JsonKey(name: '_id') String id,
      String name,
      String brand,
      String category,
      String currency,
      String description,
      String durability,
      String ecoCertification,
      bool ecoFriendly,
      String imageUrl,
      double price,
      String productUrl,
      String recyclingInfo});

  @override
  $ProductModelCarbonFootprintCopyWith<$Res> get carbonFootprint;
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carbonFootprint = null,
    Object? id = null,
    Object? name = null,
    Object? brand = null,
    Object? category = null,
    Object? currency = null,
    Object? description = null,
    Object? durability = null,
    Object? ecoCertification = null,
    Object? ecoFriendly = null,
    Object? imageUrl = null,
    Object? price = null,
    Object? productUrl = null,
    Object? recyclingInfo = null,
  }) {
    return _then(_$ProductModelImpl(
      carbonFootprint: null == carbonFootprint
          ? _value.carbonFootprint
          : carbonFootprint // ignore: cast_nullable_to_non_nullable
              as ProductModelCarbonFootprint,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      durability: null == durability
          ? _value.durability
          : durability // ignore: cast_nullable_to_non_nullable
              as String,
      ecoCertification: null == ecoCertification
          ? _value.ecoCertification
          : ecoCertification // ignore: cast_nullable_to_non_nullable
              as String,
      ecoFriendly: null == ecoFriendly
          ? _value.ecoFriendly
          : ecoFriendly // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      productUrl: null == productUrl
          ? _value.productUrl
          : productUrl // ignore: cast_nullable_to_non_nullable
              as String,
      recyclingInfo: null == recyclingInfo
          ? _value.recyclingInfo
          : recyclingInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  _$ProductModelImpl(
      {required this.carbonFootprint,
      @JsonKey(name: '_id') required this.id,
      required this.name,
      required this.brand,
      required this.category,
      required this.currency,
      required this.description,
      required this.durability,
      required this.ecoCertification,
      required this.ecoFriendly,
      required this.imageUrl,
      required this.price,
      required this.productUrl,
      required this.recyclingInfo});

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final ProductModelCarbonFootprint carbonFootprint;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String brand;
  @override
  final String category;
  @override
  final String currency;
  @override
  final String description;
  @override
  final String durability;
  @override
  final String ecoCertification;
  @override
  final bool ecoFriendly;
  @override
  final String imageUrl;
  @override
  final double price;
  @override
  final String productUrl;
  @override
  final String recyclingInfo;

  @override
  String toString() {
    return 'ProductModel(carbonFootprint: $carbonFootprint, id: $id, name: $name, brand: $brand, category: $category, currency: $currency, description: $description, durability: $durability, ecoCertification: $ecoCertification, ecoFriendly: $ecoFriendly, imageUrl: $imageUrl, price: $price, productUrl: $productUrl, recyclingInfo: $recyclingInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.carbonFootprint, carbonFootprint) ||
                other.carbonFootprint == carbonFootprint) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.durability, durability) ||
                other.durability == durability) &&
            (identical(other.ecoCertification, ecoCertification) ||
                other.ecoCertification == ecoCertification) &&
            (identical(other.ecoFriendly, ecoFriendly) ||
                other.ecoFriendly == ecoFriendly) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.productUrl, productUrl) ||
                other.productUrl == productUrl) &&
            (identical(other.recyclingInfo, recyclingInfo) ||
                other.recyclingInfo == recyclingInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      carbonFootprint,
      id,
      name,
      brand,
      category,
      currency,
      description,
      durability,
      ecoCertification,
      ecoFriendly,
      imageUrl,
      price,
      productUrl,
      recyclingInfo);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
      {required final ProductModelCarbonFootprint carbonFootprint,
      @JsonKey(name: '_id') required final String id,
      required final String name,
      required final String brand,
      required final String category,
      required final String currency,
      required final String description,
      required final String durability,
      required final String ecoCertification,
      required final bool ecoFriendly,
      required final String imageUrl,
      required final double price,
      required final String productUrl,
      required final String recyclingInfo}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  ProductModelCarbonFootprint get carbonFootprint;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String get brand;
  @override
  String get category;
  @override
  String get currency;
  @override
  String get description;
  @override
  String get durability;
  @override
  String get ecoCertification;
  @override
  bool get ecoFriendly;
  @override
  String get imageUrl;
  @override
  double get price;
  @override
  String get productUrl;
  @override
  String get recyclingInfo;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductModelCarbonFootprint _$ProductModelCarbonFootprintFromJson(
    Map<String, dynamic> json) {
  return _ProductModelCarbonFootprint.fromJson(json);
}

/// @nodoc
mixin _$ProductModelCarbonFootprint {
  String get co2Emission => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  /// Serializes this ProductModelCarbonFootprint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModelCarbonFootprint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCarbonFootprintCopyWith<ProductModelCarbonFootprint>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCarbonFootprintCopyWith<$Res> {
  factory $ProductModelCarbonFootprintCopyWith(
          ProductModelCarbonFootprint value,
          $Res Function(ProductModelCarbonFootprint) then) =
      _$ProductModelCarbonFootprintCopyWithImpl<$Res,
          ProductModelCarbonFootprint>;
  @useResult
  $Res call({String co2Emission, String unit});
}

/// @nodoc
class _$ProductModelCarbonFootprintCopyWithImpl<$Res,
        $Val extends ProductModelCarbonFootprint>
    implements $ProductModelCarbonFootprintCopyWith<$Res> {
  _$ProductModelCarbonFootprintCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModelCarbonFootprint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? co2Emission = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      co2Emission: null == co2Emission
          ? _value.co2Emission
          : co2Emission // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelCarbonFootprintImplCopyWith<$Res>
    implements $ProductModelCarbonFootprintCopyWith<$Res> {
  factory _$$ProductModelCarbonFootprintImplCopyWith(
          _$ProductModelCarbonFootprintImpl value,
          $Res Function(_$ProductModelCarbonFootprintImpl) then) =
      __$$ProductModelCarbonFootprintImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String co2Emission, String unit});
}

/// @nodoc
class __$$ProductModelCarbonFootprintImplCopyWithImpl<$Res>
    extends _$ProductModelCarbonFootprintCopyWithImpl<$Res,
        _$ProductModelCarbonFootprintImpl>
    implements _$$ProductModelCarbonFootprintImplCopyWith<$Res> {
  __$$ProductModelCarbonFootprintImplCopyWithImpl(
      _$ProductModelCarbonFootprintImpl _value,
      $Res Function(_$ProductModelCarbonFootprintImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductModelCarbonFootprint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? co2Emission = null,
    Object? unit = null,
  }) {
    return _then(_$ProductModelCarbonFootprintImpl(
      co2Emission: null == co2Emission
          ? _value.co2Emission
          : co2Emission // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelCarbonFootprintImpl
    implements _ProductModelCarbonFootprint {
  _$ProductModelCarbonFootprintImpl(
      {required this.co2Emission, required this.unit});

  factory _$ProductModelCarbonFootprintImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductModelCarbonFootprintImplFromJson(json);

  @override
  final String co2Emission;
  @override
  final String unit;

  @override
  String toString() {
    return 'ProductModelCarbonFootprint(co2Emission: $co2Emission, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelCarbonFootprintImpl &&
            (identical(other.co2Emission, co2Emission) ||
                other.co2Emission == co2Emission) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, co2Emission, unit);

  /// Create a copy of ProductModelCarbonFootprint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelCarbonFootprintImplCopyWith<_$ProductModelCarbonFootprintImpl>
      get copyWith => __$$ProductModelCarbonFootprintImplCopyWithImpl<
          _$ProductModelCarbonFootprintImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelCarbonFootprintImplToJson(
      this,
    );
  }
}

abstract class _ProductModelCarbonFootprint
    implements ProductModelCarbonFootprint {
  factory _ProductModelCarbonFootprint(
      {required final String co2Emission,
      required final String unit}) = _$ProductModelCarbonFootprintImpl;

  factory _ProductModelCarbonFootprint.fromJson(Map<String, dynamic> json) =
      _$ProductModelCarbonFootprintImpl.fromJson;

  @override
  String get co2Emission;
  @override
  String get unit;

  /// Create a copy of ProductModelCarbonFootprint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelCarbonFootprintImplCopyWith<_$ProductModelCarbonFootprintImpl>
      get copyWith => throw _privateConstructorUsedError;
}
