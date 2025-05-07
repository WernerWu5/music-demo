// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartListEntity _$CartListEntityFromJson(Map<String, dynamic> json) {
  return _CartListEntity.fromJson(json);
}

/// @nodoc
mixin _$CartListEntity {
  List<Result>? get result => throw _privateConstructorUsedError;
  String? get displaySaleTotalPrice => throw _privateConstructorUsedError;

  /// Serializes this CartListEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartListEntityCopyWith<CartListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartListEntityCopyWith<$Res> {
  factory $CartListEntityCopyWith(
          CartListEntity value, $Res Function(CartListEntity) then) =
      _$CartListEntityCopyWithImpl<$Res, CartListEntity>;
  @useResult
  $Res call({List<Result>? result, String? displaySaleTotalPrice});
}

/// @nodoc
class _$CartListEntityCopyWithImpl<$Res, $Val extends CartListEntity>
    implements $CartListEntityCopyWith<$Res> {
  _$CartListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? displaySaleTotalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      displaySaleTotalPrice: freezed == displaySaleTotalPrice
          ? _value.displaySaleTotalPrice
          : displaySaleTotalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartListEntityImplCopyWith<$Res>
    implements $CartListEntityCopyWith<$Res> {
  factory _$$CartListEntityImplCopyWith(_$CartListEntityImpl value,
          $Res Function(_$CartListEntityImpl) then) =
      __$$CartListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Result>? result, String? displaySaleTotalPrice});
}

/// @nodoc
class __$$CartListEntityImplCopyWithImpl<$Res>
    extends _$CartListEntityCopyWithImpl<$Res, _$CartListEntityImpl>
    implements _$$CartListEntityImplCopyWith<$Res> {
  __$$CartListEntityImplCopyWithImpl(
      _$CartListEntityImpl _value, $Res Function(_$CartListEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? displaySaleTotalPrice = freezed,
  }) {
    return _then(_$CartListEntityImpl(
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      displaySaleTotalPrice: freezed == displaySaleTotalPrice
          ? _value.displaySaleTotalPrice
          : displaySaleTotalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartListEntityImpl implements _CartListEntity {
  const _$CartListEntityImpl(
      {final List<Result>? result, this.displaySaleTotalPrice})
      : _result = result;

  factory _$CartListEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartListEntityImplFromJson(json);

  final List<Result>? _result;
  @override
  List<Result>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? displaySaleTotalPrice;

  @override
  String toString() {
    return 'CartListEntity(result: $result, displaySaleTotalPrice: $displaySaleTotalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartListEntityImpl &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.displaySaleTotalPrice, displaySaleTotalPrice) ||
                other.displaySaleTotalPrice == displaySaleTotalPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_result), displaySaleTotalPrice);

  /// Create a copy of CartListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartListEntityImplCopyWith<_$CartListEntityImpl> get copyWith =>
      __$$CartListEntityImplCopyWithImpl<_$CartListEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartListEntityImplToJson(
      this,
    );
  }
}

abstract class _CartListEntity implements CartListEntity {
  const factory _CartListEntity(
      {final List<Result>? result,
      final String? displaySaleTotalPrice}) = _$CartListEntityImpl;

  factory _CartListEntity.fromJson(Map<String, dynamic> json) =
      _$CartListEntityImpl.fromJson;

  @override
  List<Result>? get result;
  @override
  String? get displaySaleTotalPrice;

  /// Create a copy of CartListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartListEntityImplCopyWith<_$CartListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String? get channelSaleUnitId => throw _privateConstructorUsedError;
  String? get saleItemId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get sellingPointDesc => throw _privateConstructorUsedError;
  List<dynamic>? get keywords => throw _privateConstructorUsedError;
  List<dynamic>? get mainImages => throw _privateConstructorUsedError;
  List<Spec>? get specs => throw _privateConstructorUsedError;
  MainSpecInfo? get mainSpecInfo => throw _privateConstructorUsedError;
  int? get stockNum => throw _privateConstructorUsedError;
  int? get moq => throw _privateConstructorUsedError;
  int? get stepQuantity => throw _privateConstructorUsedError;
  String? get salePrice => throw _privateConstructorUsedError;
  String? get salePriceCurrency => throw _privateConstructorUsedError;
  String? get displaySalePrice => throw _privateConstructorUsedError;
  String? get displaySalePriceCurrency => throw _privateConstructorUsedError;
  int? get quantityLimit => throw _privateConstructorUsedError;
  bool? get isActivityPrice => throw _privateConstructorUsedError;
  String? get originalSalePrice => throw _privateConstructorUsedError;
  String? get originalSalePriceCurrency => throw _privateConstructorUsedError;
  String? get originalDisplaySalePrice => throw _privateConstructorUsedError;
  String? get brandName => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String? get categoryName => throw _privateConstructorUsedError;
  String? get saleState => throw _privateConstructorUsedError;
  String? get originCountry => throw _privateConstructorUsedError;
  String? get shipsFrom => throw _privateConstructorUsedError;
  bool? get isLocalShipping => throw _privateConstructorUsedError;
  bool? get isCanCod => throw _privateConstructorUsedError;
  String? get grossWeight => throw _privateConstructorUsedError;
  String? get packingLength => throw _privateConstructorUsedError;
  String? get packingWidth => throw _privateConstructorUsedError;
  String? get packingHeight => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  bool? get selected => throw _privateConstructorUsedError;
  int? get gmtCreate => throw _privateConstructorUsedError;
  bool? get isCanOrder => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  /// Serializes this Result to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {String? channelSaleUnitId,
      String? saleItemId,
      String? title,
      String? sellingPointDesc,
      List<dynamic>? keywords,
      List<dynamic>? mainImages,
      List<Spec>? specs,
      MainSpecInfo? mainSpecInfo,
      int? stockNum,
      int? moq,
      int? stepQuantity,
      String? salePrice,
      String? salePriceCurrency,
      String? displaySalePrice,
      String? displaySalePriceCurrency,
      int? quantityLimit,
      bool? isActivityPrice,
      String? originalSalePrice,
      String? originalSalePriceCurrency,
      String? originalDisplaySalePrice,
      String? brandName,
      String? categoryId,
      String? categoryName,
      String? saleState,
      String? originCountry,
      String? shipsFrom,
      bool? isLocalShipping,
      bool? isCanCod,
      String? grossWeight,
      String? packingLength,
      String? packingWidth,
      String? packingHeight,
      int? quantity,
      bool? selected,
      int? gmtCreate,
      bool? isCanOrder,
      String? reason});

  $MainSpecInfoCopyWith<$Res>? get mainSpecInfo;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelSaleUnitId = freezed,
    Object? saleItemId = freezed,
    Object? title = freezed,
    Object? sellingPointDesc = freezed,
    Object? keywords = freezed,
    Object? mainImages = freezed,
    Object? specs = freezed,
    Object? mainSpecInfo = freezed,
    Object? stockNum = freezed,
    Object? moq = freezed,
    Object? stepQuantity = freezed,
    Object? salePrice = freezed,
    Object? salePriceCurrency = freezed,
    Object? displaySalePrice = freezed,
    Object? displaySalePriceCurrency = freezed,
    Object? quantityLimit = freezed,
    Object? isActivityPrice = freezed,
    Object? originalSalePrice = freezed,
    Object? originalSalePriceCurrency = freezed,
    Object? originalDisplaySalePrice = freezed,
    Object? brandName = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? saleState = freezed,
    Object? originCountry = freezed,
    Object? shipsFrom = freezed,
    Object? isLocalShipping = freezed,
    Object? isCanCod = freezed,
    Object? grossWeight = freezed,
    Object? packingLength = freezed,
    Object? packingWidth = freezed,
    Object? packingHeight = freezed,
    Object? quantity = freezed,
    Object? selected = freezed,
    Object? gmtCreate = freezed,
    Object? isCanOrder = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      channelSaleUnitId: freezed == channelSaleUnitId
          ? _value.channelSaleUnitId
          : channelSaleUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      saleItemId: freezed == saleItemId
          ? _value.saleItemId
          : saleItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPointDesc: freezed == sellingPointDesc
          ? _value.sellingPointDesc
          : sellingPointDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      keywords: freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      mainImages: freezed == mainImages
          ? _value.mainImages
          : mainImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      specs: freezed == specs
          ? _value.specs
          : specs // ignore: cast_nullable_to_non_nullable
              as List<Spec>?,
      mainSpecInfo: freezed == mainSpecInfo
          ? _value.mainSpecInfo
          : mainSpecInfo // ignore: cast_nullable_to_non_nullable
              as MainSpecInfo?,
      stockNum: freezed == stockNum
          ? _value.stockNum
          : stockNum // ignore: cast_nullable_to_non_nullable
              as int?,
      moq: freezed == moq
          ? _value.moq
          : moq // ignore: cast_nullable_to_non_nullable
              as int?,
      stepQuantity: freezed == stepQuantity
          ? _value.stepQuantity
          : stepQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      salePriceCurrency: freezed == salePriceCurrency
          ? _value.salePriceCurrency
          : salePriceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      displaySalePrice: freezed == displaySalePrice
          ? _value.displaySalePrice
          : displaySalePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      displaySalePriceCurrency: freezed == displaySalePriceCurrency
          ? _value.displaySalePriceCurrency
          : displaySalePriceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      quantityLimit: freezed == quantityLimit
          ? _value.quantityLimit
          : quantityLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      isActivityPrice: freezed == isActivityPrice
          ? _value.isActivityPrice
          : isActivityPrice // ignore: cast_nullable_to_non_nullable
              as bool?,
      originalSalePrice: freezed == originalSalePrice
          ? _value.originalSalePrice
          : originalSalePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      originalSalePriceCurrency: freezed == originalSalePriceCurrency
          ? _value.originalSalePriceCurrency
          : originalSalePriceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      originalDisplaySalePrice: freezed == originalDisplaySalePrice
          ? _value.originalDisplaySalePrice
          : originalDisplaySalePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      saleState: freezed == saleState
          ? _value.saleState
          : saleState // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      shipsFrom: freezed == shipsFrom
          ? _value.shipsFrom
          : shipsFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocalShipping: freezed == isLocalShipping
          ? _value.isLocalShipping
          : isLocalShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCanCod: freezed == isCanCod
          ? _value.isCanCod
          : isCanCod // ignore: cast_nullable_to_non_nullable
              as bool?,
      grossWeight: freezed == grossWeight
          ? _value.grossWeight
          : grossWeight // ignore: cast_nullable_to_non_nullable
              as String?,
      packingLength: freezed == packingLength
          ? _value.packingLength
          : packingLength // ignore: cast_nullable_to_non_nullable
              as String?,
      packingWidth: freezed == packingWidth
          ? _value.packingWidth
          : packingWidth // ignore: cast_nullable_to_non_nullable
              as String?,
      packingHeight: freezed == packingHeight
          ? _value.packingHeight
          : packingHeight // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
      gmtCreate: freezed == gmtCreate
          ? _value.gmtCreate
          : gmtCreate // ignore: cast_nullable_to_non_nullable
              as int?,
      isCanOrder: freezed == isCanOrder
          ? _value.isCanOrder
          : isCanOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainSpecInfoCopyWith<$Res>? get mainSpecInfo {
    if (_value.mainSpecInfo == null) {
      return null;
    }

    return $MainSpecInfoCopyWith<$Res>(_value.mainSpecInfo!, (value) {
      return _then(_value.copyWith(mainSpecInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? channelSaleUnitId,
      String? saleItemId,
      String? title,
      String? sellingPointDesc,
      List<dynamic>? keywords,
      List<dynamic>? mainImages,
      List<Spec>? specs,
      MainSpecInfo? mainSpecInfo,
      int? stockNum,
      int? moq,
      int? stepQuantity,
      String? salePrice,
      String? salePriceCurrency,
      String? displaySalePrice,
      String? displaySalePriceCurrency,
      int? quantityLimit,
      bool? isActivityPrice,
      String? originalSalePrice,
      String? originalSalePriceCurrency,
      String? originalDisplaySalePrice,
      String? brandName,
      String? categoryId,
      String? categoryName,
      String? saleState,
      String? originCountry,
      String? shipsFrom,
      bool? isLocalShipping,
      bool? isCanCod,
      String? grossWeight,
      String? packingLength,
      String? packingWidth,
      String? packingHeight,
      int? quantity,
      bool? selected,
      int? gmtCreate,
      bool? isCanOrder,
      String? reason});

  @override
  $MainSpecInfoCopyWith<$Res>? get mainSpecInfo;
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelSaleUnitId = freezed,
    Object? saleItemId = freezed,
    Object? title = freezed,
    Object? sellingPointDesc = freezed,
    Object? keywords = freezed,
    Object? mainImages = freezed,
    Object? specs = freezed,
    Object? mainSpecInfo = freezed,
    Object? stockNum = freezed,
    Object? moq = freezed,
    Object? stepQuantity = freezed,
    Object? salePrice = freezed,
    Object? salePriceCurrency = freezed,
    Object? displaySalePrice = freezed,
    Object? displaySalePriceCurrency = freezed,
    Object? quantityLimit = freezed,
    Object? isActivityPrice = freezed,
    Object? originalSalePrice = freezed,
    Object? originalSalePriceCurrency = freezed,
    Object? originalDisplaySalePrice = freezed,
    Object? brandName = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? saleState = freezed,
    Object? originCountry = freezed,
    Object? shipsFrom = freezed,
    Object? isLocalShipping = freezed,
    Object? isCanCod = freezed,
    Object? grossWeight = freezed,
    Object? packingLength = freezed,
    Object? packingWidth = freezed,
    Object? packingHeight = freezed,
    Object? quantity = freezed,
    Object? selected = freezed,
    Object? gmtCreate = freezed,
    Object? isCanOrder = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$ResultImpl(
      channelSaleUnitId: freezed == channelSaleUnitId
          ? _value.channelSaleUnitId
          : channelSaleUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      saleItemId: freezed == saleItemId
          ? _value.saleItemId
          : saleItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPointDesc: freezed == sellingPointDesc
          ? _value.sellingPointDesc
          : sellingPointDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      keywords: freezed == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      mainImages: freezed == mainImages
          ? _value._mainImages
          : mainImages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      specs: freezed == specs
          ? _value._specs
          : specs // ignore: cast_nullable_to_non_nullable
              as List<Spec>?,
      mainSpecInfo: freezed == mainSpecInfo
          ? _value.mainSpecInfo
          : mainSpecInfo // ignore: cast_nullable_to_non_nullable
              as MainSpecInfo?,
      stockNum: freezed == stockNum
          ? _value.stockNum
          : stockNum // ignore: cast_nullable_to_non_nullable
              as int?,
      moq: freezed == moq
          ? _value.moq
          : moq // ignore: cast_nullable_to_non_nullable
              as int?,
      stepQuantity: freezed == stepQuantity
          ? _value.stepQuantity
          : stepQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      salePriceCurrency: freezed == salePriceCurrency
          ? _value.salePriceCurrency
          : salePriceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      displaySalePrice: freezed == displaySalePrice
          ? _value.displaySalePrice
          : displaySalePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      displaySalePriceCurrency: freezed == displaySalePriceCurrency
          ? _value.displaySalePriceCurrency
          : displaySalePriceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      quantityLimit: freezed == quantityLimit
          ? _value.quantityLimit
          : quantityLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      isActivityPrice: freezed == isActivityPrice
          ? _value.isActivityPrice
          : isActivityPrice // ignore: cast_nullable_to_non_nullable
              as bool?,
      originalSalePrice: freezed == originalSalePrice
          ? _value.originalSalePrice
          : originalSalePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      originalSalePriceCurrency: freezed == originalSalePriceCurrency
          ? _value.originalSalePriceCurrency
          : originalSalePriceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      originalDisplaySalePrice: freezed == originalDisplaySalePrice
          ? _value.originalDisplaySalePrice
          : originalDisplaySalePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      saleState: freezed == saleState
          ? _value.saleState
          : saleState // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      shipsFrom: freezed == shipsFrom
          ? _value.shipsFrom
          : shipsFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocalShipping: freezed == isLocalShipping
          ? _value.isLocalShipping
          : isLocalShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCanCod: freezed == isCanCod
          ? _value.isCanCod
          : isCanCod // ignore: cast_nullable_to_non_nullable
              as bool?,
      grossWeight: freezed == grossWeight
          ? _value.grossWeight
          : grossWeight // ignore: cast_nullable_to_non_nullable
              as String?,
      packingLength: freezed == packingLength
          ? _value.packingLength
          : packingLength // ignore: cast_nullable_to_non_nullable
              as String?,
      packingWidth: freezed == packingWidth
          ? _value.packingWidth
          : packingWidth // ignore: cast_nullable_to_non_nullable
              as String?,
      packingHeight: freezed == packingHeight
          ? _value.packingHeight
          : packingHeight // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
      gmtCreate: freezed == gmtCreate
          ? _value.gmtCreate
          : gmtCreate // ignore: cast_nullable_to_non_nullable
              as int?,
      isCanOrder: freezed == isCanOrder
          ? _value.isCanOrder
          : isCanOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.channelSaleUnitId,
      this.saleItemId,
      this.title,
      this.sellingPointDesc,
      final List<dynamic>? keywords,
      final List<dynamic>? mainImages,
      final List<Spec>? specs,
      this.mainSpecInfo,
      this.stockNum,
      this.moq,
      this.stepQuantity,
      this.salePrice,
      this.salePriceCurrency,
      this.displaySalePrice,
      this.displaySalePriceCurrency,
      this.quantityLimit,
      this.isActivityPrice,
      this.originalSalePrice,
      this.originalSalePriceCurrency,
      this.originalDisplaySalePrice,
      this.brandName,
      this.categoryId,
      this.categoryName,
      this.saleState,
      this.originCountry,
      this.shipsFrom,
      this.isLocalShipping,
      this.isCanCod,
      this.grossWeight,
      this.packingLength,
      this.packingWidth,
      this.packingHeight,
      this.quantity,
      this.selected,
      this.gmtCreate,
      this.isCanOrder,
      this.reason})
      : _keywords = keywords,
        _mainImages = mainImages,
        _specs = specs;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final String? channelSaleUnitId;
  @override
  final String? saleItemId;
  @override
  final String? title;
  @override
  final String? sellingPointDesc;
  final List<dynamic>? _keywords;
  @override
  List<dynamic>? get keywords {
    final value = _keywords;
    if (value == null) return null;
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _mainImages;
  @override
  List<dynamic>? get mainImages {
    final value = _mainImages;
    if (value == null) return null;
    if (_mainImages is EqualUnmodifiableListView) return _mainImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Spec>? _specs;
  @override
  List<Spec>? get specs {
    final value = _specs;
    if (value == null) return null;
    if (_specs is EqualUnmodifiableListView) return _specs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final MainSpecInfo? mainSpecInfo;
  @override
  final int? stockNum;
  @override
  final int? moq;
  @override
  final int? stepQuantity;
  @override
  final String? salePrice;
  @override
  final String? salePriceCurrency;
  @override
  final String? displaySalePrice;
  @override
  final String? displaySalePriceCurrency;
  @override
  final int? quantityLimit;
  @override
  final bool? isActivityPrice;
  @override
  final String? originalSalePrice;
  @override
  final String? originalSalePriceCurrency;
  @override
  final String? originalDisplaySalePrice;
  @override
  final String? brandName;
  @override
  final String? categoryId;
  @override
  final String? categoryName;
  @override
  final String? saleState;
  @override
  final String? originCountry;
  @override
  final String? shipsFrom;
  @override
  final bool? isLocalShipping;
  @override
  final bool? isCanCod;
  @override
  final String? grossWeight;
  @override
  final String? packingLength;
  @override
  final String? packingWidth;
  @override
  final String? packingHeight;
  @override
  final int? quantity;
  @override
  final bool? selected;
  @override
  final int? gmtCreate;
  @override
  final bool? isCanOrder;
  @override
  final String? reason;

  @override
  String toString() {
    return 'Result(channelSaleUnitId: $channelSaleUnitId, saleItemId: $saleItemId, title: $title, sellingPointDesc: $sellingPointDesc, keywords: $keywords, mainImages: $mainImages, specs: $specs, mainSpecInfo: $mainSpecInfo, stockNum: $stockNum, moq: $moq, stepQuantity: $stepQuantity, salePrice: $salePrice, salePriceCurrency: $salePriceCurrency, displaySalePrice: $displaySalePrice, displaySalePriceCurrency: $displaySalePriceCurrency, quantityLimit: $quantityLimit, isActivityPrice: $isActivityPrice, originalSalePrice: $originalSalePrice, originalSalePriceCurrency: $originalSalePriceCurrency, originalDisplaySalePrice: $originalDisplaySalePrice, brandName: $brandName, categoryId: $categoryId, categoryName: $categoryName, saleState: $saleState, originCountry: $originCountry, shipsFrom: $shipsFrom, isLocalShipping: $isLocalShipping, isCanCod: $isCanCod, grossWeight: $grossWeight, packingLength: $packingLength, packingWidth: $packingWidth, packingHeight: $packingHeight, quantity: $quantity, selected: $selected, gmtCreate: $gmtCreate, isCanOrder: $isCanOrder, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.channelSaleUnitId, channelSaleUnitId) ||
                other.channelSaleUnitId == channelSaleUnitId) &&
            (identical(other.saleItemId, saleItemId) ||
                other.saleItemId == saleItemId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sellingPointDesc, sellingPointDesc) ||
                other.sellingPointDesc == sellingPointDesc) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
            const DeepCollectionEquality()
                .equals(other._mainImages, _mainImages) &&
            const DeepCollectionEquality().equals(other._specs, _specs) &&
            (identical(other.mainSpecInfo, mainSpecInfo) ||
                other.mainSpecInfo == mainSpecInfo) &&
            (identical(other.stockNum, stockNum) ||
                other.stockNum == stockNum) &&
            (identical(other.moq, moq) || other.moq == moq) &&
            (identical(other.stepQuantity, stepQuantity) ||
                other.stepQuantity == stepQuantity) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.salePriceCurrency, salePriceCurrency) ||
                other.salePriceCurrency == salePriceCurrency) &&
            (identical(other.displaySalePrice, displaySalePrice) ||
                other.displaySalePrice == displaySalePrice) &&
            (identical(other.displaySalePriceCurrency, displaySalePriceCurrency) ||
                other.displaySalePriceCurrency == displaySalePriceCurrency) &&
            (identical(other.quantityLimit, quantityLimit) ||
                other.quantityLimit == quantityLimit) &&
            (identical(other.isActivityPrice, isActivityPrice) ||
                other.isActivityPrice == isActivityPrice) &&
            (identical(other.originalSalePrice, originalSalePrice) ||
                other.originalSalePrice == originalSalePrice) &&
            (identical(other.originalSalePriceCurrency, originalSalePriceCurrency) ||
                other.originalSalePriceCurrency == originalSalePriceCurrency) &&
            (identical(
                    other.originalDisplaySalePrice, originalDisplaySalePrice) ||
                other.originalDisplaySalePrice == originalDisplaySalePrice) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.saleState, saleState) ||
                other.saleState == saleState) &&
            (identical(other.originCountry, originCountry) ||
                other.originCountry == originCountry) &&
            (identical(other.shipsFrom, shipsFrom) ||
                other.shipsFrom == shipsFrom) &&
            (identical(other.isLocalShipping, isLocalShipping) ||
                other.isLocalShipping == isLocalShipping) &&
            (identical(other.isCanCod, isCanCod) ||
                other.isCanCod == isCanCod) &&
            (identical(other.grossWeight, grossWeight) ||
                other.grossWeight == grossWeight) &&
            (identical(other.packingLength, packingLength) ||
                other.packingLength == packingLength) &&
            (identical(other.packingWidth, packingWidth) ||
                other.packingWidth == packingWidth) &&
            (identical(other.packingHeight, packingHeight) ||
                other.packingHeight == packingHeight) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.selected, selected) || other.selected == selected) &&
            (identical(other.gmtCreate, gmtCreate) || other.gmtCreate == gmtCreate) &&
            (identical(other.isCanOrder, isCanOrder) || other.isCanOrder == isCanOrder) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        channelSaleUnitId,
        saleItemId,
        title,
        sellingPointDesc,
        const DeepCollectionEquality().hash(_keywords),
        const DeepCollectionEquality().hash(_mainImages),
        const DeepCollectionEquality().hash(_specs),
        mainSpecInfo,
        stockNum,
        moq,
        stepQuantity,
        salePrice,
        salePriceCurrency,
        displaySalePrice,
        displaySalePriceCurrency,
        quantityLimit,
        isActivityPrice,
        originalSalePrice,
        originalSalePriceCurrency,
        originalDisplaySalePrice,
        brandName,
        categoryId,
        categoryName,
        saleState,
        originCountry,
        shipsFrom,
        isLocalShipping,
        isCanCod,
        grossWeight,
        packingLength,
        packingWidth,
        packingHeight,
        quantity,
        selected,
        gmtCreate,
        isCanOrder,
        reason
      ]);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final String? channelSaleUnitId,
      final String? saleItemId,
      final String? title,
      final String? sellingPointDesc,
      final List<dynamic>? keywords,
      final List<dynamic>? mainImages,
      final List<Spec>? specs,
      final MainSpecInfo? mainSpecInfo,
      final int? stockNum,
      final int? moq,
      final int? stepQuantity,
      final String? salePrice,
      final String? salePriceCurrency,
      final String? displaySalePrice,
      final String? displaySalePriceCurrency,
      final int? quantityLimit,
      final bool? isActivityPrice,
      final String? originalSalePrice,
      final String? originalSalePriceCurrency,
      final String? originalDisplaySalePrice,
      final String? brandName,
      final String? categoryId,
      final String? categoryName,
      final String? saleState,
      final String? originCountry,
      final String? shipsFrom,
      final bool? isLocalShipping,
      final bool? isCanCod,
      final String? grossWeight,
      final String? packingLength,
      final String? packingWidth,
      final String? packingHeight,
      final int? quantity,
      final bool? selected,
      final int? gmtCreate,
      final bool? isCanOrder,
      final String? reason}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  String? get channelSaleUnitId;
  @override
  String? get saleItemId;
  @override
  String? get title;
  @override
  String? get sellingPointDesc;
  @override
  List<dynamic>? get keywords;
  @override
  List<dynamic>? get mainImages;
  @override
  List<Spec>? get specs;
  @override
  MainSpecInfo? get mainSpecInfo;
  @override
  int? get stockNum;
  @override
  int? get moq;
  @override
  int? get stepQuantity;
  @override
  String? get salePrice;
  @override
  String? get salePriceCurrency;
  @override
  String? get displaySalePrice;
  @override
  String? get displaySalePriceCurrency;
  @override
  int? get quantityLimit;
  @override
  bool? get isActivityPrice;
  @override
  String? get originalSalePrice;
  @override
  String? get originalSalePriceCurrency;
  @override
  String? get originalDisplaySalePrice;
  @override
  String? get brandName;
  @override
  String? get categoryId;
  @override
  String? get categoryName;
  @override
  String? get saleState;
  @override
  String? get originCountry;
  @override
  String? get shipsFrom;
  @override
  bool? get isLocalShipping;
  @override
  bool? get isCanCod;
  @override
  String? get grossWeight;
  @override
  String? get packingLength;
  @override
  String? get packingWidth;
  @override
  String? get packingHeight;
  @override
  int? get quantity;
  @override
  bool? get selected;
  @override
  int? get gmtCreate;
  @override
  bool? get isCanOrder;
  @override
  String? get reason;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainSpecInfo _$MainSpecInfoFromJson(Map<String, dynamic> json) {
  return _MainSpecInfo.fromJson(json);
}

/// @nodoc
mixin _$MainSpecInfo {
  String? get image => throw _privateConstructorUsedError;
  Spec? get specItemInfo => throw _privateConstructorUsedError;

  /// Serializes this MainSpecInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MainSpecInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainSpecInfoCopyWith<MainSpecInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainSpecInfoCopyWith<$Res> {
  factory $MainSpecInfoCopyWith(
          MainSpecInfo value, $Res Function(MainSpecInfo) then) =
      _$MainSpecInfoCopyWithImpl<$Res, MainSpecInfo>;
  @useResult
  $Res call({String? image, Spec? specItemInfo});

  $SpecCopyWith<$Res>? get specItemInfo;
}

/// @nodoc
class _$MainSpecInfoCopyWithImpl<$Res, $Val extends MainSpecInfo>
    implements $MainSpecInfoCopyWith<$Res> {
  _$MainSpecInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainSpecInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? specItemInfo = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      specItemInfo: freezed == specItemInfo
          ? _value.specItemInfo
          : specItemInfo // ignore: cast_nullable_to_non_nullable
              as Spec?,
    ) as $Val);
  }

  /// Create a copy of MainSpecInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpecCopyWith<$Res>? get specItemInfo {
    if (_value.specItemInfo == null) {
      return null;
    }

    return $SpecCopyWith<$Res>(_value.specItemInfo!, (value) {
      return _then(_value.copyWith(specItemInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainSpecInfoImplCopyWith<$Res>
    implements $MainSpecInfoCopyWith<$Res> {
  factory _$$MainSpecInfoImplCopyWith(
          _$MainSpecInfoImpl value, $Res Function(_$MainSpecInfoImpl) then) =
      __$$MainSpecInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? image, Spec? specItemInfo});

  @override
  $SpecCopyWith<$Res>? get specItemInfo;
}

/// @nodoc
class __$$MainSpecInfoImplCopyWithImpl<$Res>
    extends _$MainSpecInfoCopyWithImpl<$Res, _$MainSpecInfoImpl>
    implements _$$MainSpecInfoImplCopyWith<$Res> {
  __$$MainSpecInfoImplCopyWithImpl(
      _$MainSpecInfoImpl _value, $Res Function(_$MainSpecInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainSpecInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? specItemInfo = freezed,
  }) {
    return _then(_$MainSpecInfoImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      specItemInfo: freezed == specItemInfo
          ? _value.specItemInfo
          : specItemInfo // ignore: cast_nullable_to_non_nullable
              as Spec?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainSpecInfoImpl implements _MainSpecInfo {
  const _$MainSpecInfoImpl({this.image, this.specItemInfo});

  factory _$MainSpecInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainSpecInfoImplFromJson(json);

  @override
  final String? image;
  @override
  final Spec? specItemInfo;

  @override
  String toString() {
    return 'MainSpecInfo(image: $image, specItemInfo: $specItemInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainSpecInfoImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.specItemInfo, specItemInfo) ||
                other.specItemInfo == specItemInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, specItemInfo);

  /// Create a copy of MainSpecInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainSpecInfoImplCopyWith<_$MainSpecInfoImpl> get copyWith =>
      __$$MainSpecInfoImplCopyWithImpl<_$MainSpecInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainSpecInfoImplToJson(
      this,
    );
  }
}

abstract class _MainSpecInfo implements MainSpecInfo {
  const factory _MainSpecInfo({final String? image, final Spec? specItemInfo}) =
      _$MainSpecInfoImpl;

  factory _MainSpecInfo.fromJson(Map<String, dynamic> json) =
      _$MainSpecInfoImpl.fromJson;

  @override
  String? get image;
  @override
  Spec? get specItemInfo;

  /// Create a copy of MainSpecInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainSpecInfoImplCopyWith<_$MainSpecInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Spec _$SpecFromJson(Map<String, dynamic> json) {
  return _Spec.fromJson(json);
}

/// @nodoc
mixin _$Spec {
  String? get specName => throw _privateConstructorUsedError;
  String? get specValue => throw _privateConstructorUsedError;
  String? get specType => throw _privateConstructorUsedError;

  /// Serializes this Spec to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Spec
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecCopyWith<Spec> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecCopyWith<$Res> {
  factory $SpecCopyWith(Spec value, $Res Function(Spec) then) =
      _$SpecCopyWithImpl<$Res, Spec>;
  @useResult
  $Res call({String? specName, String? specValue, String? specType});
}

/// @nodoc
class _$SpecCopyWithImpl<$Res, $Val extends Spec>
    implements $SpecCopyWith<$Res> {
  _$SpecCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Spec
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specName = freezed,
    Object? specValue = freezed,
    Object? specType = freezed,
  }) {
    return _then(_value.copyWith(
      specName: freezed == specName
          ? _value.specName
          : specName // ignore: cast_nullable_to_non_nullable
              as String?,
      specValue: freezed == specValue
          ? _value.specValue
          : specValue // ignore: cast_nullable_to_non_nullable
              as String?,
      specType: freezed == specType
          ? _value.specType
          : specType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecImplCopyWith<$Res> implements $SpecCopyWith<$Res> {
  factory _$$SpecImplCopyWith(
          _$SpecImpl value, $Res Function(_$SpecImpl) then) =
      __$$SpecImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? specName, String? specValue, String? specType});
}

/// @nodoc
class __$$SpecImplCopyWithImpl<$Res>
    extends _$SpecCopyWithImpl<$Res, _$SpecImpl>
    implements _$$SpecImplCopyWith<$Res> {
  __$$SpecImplCopyWithImpl(_$SpecImpl _value, $Res Function(_$SpecImpl) _then)
      : super(_value, _then);

  /// Create a copy of Spec
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specName = freezed,
    Object? specValue = freezed,
    Object? specType = freezed,
  }) {
    return _then(_$SpecImpl(
      specName: freezed == specName
          ? _value.specName
          : specName // ignore: cast_nullable_to_non_nullable
              as String?,
      specValue: freezed == specValue
          ? _value.specValue
          : specValue // ignore: cast_nullable_to_non_nullable
              as String?,
      specType: freezed == specType
          ? _value.specType
          : specType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecImpl implements _Spec {
  const _$SpecImpl({this.specName, this.specValue, this.specType});

  factory _$SpecImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecImplFromJson(json);

  @override
  final String? specName;
  @override
  final String? specValue;
  @override
  final String? specType;

  @override
  String toString() {
    return 'Spec(specName: $specName, specValue: $specValue, specType: $specType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecImpl &&
            (identical(other.specName, specName) ||
                other.specName == specName) &&
            (identical(other.specValue, specValue) ||
                other.specValue == specValue) &&
            (identical(other.specType, specType) ||
                other.specType == specType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, specName, specValue, specType);

  /// Create a copy of Spec
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecImplCopyWith<_$SpecImpl> get copyWith =>
      __$$SpecImplCopyWithImpl<_$SpecImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecImplToJson(
      this,
    );
  }
}

abstract class _Spec implements Spec {
  const factory _Spec(
      {final String? specName,
      final String? specValue,
      final String? specType}) = _$SpecImpl;

  factory _Spec.fromJson(Map<String, dynamic> json) = _$SpecImpl.fromJson;

  @override
  String? get specName;
  @override
  String? get specValue;
  @override
  String? get specType;

  /// Create a copy of Spec
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecImplCopyWith<_$SpecImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
