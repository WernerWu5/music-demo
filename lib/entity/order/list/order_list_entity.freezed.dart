// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderListEntity _$OrderListEntityFromJson(Map<String, dynamic> json) {
  return _OrderListEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderListEntity {
  PageMeta? get pageMeta => throw _privateConstructorUsedError;
  List<Item>? get items => throw _privateConstructorUsedError;

  /// Serializes this OrderListEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderListEntityCopyWith<OrderListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderListEntityCopyWith<$Res> {
  factory $OrderListEntityCopyWith(
          OrderListEntity value, $Res Function(OrderListEntity) then) =
      _$OrderListEntityCopyWithImpl<$Res, OrderListEntity>;
  @useResult
  $Res call({PageMeta? pageMeta, List<Item>? items});

  $PageMetaCopyWith<$Res>? get pageMeta;
}

/// @nodoc
class _$OrderListEntityCopyWithImpl<$Res, $Val extends OrderListEntity>
    implements $OrderListEntityCopyWith<$Res> {
  _$OrderListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageMeta = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      pageMeta: freezed == pageMeta
          ? _value.pageMeta
          : pageMeta // ignore: cast_nullable_to_non_nullable
              as PageMeta?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ) as $Val);
  }

  /// Create a copy of OrderListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageMetaCopyWith<$Res>? get pageMeta {
    if (_value.pageMeta == null) {
      return null;
    }

    return $PageMetaCopyWith<$Res>(_value.pageMeta!, (value) {
      return _then(_value.copyWith(pageMeta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderListEntityImplCopyWith<$Res>
    implements $OrderListEntityCopyWith<$Res> {
  factory _$$OrderListEntityImplCopyWith(_$OrderListEntityImpl value,
          $Res Function(_$OrderListEntityImpl) then) =
      __$$OrderListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageMeta? pageMeta, List<Item>? items});

  @override
  $PageMetaCopyWith<$Res>? get pageMeta;
}

/// @nodoc
class __$$OrderListEntityImplCopyWithImpl<$Res>
    extends _$OrderListEntityCopyWithImpl<$Res, _$OrderListEntityImpl>
    implements _$$OrderListEntityImplCopyWith<$Res> {
  __$$OrderListEntityImplCopyWithImpl(
      _$OrderListEntityImpl _value, $Res Function(_$OrderListEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageMeta = freezed,
    Object? items = freezed,
  }) {
    return _then(_$OrderListEntityImpl(
      pageMeta: freezed == pageMeta
          ? _value.pageMeta
          : pageMeta // ignore: cast_nullable_to_non_nullable
              as PageMeta?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderListEntityImpl implements _OrderListEntity {
  const _$OrderListEntityImpl({this.pageMeta, final List<Item>? items})
      : _items = items;

  factory _$OrderListEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderListEntityImplFromJson(json);

  @override
  final PageMeta? pageMeta;
  final List<Item>? _items;
  @override
  List<Item>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderListEntity(pageMeta: $pageMeta, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListEntityImpl &&
            (identical(other.pageMeta, pageMeta) ||
                other.pageMeta == pageMeta) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, pageMeta, const DeepCollectionEquality().hash(_items));

  /// Create a copy of OrderListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderListEntityImplCopyWith<_$OrderListEntityImpl> get copyWith =>
      __$$OrderListEntityImplCopyWithImpl<_$OrderListEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderListEntityImplToJson(
      this,
    );
  }
}

abstract class _OrderListEntity implements OrderListEntity {
  const factory _OrderListEntity(
      {final PageMeta? pageMeta,
      final List<Item>? items}) = _$OrderListEntityImpl;

  factory _OrderListEntity.fromJson(Map<String, dynamic> json) =
      _$OrderListEntityImpl.fromJson;

  @override
  PageMeta? get pageMeta;
  @override
  List<Item>? get items;

  /// Create a copy of OrderListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderListEntityImplCopyWith<_$OrderListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String? get distributionOrderId => throw _privateConstructorUsedError;
  String? get channelOrderNo => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get goodsTotalAmount => throw _privateConstructorUsedError;
  double? get goodsCollectionFreight => throw _privateConstructorUsedError;
  double? get internationalLogisticsFreight =>
      throw _privateConstructorUsedError;
  double? get terminalLogisticsFreight => throw _privateConstructorUsedError;
  double? get shippingAmount => throw _privateConstructorUsedError;
  double? get totalAmount => throw _privateConstructorUsedError;
  List<ReceiptItemList>? get receiptItemList =>
      throw _privateConstructorUsedError;
  List<PaidListElement>? get unPayList => throw _privateConstructorUsedError;
  List<PaidListElement>? get paidList => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get paymentState => throw _privateConstructorUsedError;
  String? get orderType => throw _privateConstructorUsedError;
  int? get gmtCreate => throw _privateConstructorUsedError;
  int? get gmtPay => throw _privateConstructorUsedError;
  int? get gmtDelivery => throw _privateConstructorUsedError;
  int? get gmtFinish => throw _privateConstructorUsedError;
  int? get gmtParentCreate => throw _privateConstructorUsedError;
  int? get paymentDeadline => throw _privateConstructorUsedError;
  String? get cancelState => throw _privateConstructorUsedError;
  List<OrderItemGroupList>? get orderItemGroupList =>
      throw _privateConstructorUsedError;
  String? get transportType => throw _privateConstructorUsedError;
  bool? get isCod => throw _privateConstructorUsedError;
  bool? get isCanCod => throw _privateConstructorUsedError;
  String? get remark => throw _privateConstructorUsedError;
  String? get parentOrderId => throw _privateConstructorUsedError;
  Consignee? get consignee => throw _privateConstructorUsedError;
  bool? get canCustomerDelete => throw _privateConstructorUsedError;

  /// Serializes this Item to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {String? distributionOrderId,
      String? channelOrderNo,
      String? currency,
      String? goodsTotalAmount,
      double? goodsCollectionFreight,
      double? internationalLogisticsFreight,
      double? terminalLogisticsFreight,
      double? shippingAmount,
      double? totalAmount,
      List<ReceiptItemList>? receiptItemList,
      List<PaidListElement>? unPayList,
      List<PaidListElement>? paidList,
      String? state,
      String? paymentState,
      String? orderType,
      int? gmtCreate,
      int? gmtPay,
      int? gmtDelivery,
      int? gmtFinish,
      int? gmtParentCreate,
      int? paymentDeadline,
      String? cancelState,
      List<OrderItemGroupList>? orderItemGroupList,
      String? transportType,
      bool? isCod,
      bool? isCanCod,
      String? remark,
      String? parentOrderId,
      Consignee? consignee,
      bool? canCustomerDelete});

  $ConsigneeCopyWith<$Res>? get consignee;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distributionOrderId = freezed,
    Object? channelOrderNo = freezed,
    Object? currency = freezed,
    Object? goodsTotalAmount = freezed,
    Object? goodsCollectionFreight = freezed,
    Object? internationalLogisticsFreight = freezed,
    Object? terminalLogisticsFreight = freezed,
    Object? shippingAmount = freezed,
    Object? totalAmount = freezed,
    Object? receiptItemList = freezed,
    Object? unPayList = freezed,
    Object? paidList = freezed,
    Object? state = freezed,
    Object? paymentState = freezed,
    Object? orderType = freezed,
    Object? gmtCreate = freezed,
    Object? gmtPay = freezed,
    Object? gmtDelivery = freezed,
    Object? gmtFinish = freezed,
    Object? gmtParentCreate = freezed,
    Object? paymentDeadline = freezed,
    Object? cancelState = freezed,
    Object? orderItemGroupList = freezed,
    Object? transportType = freezed,
    Object? isCod = freezed,
    Object? isCanCod = freezed,
    Object? remark = freezed,
    Object? parentOrderId = freezed,
    Object? consignee = freezed,
    Object? canCustomerDelete = freezed,
  }) {
    return _then(_value.copyWith(
      distributionOrderId: freezed == distributionOrderId
          ? _value.distributionOrderId
          : distributionOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelOrderNo: freezed == channelOrderNo
          ? _value.channelOrderNo
          : channelOrderNo // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      goodsTotalAmount: freezed == goodsTotalAmount
          ? _value.goodsTotalAmount
          : goodsTotalAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      goodsCollectionFreight: freezed == goodsCollectionFreight
          ? _value.goodsCollectionFreight
          : goodsCollectionFreight // ignore: cast_nullable_to_non_nullable
              as double?,
      internationalLogisticsFreight: freezed == internationalLogisticsFreight
          ? _value.internationalLogisticsFreight
          : internationalLogisticsFreight // ignore: cast_nullable_to_non_nullable
              as double?,
      terminalLogisticsFreight: freezed == terminalLogisticsFreight
          ? _value.terminalLogisticsFreight
          : terminalLogisticsFreight // ignore: cast_nullable_to_non_nullable
              as double?,
      shippingAmount: freezed == shippingAmount
          ? _value.shippingAmount
          : shippingAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      receiptItemList: freezed == receiptItemList
          ? _value.receiptItemList
          : receiptItemList // ignore: cast_nullable_to_non_nullable
              as List<ReceiptItemList>?,
      unPayList: freezed == unPayList
          ? _value.unPayList
          : unPayList // ignore: cast_nullable_to_non_nullable
              as List<PaidListElement>?,
      paidList: freezed == paidList
          ? _value.paidList
          : paidList // ignore: cast_nullable_to_non_nullable
              as List<PaidListElement>?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentState: freezed == paymentState
          ? _value.paymentState
          : paymentState // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      gmtCreate: freezed == gmtCreate
          ? _value.gmtCreate
          : gmtCreate // ignore: cast_nullable_to_non_nullable
              as int?,
      gmtPay: freezed == gmtPay
          ? _value.gmtPay
          : gmtPay // ignore: cast_nullable_to_non_nullable
              as int?,
      gmtDelivery: freezed == gmtDelivery
          ? _value.gmtDelivery
          : gmtDelivery // ignore: cast_nullable_to_non_nullable
              as int?,
      gmtFinish: freezed == gmtFinish
          ? _value.gmtFinish
          : gmtFinish // ignore: cast_nullable_to_non_nullable
              as int?,
      gmtParentCreate: freezed == gmtParentCreate
          ? _value.gmtParentCreate
          : gmtParentCreate // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentDeadline: freezed == paymentDeadline
          ? _value.paymentDeadline
          : paymentDeadline // ignore: cast_nullable_to_non_nullable
              as int?,
      cancelState: freezed == cancelState
          ? _value.cancelState
          : cancelState // ignore: cast_nullable_to_non_nullable
              as String?,
      orderItemGroupList: freezed == orderItemGroupList
          ? _value.orderItemGroupList
          : orderItemGroupList // ignore: cast_nullable_to_non_nullable
              as List<OrderItemGroupList>?,
      transportType: freezed == transportType
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String?,
      isCod: freezed == isCod
          ? _value.isCod
          : isCod // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCanCod: freezed == isCanCod
          ? _value.isCanCod
          : isCanCod // ignore: cast_nullable_to_non_nullable
              as bool?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      parentOrderId: freezed == parentOrderId
          ? _value.parentOrderId
          : parentOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      consignee: freezed == consignee
          ? _value.consignee
          : consignee // ignore: cast_nullable_to_non_nullable
              as Consignee?,
      canCustomerDelete: freezed == canCustomerDelete
          ? _value.canCustomerDelete
          : canCustomerDelete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsigneeCopyWith<$Res>? get consignee {
    if (_value.consignee == null) {
      return null;
    }

    return $ConsigneeCopyWith<$Res>(_value.consignee!, (value) {
      return _then(_value.copyWith(consignee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? distributionOrderId,
      String? channelOrderNo,
      String? currency,
      String? goodsTotalAmount,
      double? goodsCollectionFreight,
      double? internationalLogisticsFreight,
      double? terminalLogisticsFreight,
      double? shippingAmount,
      double? totalAmount,
      List<ReceiptItemList>? receiptItemList,
      List<PaidListElement>? unPayList,
      List<PaidListElement>? paidList,
      String? state,
      String? paymentState,
      String? orderType,
      int? gmtCreate,
      int? gmtPay,
      int? gmtDelivery,
      int? gmtFinish,
      int? gmtParentCreate,
      int? paymentDeadline,
      String? cancelState,
      List<OrderItemGroupList>? orderItemGroupList,
      String? transportType,
      bool? isCod,
      bool? isCanCod,
      String? remark,
      String? parentOrderId,
      Consignee? consignee,
      bool? canCustomerDelete});

  @override
  $ConsigneeCopyWith<$Res>? get consignee;
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distributionOrderId = freezed,
    Object? channelOrderNo = freezed,
    Object? currency = freezed,
    Object? goodsTotalAmount = freezed,
    Object? goodsCollectionFreight = freezed,
    Object? internationalLogisticsFreight = freezed,
    Object? terminalLogisticsFreight = freezed,
    Object? shippingAmount = freezed,
    Object? totalAmount = freezed,
    Object? receiptItemList = freezed,
    Object? unPayList = freezed,
    Object? paidList = freezed,
    Object? state = freezed,
    Object? paymentState = freezed,
    Object? orderType = freezed,
    Object? gmtCreate = freezed,
    Object? gmtPay = freezed,
    Object? gmtDelivery = freezed,
    Object? gmtFinish = freezed,
    Object? gmtParentCreate = freezed,
    Object? paymentDeadline = freezed,
    Object? cancelState = freezed,
    Object? orderItemGroupList = freezed,
    Object? transportType = freezed,
    Object? isCod = freezed,
    Object? isCanCod = freezed,
    Object? remark = freezed,
    Object? parentOrderId = freezed,
    Object? consignee = freezed,
    Object? canCustomerDelete = freezed,
  }) {
    return _then(_$ItemImpl(
      distributionOrderId: freezed == distributionOrderId
          ? _value.distributionOrderId
          : distributionOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelOrderNo: freezed == channelOrderNo
          ? _value.channelOrderNo
          : channelOrderNo // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      goodsTotalAmount: freezed == goodsTotalAmount
          ? _value.goodsTotalAmount
          : goodsTotalAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      goodsCollectionFreight: freezed == goodsCollectionFreight
          ? _value.goodsCollectionFreight
          : goodsCollectionFreight // ignore: cast_nullable_to_non_nullable
              as double?,
      internationalLogisticsFreight: freezed == internationalLogisticsFreight
          ? _value.internationalLogisticsFreight
          : internationalLogisticsFreight // ignore: cast_nullable_to_non_nullable
              as double?,
      terminalLogisticsFreight: freezed == terminalLogisticsFreight
          ? _value.terminalLogisticsFreight
          : terminalLogisticsFreight // ignore: cast_nullable_to_non_nullable
              as double?,
      shippingAmount: freezed == shippingAmount
          ? _value.shippingAmount
          : shippingAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      receiptItemList: freezed == receiptItemList
          ? _value._receiptItemList
          : receiptItemList // ignore: cast_nullable_to_non_nullable
              as List<ReceiptItemList>?,
      unPayList: freezed == unPayList
          ? _value._unPayList
          : unPayList // ignore: cast_nullable_to_non_nullable
              as List<PaidListElement>?,
      paidList: freezed == paidList
          ? _value._paidList
          : paidList // ignore: cast_nullable_to_non_nullable
              as List<PaidListElement>?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentState: freezed == paymentState
          ? _value.paymentState
          : paymentState // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      gmtCreate: freezed == gmtCreate
          ? _value.gmtCreate
          : gmtCreate // ignore: cast_nullable_to_non_nullable
              as int?,
      gmtPay: freezed == gmtPay
          ? _value.gmtPay
          : gmtPay // ignore: cast_nullable_to_non_nullable
              as int?,
      gmtDelivery: freezed == gmtDelivery
          ? _value.gmtDelivery
          : gmtDelivery // ignore: cast_nullable_to_non_nullable
              as int?,
      gmtFinish: freezed == gmtFinish
          ? _value.gmtFinish
          : gmtFinish // ignore: cast_nullable_to_non_nullable
              as int?,
      gmtParentCreate: freezed == gmtParentCreate
          ? _value.gmtParentCreate
          : gmtParentCreate // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentDeadline: freezed == paymentDeadline
          ? _value.paymentDeadline
          : paymentDeadline // ignore: cast_nullable_to_non_nullable
              as int?,
      cancelState: freezed == cancelState
          ? _value.cancelState
          : cancelState // ignore: cast_nullable_to_non_nullable
              as String?,
      orderItemGroupList: freezed == orderItemGroupList
          ? _value._orderItemGroupList
          : orderItemGroupList // ignore: cast_nullable_to_non_nullable
              as List<OrderItemGroupList>?,
      transportType: freezed == transportType
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String?,
      isCod: freezed == isCod
          ? _value.isCod
          : isCod // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCanCod: freezed == isCanCod
          ? _value.isCanCod
          : isCanCod // ignore: cast_nullable_to_non_nullable
              as bool?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      parentOrderId: freezed == parentOrderId
          ? _value.parentOrderId
          : parentOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      consignee: freezed == consignee
          ? _value.consignee
          : consignee // ignore: cast_nullable_to_non_nullable
              as Consignee?,
      canCustomerDelete: freezed == canCustomerDelete
          ? _value.canCustomerDelete
          : canCustomerDelete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {this.distributionOrderId,
      this.channelOrderNo,
      this.currency,
      this.goodsTotalAmount,
      this.goodsCollectionFreight,
      this.internationalLogisticsFreight,
      this.terminalLogisticsFreight,
      this.shippingAmount,
      this.totalAmount,
      final List<ReceiptItemList>? receiptItemList,
      final List<PaidListElement>? unPayList,
      final List<PaidListElement>? paidList,
      this.state,
      this.paymentState,
      this.orderType,
      this.gmtCreate,
      this.gmtPay,
      this.gmtDelivery,
      this.gmtFinish,
      this.gmtParentCreate,
      this.paymentDeadline,
      this.cancelState,
      final List<OrderItemGroupList>? orderItemGroupList,
      this.transportType,
      this.isCod,
      this.isCanCod,
      this.remark,
      this.parentOrderId,
      this.consignee,
      this.canCustomerDelete})
      : _receiptItemList = receiptItemList,
        _unPayList = unPayList,
        _paidList = paidList,
        _orderItemGroupList = orderItemGroupList;

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  final String? distributionOrderId;
  @override
  final String? channelOrderNo;
  @override
  final String? currency;
  @override
  final String? goodsTotalAmount;
  @override
  final double? goodsCollectionFreight;
  @override
  final double? internationalLogisticsFreight;
  @override
  final double? terminalLogisticsFreight;
  @override
  final double? shippingAmount;
  @override
  final double? totalAmount;
  final List<ReceiptItemList>? _receiptItemList;
  @override
  List<ReceiptItemList>? get receiptItemList {
    final value = _receiptItemList;
    if (value == null) return null;
    if (_receiptItemList is EqualUnmodifiableListView) return _receiptItemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PaidListElement>? _unPayList;
  @override
  List<PaidListElement>? get unPayList {
    final value = _unPayList;
    if (value == null) return null;
    if (_unPayList is EqualUnmodifiableListView) return _unPayList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PaidListElement>? _paidList;
  @override
  List<PaidListElement>? get paidList {
    final value = _paidList;
    if (value == null) return null;
    if (_paidList is EqualUnmodifiableListView) return _paidList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? state;
  @override
  final String? paymentState;
  @override
  final String? orderType;
  @override
  final int? gmtCreate;
  @override
  final int? gmtPay;
  @override
  final int? gmtDelivery;
  @override
  final int? gmtFinish;
  @override
  final int? gmtParentCreate;
  @override
  final int? paymentDeadline;
  @override
  final String? cancelState;
  final List<OrderItemGroupList>? _orderItemGroupList;
  @override
  List<OrderItemGroupList>? get orderItemGroupList {
    final value = _orderItemGroupList;
    if (value == null) return null;
    if (_orderItemGroupList is EqualUnmodifiableListView)
      return _orderItemGroupList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? transportType;
  @override
  final bool? isCod;
  @override
  final bool? isCanCod;
  @override
  final String? remark;
  @override
  final String? parentOrderId;
  @override
  final Consignee? consignee;
  @override
  final bool? canCustomerDelete;

  @override
  String toString() {
    return 'Item(distributionOrderId: $distributionOrderId, channelOrderNo: $channelOrderNo, currency: $currency, goodsTotalAmount: $goodsTotalAmount, goodsCollectionFreight: $goodsCollectionFreight, internationalLogisticsFreight: $internationalLogisticsFreight, terminalLogisticsFreight: $terminalLogisticsFreight, shippingAmount: $shippingAmount, totalAmount: $totalAmount, receiptItemList: $receiptItemList, unPayList: $unPayList, paidList: $paidList, state: $state, paymentState: $paymentState, orderType: $orderType, gmtCreate: $gmtCreate, gmtPay: $gmtPay, gmtDelivery: $gmtDelivery, gmtFinish: $gmtFinish, gmtParentCreate: $gmtParentCreate, paymentDeadline: $paymentDeadline, cancelState: $cancelState, orderItemGroupList: $orderItemGroupList, transportType: $transportType, isCod: $isCod, isCanCod: $isCanCod, remark: $remark, parentOrderId: $parentOrderId, consignee: $consignee, canCustomerDelete: $canCustomerDelete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.distributionOrderId, distributionOrderId) ||
                other.distributionOrderId == distributionOrderId) &&
            (identical(other.channelOrderNo, channelOrderNo) ||
                other.channelOrderNo == channelOrderNo) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.goodsTotalAmount, goodsTotalAmount) ||
                other.goodsTotalAmount == goodsTotalAmount) &&
            (identical(other.goodsCollectionFreight, goodsCollectionFreight) ||
                other.goodsCollectionFreight == goodsCollectionFreight) &&
            (identical(other.internationalLogisticsFreight, internationalLogisticsFreight) ||
                other.internationalLogisticsFreight ==
                    internationalLogisticsFreight) &&
            (identical(
                    other.terminalLogisticsFreight, terminalLogisticsFreight) ||
                other.terminalLogisticsFreight == terminalLogisticsFreight) &&
            (identical(other.shippingAmount, shippingAmount) ||
                other.shippingAmount == shippingAmount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            const DeepCollectionEquality()
                .equals(other._receiptItemList, _receiptItemList) &&
            const DeepCollectionEquality()
                .equals(other._unPayList, _unPayList) &&
            const DeepCollectionEquality().equals(other._paidList, _paidList) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.paymentState, paymentState) ||
                other.paymentState == paymentState) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.gmtCreate, gmtCreate) ||
                other.gmtCreate == gmtCreate) &&
            (identical(other.gmtPay, gmtPay) || other.gmtPay == gmtPay) &&
            (identical(other.gmtDelivery, gmtDelivery) ||
                other.gmtDelivery == gmtDelivery) &&
            (identical(other.gmtFinish, gmtFinish) ||
                other.gmtFinish == gmtFinish) &&
            (identical(other.gmtParentCreate, gmtParentCreate) ||
                other.gmtParentCreate == gmtParentCreate) &&
            (identical(other.paymentDeadline, paymentDeadline) ||
                other.paymentDeadline == paymentDeadline) &&
            (identical(other.cancelState, cancelState) ||
                other.cancelState == cancelState) &&
            const DeepCollectionEquality()
                .equals(other._orderItemGroupList, _orderItemGroupList) &&
            (identical(other.transportType, transportType) ||
                other.transportType == transportType) &&
            (identical(other.isCod, isCod) || other.isCod == isCod) &&
            (identical(other.isCanCod, isCanCod) ||
                other.isCanCod == isCanCod) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.parentOrderId, parentOrderId) ||
                other.parentOrderId == parentOrderId) &&
            (identical(other.consignee, consignee) ||
                other.consignee == consignee) &&
            (identical(other.canCustomerDelete, canCustomerDelete) ||
                other.canCustomerDelete == canCustomerDelete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        distributionOrderId,
        channelOrderNo,
        currency,
        goodsTotalAmount,
        goodsCollectionFreight,
        internationalLogisticsFreight,
        terminalLogisticsFreight,
        shippingAmount,
        totalAmount,
        const DeepCollectionEquality().hash(_receiptItemList),
        const DeepCollectionEquality().hash(_unPayList),
        const DeepCollectionEquality().hash(_paidList),
        state,
        paymentState,
        orderType,
        gmtCreate,
        gmtPay,
        gmtDelivery,
        gmtFinish,
        gmtParentCreate,
        paymentDeadline,
        cancelState,
        const DeepCollectionEquality().hash(_orderItemGroupList),
        transportType,
        isCod,
        isCanCod,
        remark,
        parentOrderId,
        consignee,
        canCustomerDelete
      ]);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {final String? distributionOrderId,
      final String? channelOrderNo,
      final String? currency,
      final String? goodsTotalAmount,
      final double? goodsCollectionFreight,
      final double? internationalLogisticsFreight,
      final double? terminalLogisticsFreight,
      final double? shippingAmount,
      final double? totalAmount,
      final List<ReceiptItemList>? receiptItemList,
      final List<PaidListElement>? unPayList,
      final List<PaidListElement>? paidList,
      final String? state,
      final String? paymentState,
      final String? orderType,
      final int? gmtCreate,
      final int? gmtPay,
      final int? gmtDelivery,
      final int? gmtFinish,
      final int? gmtParentCreate,
      final int? paymentDeadline,
      final String? cancelState,
      final List<OrderItemGroupList>? orderItemGroupList,
      final String? transportType,
      final bool? isCod,
      final bool? isCanCod,
      final String? remark,
      final String? parentOrderId,
      final Consignee? consignee,
      final bool? canCustomerDelete}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  String? get distributionOrderId;
  @override
  String? get channelOrderNo;
  @override
  String? get currency;
  @override
  String? get goodsTotalAmount;
  @override
  double? get goodsCollectionFreight;
  @override
  double? get internationalLogisticsFreight;
  @override
  double? get terminalLogisticsFreight;
  @override
  double? get shippingAmount;
  @override
  double? get totalAmount;
  @override
  List<ReceiptItemList>? get receiptItemList;
  @override
  List<PaidListElement>? get unPayList;
  @override
  List<PaidListElement>? get paidList;
  @override
  String? get state;
  @override
  String? get paymentState;
  @override
  String? get orderType;
  @override
  int? get gmtCreate;
  @override
  int? get gmtPay;
  @override
  int? get gmtDelivery;
  @override
  int? get gmtFinish;
  @override
  int? get gmtParentCreate;
  @override
  int? get paymentDeadline;
  @override
  String? get cancelState;
  @override
  List<OrderItemGroupList>? get orderItemGroupList;
  @override
  String? get transportType;
  @override
  bool? get isCod;
  @override
  bool? get isCanCod;
  @override
  String? get remark;
  @override
  String? get parentOrderId;
  @override
  Consignee? get consignee;
  @override
  bool? get canCustomerDelete;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Consignee _$ConsigneeFromJson(Map<String, dynamic> json) {
  return _Consignee.fromJson(json);
}

/// @nodoc
mixin _$Consignee {
  String? get phone => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get province => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get detailInfo => throw _privateConstructorUsedError;
  String? get zip => throw _privateConstructorUsedError;
  String? get virtualPostcode => throw _privateConstructorUsedError;

  /// Serializes this Consignee to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Consignee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsigneeCopyWith<Consignee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsigneeCopyWith<$Res> {
  factory $ConsigneeCopyWith(Consignee value, $Res Function(Consignee) then) =
      _$ConsigneeCopyWithImpl<$Res, Consignee>;
  @useResult
  $Res call(
      {String? phone,
      String? phoneNumber,
      String? name,
      String? country,
      String? province,
      String? city,
      String? district,
      String? street,
      String? detailInfo,
      String? zip,
      String? virtualPostcode});
}

/// @nodoc
class _$ConsigneeCopyWithImpl<$Res, $Val extends Consignee>
    implements $ConsigneeCopyWith<$Res> {
  _$ConsigneeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Consignee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? phoneNumber = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? district = freezed,
    Object? street = freezed,
    Object? detailInfo = freezed,
    Object? zip = freezed,
    Object? virtualPostcode = freezed,
  }) {
    return _then(_value.copyWith(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      detailInfo: freezed == detailInfo
          ? _value.detailInfo
          : detailInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      virtualPostcode: freezed == virtualPostcode
          ? _value.virtualPostcode
          : virtualPostcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsigneeImplCopyWith<$Res>
    implements $ConsigneeCopyWith<$Res> {
  factory _$$ConsigneeImplCopyWith(
          _$ConsigneeImpl value, $Res Function(_$ConsigneeImpl) then) =
      __$$ConsigneeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? phone,
      String? phoneNumber,
      String? name,
      String? country,
      String? province,
      String? city,
      String? district,
      String? street,
      String? detailInfo,
      String? zip,
      String? virtualPostcode});
}

/// @nodoc
class __$$ConsigneeImplCopyWithImpl<$Res>
    extends _$ConsigneeCopyWithImpl<$Res, _$ConsigneeImpl>
    implements _$$ConsigneeImplCopyWith<$Res> {
  __$$ConsigneeImplCopyWithImpl(
      _$ConsigneeImpl _value, $Res Function(_$ConsigneeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Consignee
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? phoneNumber = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? district = freezed,
    Object? street = freezed,
    Object? detailInfo = freezed,
    Object? zip = freezed,
    Object? virtualPostcode = freezed,
  }) {
    return _then(_$ConsigneeImpl(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      detailInfo: freezed == detailInfo
          ? _value.detailInfo
          : detailInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
      virtualPostcode: freezed == virtualPostcode
          ? _value.virtualPostcode
          : virtualPostcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsigneeImpl implements _Consignee {
  const _$ConsigneeImpl(
      {this.phone,
      this.phoneNumber,
      this.name,
      this.country,
      this.province,
      this.city,
      this.district,
      this.street,
      this.detailInfo,
      this.zip,
      this.virtualPostcode});

  factory _$ConsigneeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsigneeImplFromJson(json);

  @override
  final String? phone;
  @override
  final String? phoneNumber;
  @override
  final String? name;
  @override
  final String? country;
  @override
  final String? province;
  @override
  final String? city;
  @override
  final String? district;
  @override
  final String? street;
  @override
  final String? detailInfo;
  @override
  final String? zip;
  @override
  final String? virtualPostcode;

  @override
  String toString() {
    return 'Consignee(phone: $phone, phoneNumber: $phoneNumber, name: $name, country: $country, province: $province, city: $city, district: $district, street: $street, detailInfo: $detailInfo, zip: $zip, virtualPostcode: $virtualPostcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsigneeImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.detailInfo, detailInfo) ||
                other.detailInfo == detailInfo) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.virtualPostcode, virtualPostcode) ||
                other.virtualPostcode == virtualPostcode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      phone,
      phoneNumber,
      name,
      country,
      province,
      city,
      district,
      street,
      detailInfo,
      zip,
      virtualPostcode);

  /// Create a copy of Consignee
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsigneeImplCopyWith<_$ConsigneeImpl> get copyWith =>
      __$$ConsigneeImplCopyWithImpl<_$ConsigneeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsigneeImplToJson(
      this,
    );
  }
}

abstract class _Consignee implements Consignee {
  const factory _Consignee(
      {final String? phone,
      final String? phoneNumber,
      final String? name,
      final String? country,
      final String? province,
      final String? city,
      final String? district,
      final String? street,
      final String? detailInfo,
      final String? zip,
      final String? virtualPostcode}) = _$ConsigneeImpl;

  factory _Consignee.fromJson(Map<String, dynamic> json) =
      _$ConsigneeImpl.fromJson;

  @override
  String? get phone;
  @override
  String? get phoneNumber;
  @override
  String? get name;
  @override
  String? get country;
  @override
  String? get province;
  @override
  String? get city;
  @override
  String? get district;
  @override
  String? get street;
  @override
  String? get detailInfo;
  @override
  String? get zip;
  @override
  String? get virtualPostcode;

  /// Create a copy of Consignee
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsigneeImplCopyWith<_$ConsigneeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItemGroupList _$OrderItemGroupListFromJson(Map<String, dynamic> json) {
  return _OrderItemGroupList.fromJson(json);
}

/// @nodoc
mixin _$OrderItemGroupList {
  bool? get isLocalShipping => throw _privateConstructorUsedError;
  String? get transportType => throw _privateConstructorUsedError;
  bool? get isCanCod => throw _privateConstructorUsedError;
  List<OrderSuItemList>? get orderSuItemList =>
      throw _privateConstructorUsedError;

  /// Serializes this OrderItemGroupList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemGroupList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemGroupListCopyWith<OrderItemGroupList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemGroupListCopyWith<$Res> {
  factory $OrderItemGroupListCopyWith(
          OrderItemGroupList value, $Res Function(OrderItemGroupList) then) =
      _$OrderItemGroupListCopyWithImpl<$Res, OrderItemGroupList>;
  @useResult
  $Res call(
      {bool? isLocalShipping,
      String? transportType,
      bool? isCanCod,
      List<OrderSuItemList>? orderSuItemList});
}

/// @nodoc
class _$OrderItemGroupListCopyWithImpl<$Res, $Val extends OrderItemGroupList>
    implements $OrderItemGroupListCopyWith<$Res> {
  _$OrderItemGroupListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemGroupList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLocalShipping = freezed,
    Object? transportType = freezed,
    Object? isCanCod = freezed,
    Object? orderSuItemList = freezed,
  }) {
    return _then(_value.copyWith(
      isLocalShipping: freezed == isLocalShipping
          ? _value.isLocalShipping
          : isLocalShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      transportType: freezed == transportType
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String?,
      isCanCod: freezed == isCanCod
          ? _value.isCanCod
          : isCanCod // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderSuItemList: freezed == orderSuItemList
          ? _value.orderSuItemList
          : orderSuItemList // ignore: cast_nullable_to_non_nullable
              as List<OrderSuItemList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemGroupListImplCopyWith<$Res>
    implements $OrderItemGroupListCopyWith<$Res> {
  factory _$$OrderItemGroupListImplCopyWith(_$OrderItemGroupListImpl value,
          $Res Function(_$OrderItemGroupListImpl) then) =
      __$$OrderItemGroupListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isLocalShipping,
      String? transportType,
      bool? isCanCod,
      List<OrderSuItemList>? orderSuItemList});
}

/// @nodoc
class __$$OrderItemGroupListImplCopyWithImpl<$Res>
    extends _$OrderItemGroupListCopyWithImpl<$Res, _$OrderItemGroupListImpl>
    implements _$$OrderItemGroupListImplCopyWith<$Res> {
  __$$OrderItemGroupListImplCopyWithImpl(_$OrderItemGroupListImpl _value,
      $Res Function(_$OrderItemGroupListImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderItemGroupList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLocalShipping = freezed,
    Object? transportType = freezed,
    Object? isCanCod = freezed,
    Object? orderSuItemList = freezed,
  }) {
    return _then(_$OrderItemGroupListImpl(
      isLocalShipping: freezed == isLocalShipping
          ? _value.isLocalShipping
          : isLocalShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      transportType: freezed == transportType
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String?,
      isCanCod: freezed == isCanCod
          ? _value.isCanCod
          : isCanCod // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderSuItemList: freezed == orderSuItemList
          ? _value._orderSuItemList
          : orderSuItemList // ignore: cast_nullable_to_non_nullable
              as List<OrderSuItemList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemGroupListImpl implements _OrderItemGroupList {
  const _$OrderItemGroupListImpl(
      {this.isLocalShipping,
      this.transportType,
      this.isCanCod,
      final List<OrderSuItemList>? orderSuItemList})
      : _orderSuItemList = orderSuItemList;

  factory _$OrderItemGroupListImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemGroupListImplFromJson(json);

  @override
  final bool? isLocalShipping;
  @override
  final String? transportType;
  @override
  final bool? isCanCod;
  final List<OrderSuItemList>? _orderSuItemList;
  @override
  List<OrderSuItemList>? get orderSuItemList {
    final value = _orderSuItemList;
    if (value == null) return null;
    if (_orderSuItemList is EqualUnmodifiableListView) return _orderSuItemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderItemGroupList(isLocalShipping: $isLocalShipping, transportType: $transportType, isCanCod: $isCanCod, orderSuItemList: $orderSuItemList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemGroupListImpl &&
            (identical(other.isLocalShipping, isLocalShipping) ||
                other.isLocalShipping == isLocalShipping) &&
            (identical(other.transportType, transportType) ||
                other.transportType == transportType) &&
            (identical(other.isCanCod, isCanCod) ||
                other.isCanCod == isCanCod) &&
            const DeepCollectionEquality()
                .equals(other._orderSuItemList, _orderSuItemList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isLocalShipping, transportType,
      isCanCod, const DeepCollectionEquality().hash(_orderSuItemList));

  /// Create a copy of OrderItemGroupList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemGroupListImplCopyWith<_$OrderItemGroupListImpl> get copyWith =>
      __$$OrderItemGroupListImplCopyWithImpl<_$OrderItemGroupListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemGroupListImplToJson(
      this,
    );
  }
}

abstract class _OrderItemGroupList implements OrderItemGroupList {
  const factory _OrderItemGroupList(
      {final bool? isLocalShipping,
      final String? transportType,
      final bool? isCanCod,
      final List<OrderSuItemList>? orderSuItemList}) = _$OrderItemGroupListImpl;

  factory _OrderItemGroupList.fromJson(Map<String, dynamic> json) =
      _$OrderItemGroupListImpl.fromJson;

  @override
  bool? get isLocalShipping;
  @override
  String? get transportType;
  @override
  bool? get isCanCod;
  @override
  List<OrderSuItemList>? get orderSuItemList;

  /// Create a copy of OrderItemGroupList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemGroupListImplCopyWith<_$OrderItemGroupListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderSuItemList _$OrderSuItemListFromJson(Map<String, dynamic> json) {
  return _OrderSuItemList.fromJson(json);
}

/// @nodoc
mixin _$OrderSuItemList {
  String? get title => throw _privateConstructorUsedError;
  String? get mainImage => throw _privateConstructorUsedError;
  List<OrderGoodsList>? get orderGoodsList =>
      throw _privateConstructorUsedError;
  String? get subItemId => throw _privateConstructorUsedError;

  /// Serializes this OrderSuItemList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderSuItemList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderSuItemListCopyWith<OrderSuItemList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderSuItemListCopyWith<$Res> {
  factory $OrderSuItemListCopyWith(
          OrderSuItemList value, $Res Function(OrderSuItemList) then) =
      _$OrderSuItemListCopyWithImpl<$Res, OrderSuItemList>;
  @useResult
  $Res call(
      {String? title,
      String? mainImage,
      List<OrderGoodsList>? orderGoodsList,
      String? subItemId});
}

/// @nodoc
class _$OrderSuItemListCopyWithImpl<$Res, $Val extends OrderSuItemList>
    implements $OrderSuItemListCopyWith<$Res> {
  _$OrderSuItemListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderSuItemList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? mainImage = freezed,
    Object? orderGoodsList = freezed,
    Object? subItemId = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      orderGoodsList: freezed == orderGoodsList
          ? _value.orderGoodsList
          : orderGoodsList // ignore: cast_nullable_to_non_nullable
              as List<OrderGoodsList>?,
      subItemId: freezed == subItemId
          ? _value.subItemId
          : subItemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderSuItemListImplCopyWith<$Res>
    implements $OrderSuItemListCopyWith<$Res> {
  factory _$$OrderSuItemListImplCopyWith(_$OrderSuItemListImpl value,
          $Res Function(_$OrderSuItemListImpl) then) =
      __$$OrderSuItemListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? mainImage,
      List<OrderGoodsList>? orderGoodsList,
      String? subItemId});
}

/// @nodoc
class __$$OrderSuItemListImplCopyWithImpl<$Res>
    extends _$OrderSuItemListCopyWithImpl<$Res, _$OrderSuItemListImpl>
    implements _$$OrderSuItemListImplCopyWith<$Res> {
  __$$OrderSuItemListImplCopyWithImpl(
      _$OrderSuItemListImpl _value, $Res Function(_$OrderSuItemListImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderSuItemList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? mainImage = freezed,
    Object? orderGoodsList = freezed,
    Object? subItemId = freezed,
  }) {
    return _then(_$OrderSuItemListImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      orderGoodsList: freezed == orderGoodsList
          ? _value._orderGoodsList
          : orderGoodsList // ignore: cast_nullable_to_non_nullable
              as List<OrderGoodsList>?,
      subItemId: freezed == subItemId
          ? _value.subItemId
          : subItemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderSuItemListImpl implements _OrderSuItemList {
  const _$OrderSuItemListImpl(
      {this.title,
      this.mainImage,
      final List<OrderGoodsList>? orderGoodsList,
      this.subItemId})
      : _orderGoodsList = orderGoodsList;

  factory _$OrderSuItemListImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderSuItemListImplFromJson(json);

  @override
  final String? title;
  @override
  final String? mainImage;
  final List<OrderGoodsList>? _orderGoodsList;
  @override
  List<OrderGoodsList>? get orderGoodsList {
    final value = _orderGoodsList;
    if (value == null) return null;
    if (_orderGoodsList is EqualUnmodifiableListView) return _orderGoodsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? subItemId;

  @override
  String toString() {
    return 'OrderSuItemList(title: $title, mainImage: $mainImage, orderGoodsList: $orderGoodsList, subItemId: $subItemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderSuItemListImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.mainImage, mainImage) ||
                other.mainImage == mainImage) &&
            const DeepCollectionEquality()
                .equals(other._orderGoodsList, _orderGoodsList) &&
            (identical(other.subItemId, subItemId) ||
                other.subItemId == subItemId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, mainImage,
      const DeepCollectionEquality().hash(_orderGoodsList), subItemId);

  /// Create a copy of OrderSuItemList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderSuItemListImplCopyWith<_$OrderSuItemListImpl> get copyWith =>
      __$$OrderSuItemListImplCopyWithImpl<_$OrderSuItemListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderSuItemListImplToJson(
      this,
    );
  }
}

abstract class _OrderSuItemList implements OrderSuItemList {
  const factory _OrderSuItemList(
      {final String? title,
      final String? mainImage,
      final List<OrderGoodsList>? orderGoodsList,
      final String? subItemId}) = _$OrderSuItemListImpl;

  factory _OrderSuItemList.fromJson(Map<String, dynamic> json) =
      _$OrderSuItemListImpl.fromJson;

  @override
  String? get title;
  @override
  String? get mainImage;
  @override
  List<OrderGoodsList>? get orderGoodsList;
  @override
  String? get subItemId;

  /// Create a copy of OrderSuItemList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderSuItemListImplCopyWith<_$OrderSuItemListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderGoodsList _$OrderGoodsListFromJson(Map<String, dynamic> json) {
  return _OrderGoodsList.fromJson(json);
}

/// @nodoc
mixin _$OrderGoodsList {
  String? get saleItemId => throw _privateConstructorUsedError;
  String? get subItemId => throw _privateConstructorUsedError;
  AfterSale? get afterSale => throw _privateConstructorUsedError;
  String? get channelSaleUnitId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get mainImage => throw _privateConstructorUsedError;
  List<Spec>? get specs => throw _privateConstructorUsedError;
  String? get spec => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get moq => throw _privateConstructorUsedError;
  int? get stockNum => throw _privateConstructorUsedError;
  double? get salePrice => throw _privateConstructorUsedError;
  String? get salePriceCurrency => throw _privateConstructorUsedError;
  double? get salePriceAtOrderCurrency => throw _privateConstructorUsedError;
  bool? get isLocalShipping => throw _privateConstructorUsedError;
  String? get shipsFrom => throw _privateConstructorUsedError;
  String? get transportType => throw _privateConstructorUsedError;
  String? get internationalLpId => throw _privateConstructorUsedError;
  String? get internationalLpCode => throw _privateConstructorUsedError;
  String? get internationalLpName => throw _privateConstructorUsedError;
  String? get terminalLpId => throw _privateConstructorUsedError;
  String? get terminalLpCode => throw _privateConstructorUsedError;
  String? get terminalLpName => throw _privateConstructorUsedError;
  double? get tax => throw _privateConstructorUsedError;
  double? get totalDiscount => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get activityGoodsDiscount => throw _privateConstructorUsedError;
  double? get activityFreightDiscount => throw _privateConstructorUsedError;
  double? get couponGoodsDiscount => throw _privateConstructorUsedError;
  double? get couponFreightDiscount => throw _privateConstructorUsedError;
  double? get goodsDiscount => throw _privateConstructorUsedError;
  double? get freightDiscount => throw _privateConstructorUsedError;
  double? get activityDiscount => throw _privateConstructorUsedError;
  double? get couponDiscount => throw _privateConstructorUsedError;
  double? get shippingAmount => throw _privateConstructorUsedError;
  double? get goodsCollectionFreight => throw _privateConstructorUsedError;
  double? get internationalLogisticsFreight =>
      throw _privateConstructorUsedError;
  double? get terminalLogisticsFreight => throw _privateConstructorUsedError;
  bool? get isCanCod => throw _privateConstructorUsedError;

  /// Serializes this OrderGoodsList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderGoodsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderGoodsListCopyWith<OrderGoodsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderGoodsListCopyWith<$Res> {
  factory $OrderGoodsListCopyWith(
          OrderGoodsList value, $Res Function(OrderGoodsList) then) =
      _$OrderGoodsListCopyWithImpl<$Res, OrderGoodsList>;
  @useResult
  $Res call(
      {String? saleItemId,
      String? subItemId,
      AfterSale? afterSale,
      String? channelSaleUnitId,
      String? title,
      String? mainImage,
      List<Spec>? specs,
      String? spec,
      int? quantity,
      int? moq,
      int? stockNum,
      double? salePrice,
      String? salePriceCurrency,
      double? salePriceAtOrderCurrency,
      bool? isLocalShipping,
      String? shipsFrom,
      String? transportType,
      String? internationalLpId,
      String? internationalLpCode,
      String? internationalLpName,
      String? terminalLpId,
      String? terminalLpCode,
      String? terminalLpName,
      double? tax,
      double? totalDiscount,
      double? discount,
      double? activityGoodsDiscount,
      double? activityFreightDiscount,
      double? couponGoodsDiscount,
      double? couponFreightDiscount,
      double? goodsDiscount,
      double? freightDiscount,
      double? activityDiscount,
      double? couponDiscount,
      double? shippingAmount,
      double? goodsCollectionFreight,
      double? internationalLogisticsFreight,
      double? terminalLogisticsFreight,
      bool? isCanCod});

  $AfterSaleCopyWith<$Res>? get afterSale;
}

/// @nodoc
class _$OrderGoodsListCopyWithImpl<$Res, $Val extends OrderGoodsList>
    implements $OrderGoodsListCopyWith<$Res> {
  _$OrderGoodsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderGoodsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleItemId = freezed,
    Object? subItemId = freezed,
    Object? afterSale = freezed,
    Object? channelSaleUnitId = freezed,
    Object? title = freezed,
    Object? mainImage = freezed,
    Object? specs = freezed,
    Object? spec = freezed,
    Object? quantity = freezed,
    Object? moq = freezed,
    Object? stockNum = freezed,
    Object? salePrice = freezed,
    Object? salePriceCurrency = freezed,
    Object? salePriceAtOrderCurrency = freezed,
    Object? isLocalShipping = freezed,
    Object? shipsFrom = freezed,
    Object? transportType = freezed,
    Object? internationalLpId = freezed,
    Object? internationalLpCode = freezed,
    Object? internationalLpName = freezed,
    Object? terminalLpId = freezed,
    Object? terminalLpCode = freezed,
    Object? terminalLpName = freezed,
    Object? tax = freezed,
    Object? totalDiscount = freezed,
    Object? discount = freezed,
    Object? activityGoodsDiscount = freezed,
    Object? activityFreightDiscount = freezed,
    Object? couponGoodsDiscount = freezed,
    Object? couponFreightDiscount = freezed,
    Object? goodsDiscount = freezed,
    Object? freightDiscount = freezed,
    Object? activityDiscount = freezed,
    Object? couponDiscount = freezed,
    Object? shippingAmount = freezed,
    Object? goodsCollectionFreight = freezed,
    Object? internationalLogisticsFreight = freezed,
    Object? terminalLogisticsFreight = freezed,
    Object? isCanCod = freezed,
  }) {
    return _then(_value.copyWith(
      saleItemId: freezed == saleItemId
          ? _value.saleItemId
          : saleItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      subItemId: freezed == subItemId
          ? _value.subItemId
          : subItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      afterSale: freezed == afterSale
          ? _value.afterSale
          : afterSale // ignore: cast_nullable_to_non_nullable
              as AfterSale?,
      channelSaleUnitId: freezed == channelSaleUnitId
          ? _value.channelSaleUnitId
          : channelSaleUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      specs: freezed == specs
          ? _value.specs
          : specs // ignore: cast_nullable_to_non_nullable
              as List<Spec>?,
      spec: freezed == spec
          ? _value.spec
          : spec // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      moq: freezed == moq
          ? _value.moq
          : moq // ignore: cast_nullable_to_non_nullable
              as int?,
      stockNum: freezed == stockNum
          ? _value.stockNum
          : stockNum // ignore: cast_nullable_to_non_nullable
              as int?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      salePriceCurrency: freezed == salePriceCurrency
          ? _value.salePriceCurrency
          : salePriceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      salePriceAtOrderCurrency: freezed == salePriceAtOrderCurrency
          ? _value.salePriceAtOrderCurrency
          : salePriceAtOrderCurrency // ignore: cast_nullable_to_non_nullable
              as double?,
      isLocalShipping: freezed == isLocalShipping
          ? _value.isLocalShipping
          : isLocalShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      shipsFrom: freezed == shipsFrom
          ? _value.shipsFrom
          : shipsFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      transportType: freezed == transportType
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String?,
      internationalLpId: freezed == internationalLpId
          ? _value.internationalLpId
          : internationalLpId // ignore: cast_nullable_to_non_nullable
              as String?,
      internationalLpCode: freezed == internationalLpCode
          ? _value.internationalLpCode
          : internationalLpCode // ignore: cast_nullable_to_non_nullable
              as String?,
      internationalLpName: freezed == internationalLpName
          ? _value.internationalLpName
          : internationalLpName // ignore: cast_nullable_to_non_nullable
              as String?,
      terminalLpId: freezed == terminalLpId
          ? _value.terminalLpId
          : terminalLpId // ignore: cast_nullable_to_non_nullable
              as String?,
      terminalLpCode: freezed == terminalLpCode
          ? _value.terminalLpCode
          : terminalLpCode // ignore: cast_nullable_to_non_nullable
              as String?,
      terminalLpName: freezed == terminalLpName
          ? _value.terminalLpName
          : terminalLpName // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
      totalDiscount: freezed == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      activityGoodsDiscount: freezed == activityGoodsDiscount
          ? _value.activityGoodsDiscount
          : activityGoodsDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      activityFreightDiscount: freezed == activityFreightDiscount
          ? _value.activityFreightDiscount
          : activityFreightDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      couponGoodsDiscount: freezed == couponGoodsDiscount
          ? _value.couponGoodsDiscount
          : couponGoodsDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      couponFreightDiscount: freezed == couponFreightDiscount
          ? _value.couponFreightDiscount
          : couponFreightDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      goodsDiscount: freezed == goodsDiscount
          ? _value.goodsDiscount
          : goodsDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      freightDiscount: freezed == freightDiscount
          ? _value.freightDiscount
          : freightDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      activityDiscount: freezed == activityDiscount
          ? _value.activityDiscount
          : activityDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      couponDiscount: freezed == couponDiscount
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      shippingAmount: freezed == shippingAmount
          ? _value.shippingAmount
          : shippingAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      goodsCollectionFreight: freezed == goodsCollectionFreight
          ? _value.goodsCollectionFreight
          : goodsCollectionFreight // ignore: cast_nullable_to_non_nullable
              as double?,
      internationalLogisticsFreight: freezed == internationalLogisticsFreight
          ? _value.internationalLogisticsFreight
          : internationalLogisticsFreight // ignore: cast_nullable_to_non_nullable
              as double?,
      terminalLogisticsFreight: freezed == terminalLogisticsFreight
          ? _value.terminalLogisticsFreight
          : terminalLogisticsFreight // ignore: cast_nullable_to_non_nullable
              as double?,
      isCanCod: freezed == isCanCod
          ? _value.isCanCod
          : isCanCod // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of OrderGoodsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AfterSaleCopyWith<$Res>? get afterSale {
    if (_value.afterSale == null) {
      return null;
    }

    return $AfterSaleCopyWith<$Res>(_value.afterSale!, (value) {
      return _then(_value.copyWith(afterSale: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderGoodsListImplCopyWith<$Res>
    implements $OrderGoodsListCopyWith<$Res> {
  factory _$$OrderGoodsListImplCopyWith(_$OrderGoodsListImpl value,
          $Res Function(_$OrderGoodsListImpl) then) =
      __$$OrderGoodsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? saleItemId,
      String? subItemId,
      AfterSale? afterSale,
      String? channelSaleUnitId,
      String? title,
      String? mainImage,
      List<Spec>? specs,
      String? spec,
      int? quantity,
      int? moq,
      int? stockNum,
      double? salePrice,
      String? salePriceCurrency,
      double? salePriceAtOrderCurrency,
      bool? isLocalShipping,
      String? shipsFrom,
      String? transportType,
      String? internationalLpId,
      String? internationalLpCode,
      String? internationalLpName,
      String? terminalLpId,
      String? terminalLpCode,
      String? terminalLpName,
      double? tax,
      double? totalDiscount,
      double? discount,
      double? activityGoodsDiscount,
      double? activityFreightDiscount,
      double? couponGoodsDiscount,
      double? couponFreightDiscount,
      double? goodsDiscount,
      double? freightDiscount,
      double? activityDiscount,
      double? couponDiscount,
      double? shippingAmount,
      double? goodsCollectionFreight,
      double? internationalLogisticsFreight,
      double? terminalLogisticsFreight,
      bool? isCanCod});

  @override
  $AfterSaleCopyWith<$Res>? get afterSale;
}

/// @nodoc
class __$$OrderGoodsListImplCopyWithImpl<$Res>
    extends _$OrderGoodsListCopyWithImpl<$Res, _$OrderGoodsListImpl>
    implements _$$OrderGoodsListImplCopyWith<$Res> {
  __$$OrderGoodsListImplCopyWithImpl(
      _$OrderGoodsListImpl _value, $Res Function(_$OrderGoodsListImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderGoodsList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleItemId = freezed,
    Object? subItemId = freezed,
    Object? afterSale = freezed,
    Object? channelSaleUnitId = freezed,
    Object? title = freezed,
    Object? mainImage = freezed,
    Object? specs = freezed,
    Object? spec = freezed,
    Object? quantity = freezed,
    Object? moq = freezed,
    Object? stockNum = freezed,
    Object? salePrice = freezed,
    Object? salePriceCurrency = freezed,
    Object? salePriceAtOrderCurrency = freezed,
    Object? isLocalShipping = freezed,
    Object? shipsFrom = freezed,
    Object? transportType = freezed,
    Object? internationalLpId = freezed,
    Object? internationalLpCode = freezed,
    Object? internationalLpName = freezed,
    Object? terminalLpId = freezed,
    Object? terminalLpCode = freezed,
    Object? terminalLpName = freezed,
    Object? tax = freezed,
    Object? totalDiscount = freezed,
    Object? discount = freezed,
    Object? activityGoodsDiscount = freezed,
    Object? activityFreightDiscount = freezed,
    Object? couponGoodsDiscount = freezed,
    Object? couponFreightDiscount = freezed,
    Object? goodsDiscount = freezed,
    Object? freightDiscount = freezed,
    Object? activityDiscount = freezed,
    Object? couponDiscount = freezed,
    Object? shippingAmount = freezed,
    Object? goodsCollectionFreight = freezed,
    Object? internationalLogisticsFreight = freezed,
    Object? terminalLogisticsFreight = freezed,
    Object? isCanCod = freezed,
  }) {
    return _then(_$OrderGoodsListImpl(
      saleItemId: freezed == saleItemId
          ? _value.saleItemId
          : saleItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      subItemId: freezed == subItemId
          ? _value.subItemId
          : subItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      afterSale: freezed == afterSale
          ? _value.afterSale
          : afterSale // ignore: cast_nullable_to_non_nullable
              as AfterSale?,
      channelSaleUnitId: freezed == channelSaleUnitId
          ? _value.channelSaleUnitId
          : channelSaleUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      mainImage: freezed == mainImage
          ? _value.mainImage
          : mainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      specs: freezed == specs
          ? _value._specs
          : specs // ignore: cast_nullable_to_non_nullable
              as List<Spec>?,
      spec: freezed == spec
          ? _value.spec
          : spec // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      moq: freezed == moq
          ? _value.moq
          : moq // ignore: cast_nullable_to_non_nullable
              as int?,
      stockNum: freezed == stockNum
          ? _value.stockNum
          : stockNum // ignore: cast_nullable_to_non_nullable
              as int?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      salePriceCurrency: freezed == salePriceCurrency
          ? _value.salePriceCurrency
          : salePriceCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      salePriceAtOrderCurrency: freezed == salePriceAtOrderCurrency
          ? _value.salePriceAtOrderCurrency
          : salePriceAtOrderCurrency // ignore: cast_nullable_to_non_nullable
              as double?,
      isLocalShipping: freezed == isLocalShipping
          ? _value.isLocalShipping
          : isLocalShipping // ignore: cast_nullable_to_non_nullable
              as bool?,
      shipsFrom: freezed == shipsFrom
          ? _value.shipsFrom
          : shipsFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      transportType: freezed == transportType
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String?,
      internationalLpId: freezed == internationalLpId
          ? _value.internationalLpId
          : internationalLpId // ignore: cast_nullable_to_non_nullable
              as String?,
      internationalLpCode: freezed == internationalLpCode
          ? _value.internationalLpCode
          : internationalLpCode // ignore: cast_nullable_to_non_nullable
              as String?,
      internationalLpName: freezed == internationalLpName
          ? _value.internationalLpName
          : internationalLpName // ignore: cast_nullable_to_non_nullable
              as String?,
      terminalLpId: freezed == terminalLpId
          ? _value.terminalLpId
          : terminalLpId // ignore: cast_nullable_to_non_nullable
              as String?,
      terminalLpCode: freezed == terminalLpCode
          ? _value.terminalLpCode
          : terminalLpCode // ignore: cast_nullable_to_non_nullable
              as String?,
      terminalLpName: freezed == terminalLpName
          ? _value.terminalLpName
          : terminalLpName // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
      totalDiscount: freezed == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      activityGoodsDiscount: freezed == activityGoodsDiscount
          ? _value.activityGoodsDiscount
          : activityGoodsDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      activityFreightDiscount: freezed == activityFreightDiscount
          ? _value.activityFreightDiscount
          : activityFreightDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      couponGoodsDiscount: freezed == couponGoodsDiscount
          ? _value.couponGoodsDiscount
          : couponGoodsDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      couponFreightDiscount: freezed == couponFreightDiscount
          ? _value.couponFreightDiscount
          : couponFreightDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      goodsDiscount: freezed == goodsDiscount
          ? _value.goodsDiscount
          : goodsDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      freightDiscount: freezed == freightDiscount
          ? _value.freightDiscount
          : freightDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      activityDiscount: freezed == activityDiscount
          ? _value.activityDiscount
          : activityDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      couponDiscount: freezed == couponDiscount
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      shippingAmount: freezed == shippingAmount
          ? _value.shippingAmount
          : shippingAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      goodsCollectionFreight: freezed == goodsCollectionFreight
          ? _value.goodsCollectionFreight
          : goodsCollectionFreight // ignore: cast_nullable_to_non_nullable
              as double?,
      internationalLogisticsFreight: freezed == internationalLogisticsFreight
          ? _value.internationalLogisticsFreight
          : internationalLogisticsFreight // ignore: cast_nullable_to_non_nullable
              as double?,
      terminalLogisticsFreight: freezed == terminalLogisticsFreight
          ? _value.terminalLogisticsFreight
          : terminalLogisticsFreight // ignore: cast_nullable_to_non_nullable
              as double?,
      isCanCod: freezed == isCanCod
          ? _value.isCanCod
          : isCanCod // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderGoodsListImpl implements _OrderGoodsList {
  const _$OrderGoodsListImpl(
      {this.saleItemId,
      this.subItemId,
      this.afterSale,
      this.channelSaleUnitId,
      this.title,
      this.mainImage,
      final List<Spec>? specs,
      this.spec,
      this.quantity,
      this.moq,
      this.stockNum,
      this.salePrice,
      this.salePriceCurrency,
      this.salePriceAtOrderCurrency,
      this.isLocalShipping,
      this.shipsFrom,
      this.transportType,
      this.internationalLpId,
      this.internationalLpCode,
      this.internationalLpName,
      this.terminalLpId,
      this.terminalLpCode,
      this.terminalLpName,
      this.tax,
      this.totalDiscount,
      this.discount,
      this.activityGoodsDiscount,
      this.activityFreightDiscount,
      this.couponGoodsDiscount,
      this.couponFreightDiscount,
      this.goodsDiscount,
      this.freightDiscount,
      this.activityDiscount,
      this.couponDiscount,
      this.shippingAmount,
      this.goodsCollectionFreight,
      this.internationalLogisticsFreight,
      this.terminalLogisticsFreight,
      this.isCanCod})
      : _specs = specs;

  factory _$OrderGoodsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderGoodsListImplFromJson(json);

  @override
  final String? saleItemId;
  @override
  final String? subItemId;
  @override
  final AfterSale? afterSale;
  @override
  final String? channelSaleUnitId;
  @override
  final String? title;
  @override
  final String? mainImage;
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
  final String? spec;
  @override
  final int? quantity;
  @override
  final int? moq;
  @override
  final int? stockNum;
  @override
  final double? salePrice;
  @override
  final String? salePriceCurrency;
  @override
  final double? salePriceAtOrderCurrency;
  @override
  final bool? isLocalShipping;
  @override
  final String? shipsFrom;
  @override
  final String? transportType;
  @override
  final String? internationalLpId;
  @override
  final String? internationalLpCode;
  @override
  final String? internationalLpName;
  @override
  final String? terminalLpId;
  @override
  final String? terminalLpCode;
  @override
  final String? terminalLpName;
  @override
  final double? tax;
  @override
  final double? totalDiscount;
  @override
  final double? discount;
  @override
  final double? activityGoodsDiscount;
  @override
  final double? activityFreightDiscount;
  @override
  final double? couponGoodsDiscount;
  @override
  final double? couponFreightDiscount;
  @override
  final double? goodsDiscount;
  @override
  final double? freightDiscount;
  @override
  final double? activityDiscount;
  @override
  final double? couponDiscount;
  @override
  final double? shippingAmount;
  @override
  final double? goodsCollectionFreight;
  @override
  final double? internationalLogisticsFreight;
  @override
  final double? terminalLogisticsFreight;
  @override
  final bool? isCanCod;

  @override
  String toString() {
    return 'OrderGoodsList(saleItemId: $saleItemId, subItemId: $subItemId, afterSale: $afterSale, channelSaleUnitId: $channelSaleUnitId, title: $title, mainImage: $mainImage, specs: $specs, spec: $spec, quantity: $quantity, moq: $moq, stockNum: $stockNum, salePrice: $salePrice, salePriceCurrency: $salePriceCurrency, salePriceAtOrderCurrency: $salePriceAtOrderCurrency, isLocalShipping: $isLocalShipping, shipsFrom: $shipsFrom, transportType: $transportType, internationalLpId: $internationalLpId, internationalLpCode: $internationalLpCode, internationalLpName: $internationalLpName, terminalLpId: $terminalLpId, terminalLpCode: $terminalLpCode, terminalLpName: $terminalLpName, tax: $tax, totalDiscount: $totalDiscount, discount: $discount, activityGoodsDiscount: $activityGoodsDiscount, activityFreightDiscount: $activityFreightDiscount, couponGoodsDiscount: $couponGoodsDiscount, couponFreightDiscount: $couponFreightDiscount, goodsDiscount: $goodsDiscount, freightDiscount: $freightDiscount, activityDiscount: $activityDiscount, couponDiscount: $couponDiscount, shippingAmount: $shippingAmount, goodsCollectionFreight: $goodsCollectionFreight, internationalLogisticsFreight: $internationalLogisticsFreight, terminalLogisticsFreight: $terminalLogisticsFreight, isCanCod: $isCanCod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderGoodsListImpl &&
            (identical(other.saleItemId, saleItemId) ||
                other.saleItemId == saleItemId) &&
            (identical(other.subItemId, subItemId) ||
                other.subItemId == subItemId) &&
            (identical(other.afterSale, afterSale) ||
                other.afterSale == afterSale) &&
            (identical(other.channelSaleUnitId, channelSaleUnitId) ||
                other.channelSaleUnitId == channelSaleUnitId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.mainImage, mainImage) ||
                other.mainImage == mainImage) &&
            const DeepCollectionEquality().equals(other._specs, _specs) &&
            (identical(other.spec, spec) || other.spec == spec) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.moq, moq) || other.moq == moq) &&
            (identical(other.stockNum, stockNum) ||
                other.stockNum == stockNum) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.salePriceCurrency, salePriceCurrency) ||
                other.salePriceCurrency == salePriceCurrency) &&
            (identical(other.salePriceAtOrderCurrency, salePriceAtOrderCurrency) ||
                other.salePriceAtOrderCurrency == salePriceAtOrderCurrency) &&
            (identical(other.isLocalShipping, isLocalShipping) ||
                other.isLocalShipping == isLocalShipping) &&
            (identical(other.shipsFrom, shipsFrom) ||
                other.shipsFrom == shipsFrom) &&
            (identical(other.transportType, transportType) ||
                other.transportType == transportType) &&
            (identical(other.internationalLpId, internationalLpId) ||
                other.internationalLpId == internationalLpId) &&
            (identical(other.internationalLpCode, internationalLpCode) ||
                other.internationalLpCode == internationalLpCode) &&
            (identical(other.internationalLpName, internationalLpName) ||
                other.internationalLpName == internationalLpName) &&
            (identical(other.terminalLpId, terminalLpId) ||
                other.terminalLpId == terminalLpId) &&
            (identical(other.terminalLpCode, terminalLpCode) ||
                other.terminalLpCode == terminalLpCode) &&
            (identical(other.terminalLpName, terminalLpName) ||
                other.terminalLpName == terminalLpName) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.totalDiscount, totalDiscount) ||
                other.totalDiscount == totalDiscount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.activityGoodsDiscount, activityGoodsDiscount) ||
                other.activityGoodsDiscount == activityGoodsDiscount) &&
            (identical(other.activityFreightDiscount, activityFreightDiscount) ||
                other.activityFreightDiscount == activityFreightDiscount) &&
            (identical(other.couponGoodsDiscount, couponGoodsDiscount) ||
                other.couponGoodsDiscount == couponGoodsDiscount) &&
            (identical(other.couponFreightDiscount, couponFreightDiscount) ||
                other.couponFreightDiscount == couponFreightDiscount) &&
            (identical(other.goodsDiscount, goodsDiscount) ||
                other.goodsDiscount == goodsDiscount) &&
            (identical(other.freightDiscount, freightDiscount) ||
                other.freightDiscount == freightDiscount) &&
            (identical(other.activityDiscount, activityDiscount) ||
                other.activityDiscount == activityDiscount) &&
            (identical(other.couponDiscount, couponDiscount) ||
                other.couponDiscount == couponDiscount) &&
            (identical(other.shippingAmount, shippingAmount) ||
                other.shippingAmount == shippingAmount) &&
            (identical(other.goodsCollectionFreight, goodsCollectionFreight) ||
                other.goodsCollectionFreight == goodsCollectionFreight) &&
            (identical(other.internationalLogisticsFreight, internationalLogisticsFreight) ||
                other.internationalLogisticsFreight ==
                    internationalLogisticsFreight) &&
            (identical(other.terminalLogisticsFreight, terminalLogisticsFreight) ||
                other.terminalLogisticsFreight == terminalLogisticsFreight) &&
            (identical(other.isCanCod, isCanCod) || other.isCanCod == isCanCod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        saleItemId,
        subItemId,
        afterSale,
        channelSaleUnitId,
        title,
        mainImage,
        const DeepCollectionEquality().hash(_specs),
        spec,
        quantity,
        moq,
        stockNum,
        salePrice,
        salePriceCurrency,
        salePriceAtOrderCurrency,
        isLocalShipping,
        shipsFrom,
        transportType,
        internationalLpId,
        internationalLpCode,
        internationalLpName,
        terminalLpId,
        terminalLpCode,
        terminalLpName,
        tax,
        totalDiscount,
        discount,
        activityGoodsDiscount,
        activityFreightDiscount,
        couponGoodsDiscount,
        couponFreightDiscount,
        goodsDiscount,
        freightDiscount,
        activityDiscount,
        couponDiscount,
        shippingAmount,
        goodsCollectionFreight,
        internationalLogisticsFreight,
        terminalLogisticsFreight,
        isCanCod
      ]);

  /// Create a copy of OrderGoodsList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderGoodsListImplCopyWith<_$OrderGoodsListImpl> get copyWith =>
      __$$OrderGoodsListImplCopyWithImpl<_$OrderGoodsListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderGoodsListImplToJson(
      this,
    );
  }
}

abstract class _OrderGoodsList implements OrderGoodsList {
  const factory _OrderGoodsList(
      {final String? saleItemId,
      final String? subItemId,
      final AfterSale? afterSale,
      final String? channelSaleUnitId,
      final String? title,
      final String? mainImage,
      final List<Spec>? specs,
      final String? spec,
      final int? quantity,
      final int? moq,
      final int? stockNum,
      final double? salePrice,
      final String? salePriceCurrency,
      final double? salePriceAtOrderCurrency,
      final bool? isLocalShipping,
      final String? shipsFrom,
      final String? transportType,
      final String? internationalLpId,
      final String? internationalLpCode,
      final String? internationalLpName,
      final String? terminalLpId,
      final String? terminalLpCode,
      final String? terminalLpName,
      final double? tax,
      final double? totalDiscount,
      final double? discount,
      final double? activityGoodsDiscount,
      final double? activityFreightDiscount,
      final double? couponGoodsDiscount,
      final double? couponFreightDiscount,
      final double? goodsDiscount,
      final double? freightDiscount,
      final double? activityDiscount,
      final double? couponDiscount,
      final double? shippingAmount,
      final double? goodsCollectionFreight,
      final double? internationalLogisticsFreight,
      final double? terminalLogisticsFreight,
      final bool? isCanCod}) = _$OrderGoodsListImpl;

  factory _OrderGoodsList.fromJson(Map<String, dynamic> json) =
      _$OrderGoodsListImpl.fromJson;

  @override
  String? get saleItemId;
  @override
  String? get subItemId;
  @override
  AfterSale? get afterSale;
  @override
  String? get channelSaleUnitId;
  @override
  String? get title;
  @override
  String? get mainImage;
  @override
  List<Spec>? get specs;
  @override
  String? get spec;
  @override
  int? get quantity;
  @override
  int? get moq;
  @override
  int? get stockNum;
  @override
  double? get salePrice;
  @override
  String? get salePriceCurrency;
  @override
  double? get salePriceAtOrderCurrency;
  @override
  bool? get isLocalShipping;
  @override
  String? get shipsFrom;
  @override
  String? get transportType;
  @override
  String? get internationalLpId;
  @override
  String? get internationalLpCode;
  @override
  String? get internationalLpName;
  @override
  String? get terminalLpId;
  @override
  String? get terminalLpCode;
  @override
  String? get terminalLpName;
  @override
  double? get tax;
  @override
  double? get totalDiscount;
  @override
  double? get discount;
  @override
  double? get activityGoodsDiscount;
  @override
  double? get activityFreightDiscount;
  @override
  double? get couponGoodsDiscount;
  @override
  double? get couponFreightDiscount;
  @override
  double? get goodsDiscount;
  @override
  double? get freightDiscount;
  @override
  double? get activityDiscount;
  @override
  double? get couponDiscount;
  @override
  double? get shippingAmount;
  @override
  double? get goodsCollectionFreight;
  @override
  double? get internationalLogisticsFreight;
  @override
  double? get terminalLogisticsFreight;
  @override
  bool? get isCanCod;

  /// Create a copy of OrderGoodsList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderGoodsListImplCopyWith<_$OrderGoodsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AfterSale _$AfterSaleFromJson(Map<String, dynamic> json) {
  return _AfterSale.fromJson(json);
}

/// @nodoc
mixin _$AfterSale {
  String? get distributionAfterSaleId => throw _privateConstructorUsedError;
  String? get distributionAfterSaleState => throw _privateConstructorUsedError;

  /// Serializes this AfterSale to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AfterSale
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AfterSaleCopyWith<AfterSale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AfterSaleCopyWith<$Res> {
  factory $AfterSaleCopyWith(AfterSale value, $Res Function(AfterSale) then) =
      _$AfterSaleCopyWithImpl<$Res, AfterSale>;
  @useResult
  $Res call(
      {String? distributionAfterSaleId, String? distributionAfterSaleState});
}

/// @nodoc
class _$AfterSaleCopyWithImpl<$Res, $Val extends AfterSale>
    implements $AfterSaleCopyWith<$Res> {
  _$AfterSaleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AfterSale
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distributionAfterSaleId = freezed,
    Object? distributionAfterSaleState = freezed,
  }) {
    return _then(_value.copyWith(
      distributionAfterSaleId: freezed == distributionAfterSaleId
          ? _value.distributionAfterSaleId
          : distributionAfterSaleId // ignore: cast_nullable_to_non_nullable
              as String?,
      distributionAfterSaleState: freezed == distributionAfterSaleState
          ? _value.distributionAfterSaleState
          : distributionAfterSaleState // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AfterSaleImplCopyWith<$Res>
    implements $AfterSaleCopyWith<$Res> {
  factory _$$AfterSaleImplCopyWith(
          _$AfterSaleImpl value, $Res Function(_$AfterSaleImpl) then) =
      __$$AfterSaleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? distributionAfterSaleId, String? distributionAfterSaleState});
}

/// @nodoc
class __$$AfterSaleImplCopyWithImpl<$Res>
    extends _$AfterSaleCopyWithImpl<$Res, _$AfterSaleImpl>
    implements _$$AfterSaleImplCopyWith<$Res> {
  __$$AfterSaleImplCopyWithImpl(
      _$AfterSaleImpl _value, $Res Function(_$AfterSaleImpl) _then)
      : super(_value, _then);

  /// Create a copy of AfterSale
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distributionAfterSaleId = freezed,
    Object? distributionAfterSaleState = freezed,
  }) {
    return _then(_$AfterSaleImpl(
      distributionAfterSaleId: freezed == distributionAfterSaleId
          ? _value.distributionAfterSaleId
          : distributionAfterSaleId // ignore: cast_nullable_to_non_nullable
              as String?,
      distributionAfterSaleState: freezed == distributionAfterSaleState
          ? _value.distributionAfterSaleState
          : distributionAfterSaleState // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AfterSaleImpl implements _AfterSale {
  const _$AfterSaleImpl(
      {this.distributionAfterSaleId, this.distributionAfterSaleState});

  factory _$AfterSaleImpl.fromJson(Map<String, dynamic> json) =>
      _$$AfterSaleImplFromJson(json);

  @override
  final String? distributionAfterSaleId;
  @override
  final String? distributionAfterSaleState;

  @override
  String toString() {
    return 'AfterSale(distributionAfterSaleId: $distributionAfterSaleId, distributionAfterSaleState: $distributionAfterSaleState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AfterSaleImpl &&
            (identical(
                    other.distributionAfterSaleId, distributionAfterSaleId) ||
                other.distributionAfterSaleId == distributionAfterSaleId) &&
            (identical(other.distributionAfterSaleState,
                    distributionAfterSaleState) ||
                other.distributionAfterSaleState ==
                    distributionAfterSaleState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, distributionAfterSaleId, distributionAfterSaleState);

  /// Create a copy of AfterSale
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AfterSaleImplCopyWith<_$AfterSaleImpl> get copyWith =>
      __$$AfterSaleImplCopyWithImpl<_$AfterSaleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AfterSaleImplToJson(
      this,
    );
  }
}

abstract class _AfterSale implements AfterSale {
  const factory _AfterSale(
      {final String? distributionAfterSaleId,
      final String? distributionAfterSaleState}) = _$AfterSaleImpl;

  factory _AfterSale.fromJson(Map<String, dynamic> json) =
      _$AfterSaleImpl.fromJson;

  @override
  String? get distributionAfterSaleId;
  @override
  String? get distributionAfterSaleState;

  /// Create a copy of AfterSale
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AfterSaleImplCopyWith<_$AfterSaleImpl> get copyWith =>
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

PaidListElement _$PaidListElementFromJson(Map<String, dynamic> json) {
  return _PaidListElement.fromJson(json);
}

/// @nodoc
mixin _$PaidListElement {
  String? get receiptPaymentId => throw _privateConstructorUsedError;
  String? get receiptPaymentNo => throw _privateConstructorUsedError;
  String? get paymentType => throw _privateConstructorUsedError;
  String? get paymentMethodName => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  double? get amountPaid => throw _privateConstructorUsedError;
  int? get gmtPay => throw _privateConstructorUsedError;
  String? get originPaymentId => throw _privateConstructorUsedError;
  String? get paymentState => throw _privateConstructorUsedError;
  bool? get isQrCode => throw _privateConstructorUsedError;

  /// Serializes this PaidListElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaidListElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaidListElementCopyWith<PaidListElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaidListElementCopyWith<$Res> {
  factory $PaidListElementCopyWith(
          PaidListElement value, $Res Function(PaidListElement) then) =
      _$PaidListElementCopyWithImpl<$Res, PaidListElement>;
  @useResult
  $Res call(
      {String? receiptPaymentId,
      String? receiptPaymentNo,
      String? paymentType,
      String? paymentMethodName,
      String? currency,
      double? amount,
      double? amountPaid,
      int? gmtPay,
      String? originPaymentId,
      String? paymentState,
      bool? isQrCode});
}

/// @nodoc
class _$PaidListElementCopyWithImpl<$Res, $Val extends PaidListElement>
    implements $PaidListElementCopyWith<$Res> {
  _$PaidListElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaidListElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptPaymentId = freezed,
    Object? receiptPaymentNo = freezed,
    Object? paymentType = freezed,
    Object? paymentMethodName = freezed,
    Object? currency = freezed,
    Object? amount = freezed,
    Object? amountPaid = freezed,
    Object? gmtPay = freezed,
    Object? originPaymentId = freezed,
    Object? paymentState = freezed,
    Object? isQrCode = freezed,
  }) {
    return _then(_value.copyWith(
      receiptPaymentId: freezed == receiptPaymentId
          ? _value.receiptPaymentId
          : receiptPaymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptPaymentNo: freezed == receiptPaymentNo
          ? _value.receiptPaymentNo
          : receiptPaymentNo // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodName: freezed == paymentMethodName
          ? _value.paymentMethodName
          : paymentMethodName // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      amountPaid: freezed == amountPaid
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as double?,
      gmtPay: freezed == gmtPay
          ? _value.gmtPay
          : gmtPay // ignore: cast_nullable_to_non_nullable
              as int?,
      originPaymentId: freezed == originPaymentId
          ? _value.originPaymentId
          : originPaymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentState: freezed == paymentState
          ? _value.paymentState
          : paymentState // ignore: cast_nullable_to_non_nullable
              as String?,
      isQrCode: freezed == isQrCode
          ? _value.isQrCode
          : isQrCode // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaidListElementImplCopyWith<$Res>
    implements $PaidListElementCopyWith<$Res> {
  factory _$$PaidListElementImplCopyWith(_$PaidListElementImpl value,
          $Res Function(_$PaidListElementImpl) then) =
      __$$PaidListElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? receiptPaymentId,
      String? receiptPaymentNo,
      String? paymentType,
      String? paymentMethodName,
      String? currency,
      double? amount,
      double? amountPaid,
      int? gmtPay,
      String? originPaymentId,
      String? paymentState,
      bool? isQrCode});
}

/// @nodoc
class __$$PaidListElementImplCopyWithImpl<$Res>
    extends _$PaidListElementCopyWithImpl<$Res, _$PaidListElementImpl>
    implements _$$PaidListElementImplCopyWith<$Res> {
  __$$PaidListElementImplCopyWithImpl(
      _$PaidListElementImpl _value, $Res Function(_$PaidListElementImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaidListElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptPaymentId = freezed,
    Object? receiptPaymentNo = freezed,
    Object? paymentType = freezed,
    Object? paymentMethodName = freezed,
    Object? currency = freezed,
    Object? amount = freezed,
    Object? amountPaid = freezed,
    Object? gmtPay = freezed,
    Object? originPaymentId = freezed,
    Object? paymentState = freezed,
    Object? isQrCode = freezed,
  }) {
    return _then(_$PaidListElementImpl(
      receiptPaymentId: freezed == receiptPaymentId
          ? _value.receiptPaymentId
          : receiptPaymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptPaymentNo: freezed == receiptPaymentNo
          ? _value.receiptPaymentNo
          : receiptPaymentNo // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethodName: freezed == paymentMethodName
          ? _value.paymentMethodName
          : paymentMethodName // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      amountPaid: freezed == amountPaid
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as double?,
      gmtPay: freezed == gmtPay
          ? _value.gmtPay
          : gmtPay // ignore: cast_nullable_to_non_nullable
              as int?,
      originPaymentId: freezed == originPaymentId
          ? _value.originPaymentId
          : originPaymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentState: freezed == paymentState
          ? _value.paymentState
          : paymentState // ignore: cast_nullable_to_non_nullable
              as String?,
      isQrCode: freezed == isQrCode
          ? _value.isQrCode
          : isQrCode // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaidListElementImpl implements _PaidListElement {
  const _$PaidListElementImpl(
      {this.receiptPaymentId,
      this.receiptPaymentNo,
      this.paymentType,
      this.paymentMethodName,
      this.currency,
      this.amount,
      this.amountPaid,
      this.gmtPay,
      this.originPaymentId,
      this.paymentState,
      this.isQrCode});

  factory _$PaidListElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaidListElementImplFromJson(json);

  @override
  final String? receiptPaymentId;
  @override
  final String? receiptPaymentNo;
  @override
  final String? paymentType;
  @override
  final String? paymentMethodName;
  @override
  final String? currency;
  @override
  final double? amount;
  @override
  final double? amountPaid;
  @override
  final int? gmtPay;
  @override
  final String? originPaymentId;
  @override
  final String? paymentState;
  @override
  final bool? isQrCode;

  @override
  String toString() {
    return 'PaidListElement(receiptPaymentId: $receiptPaymentId, receiptPaymentNo: $receiptPaymentNo, paymentType: $paymentType, paymentMethodName: $paymentMethodName, currency: $currency, amount: $amount, amountPaid: $amountPaid, gmtPay: $gmtPay, originPaymentId: $originPaymentId, paymentState: $paymentState, isQrCode: $isQrCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaidListElementImpl &&
            (identical(other.receiptPaymentId, receiptPaymentId) ||
                other.receiptPaymentId == receiptPaymentId) &&
            (identical(other.receiptPaymentNo, receiptPaymentNo) ||
                other.receiptPaymentNo == receiptPaymentNo) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.paymentMethodName, paymentMethodName) ||
                other.paymentMethodName == paymentMethodName) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.amountPaid, amountPaid) ||
                other.amountPaid == amountPaid) &&
            (identical(other.gmtPay, gmtPay) || other.gmtPay == gmtPay) &&
            (identical(other.originPaymentId, originPaymentId) ||
                other.originPaymentId == originPaymentId) &&
            (identical(other.paymentState, paymentState) ||
                other.paymentState == paymentState) &&
            (identical(other.isQrCode, isQrCode) ||
                other.isQrCode == isQrCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      receiptPaymentId,
      receiptPaymentNo,
      paymentType,
      paymentMethodName,
      currency,
      amount,
      amountPaid,
      gmtPay,
      originPaymentId,
      paymentState,
      isQrCode);

  /// Create a copy of PaidListElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaidListElementImplCopyWith<_$PaidListElementImpl> get copyWith =>
      __$$PaidListElementImplCopyWithImpl<_$PaidListElementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaidListElementImplToJson(
      this,
    );
  }
}

abstract class _PaidListElement implements PaidListElement {
  const factory _PaidListElement(
      {final String? receiptPaymentId,
      final String? receiptPaymentNo,
      final String? paymentType,
      final String? paymentMethodName,
      final String? currency,
      final double? amount,
      final double? amountPaid,
      final int? gmtPay,
      final String? originPaymentId,
      final String? paymentState,
      final bool? isQrCode}) = _$PaidListElementImpl;

  factory _PaidListElement.fromJson(Map<String, dynamic> json) =
      _$PaidListElementImpl.fromJson;

  @override
  String? get receiptPaymentId;
  @override
  String? get receiptPaymentNo;
  @override
  String? get paymentType;
  @override
  String? get paymentMethodName;
  @override
  String? get currency;
  @override
  double? get amount;
  @override
  double? get amountPaid;
  @override
  int? get gmtPay;
  @override
  String? get originPaymentId;
  @override
  String? get paymentState;
  @override
  bool? get isQrCode;

  /// Create a copy of PaidListElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaidListElementImplCopyWith<_$PaidListElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReceiptItemList _$ReceiptItemListFromJson(Map<String, dynamic> json) {
  return _ReceiptItemList.fromJson(json);
}

/// @nodoc
mixin _$ReceiptItemList {
  String? get receiptType => throw _privateConstructorUsedError;
  String? get receiptDesc => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  String? get receiptState => throw _privateConstructorUsedError;

  /// Serializes this ReceiptItemList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReceiptItemList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReceiptItemListCopyWith<ReceiptItemList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptItemListCopyWith<$Res> {
  factory $ReceiptItemListCopyWith(
          ReceiptItemList value, $Res Function(ReceiptItemList) then) =
      _$ReceiptItemListCopyWithImpl<$Res, ReceiptItemList>;
  @useResult
  $Res call(
      {String? receiptType,
      String? receiptDesc,
      String? currency,
      double? amount,
      String? receiptState});
}

/// @nodoc
class _$ReceiptItemListCopyWithImpl<$Res, $Val extends ReceiptItemList>
    implements $ReceiptItemListCopyWith<$Res> {
  _$ReceiptItemListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReceiptItemList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptType = freezed,
    Object? receiptDesc = freezed,
    Object? currency = freezed,
    Object? amount = freezed,
    Object? receiptState = freezed,
  }) {
    return _then(_value.copyWith(
      receiptType: freezed == receiptType
          ? _value.receiptType
          : receiptType // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptDesc: freezed == receiptDesc
          ? _value.receiptDesc
          : receiptDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      receiptState: freezed == receiptState
          ? _value.receiptState
          : receiptState // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceiptItemListImplCopyWith<$Res>
    implements $ReceiptItemListCopyWith<$Res> {
  factory _$$ReceiptItemListImplCopyWith(_$ReceiptItemListImpl value,
          $Res Function(_$ReceiptItemListImpl) then) =
      __$$ReceiptItemListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? receiptType,
      String? receiptDesc,
      String? currency,
      double? amount,
      String? receiptState});
}

/// @nodoc
class __$$ReceiptItemListImplCopyWithImpl<$Res>
    extends _$ReceiptItemListCopyWithImpl<$Res, _$ReceiptItemListImpl>
    implements _$$ReceiptItemListImplCopyWith<$Res> {
  __$$ReceiptItemListImplCopyWithImpl(
      _$ReceiptItemListImpl _value, $Res Function(_$ReceiptItemListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiptItemList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiptType = freezed,
    Object? receiptDesc = freezed,
    Object? currency = freezed,
    Object? amount = freezed,
    Object? receiptState = freezed,
  }) {
    return _then(_$ReceiptItemListImpl(
      receiptType: freezed == receiptType
          ? _value.receiptType
          : receiptType // ignore: cast_nullable_to_non_nullable
              as String?,
      receiptDesc: freezed == receiptDesc
          ? _value.receiptDesc
          : receiptDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      receiptState: freezed == receiptState
          ? _value.receiptState
          : receiptState // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiptItemListImpl implements _ReceiptItemList {
  const _$ReceiptItemListImpl(
      {this.receiptType,
      this.receiptDesc,
      this.currency,
      this.amount,
      this.receiptState});

  factory _$ReceiptItemListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiptItemListImplFromJson(json);

  @override
  final String? receiptType;
  @override
  final String? receiptDesc;
  @override
  final String? currency;
  @override
  final double? amount;
  @override
  final String? receiptState;

  @override
  String toString() {
    return 'ReceiptItemList(receiptType: $receiptType, receiptDesc: $receiptDesc, currency: $currency, amount: $amount, receiptState: $receiptState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptItemListImpl &&
            (identical(other.receiptType, receiptType) ||
                other.receiptType == receiptType) &&
            (identical(other.receiptDesc, receiptDesc) ||
                other.receiptDesc == receiptDesc) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.receiptState, receiptState) ||
                other.receiptState == receiptState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, receiptType, receiptDesc, currency, amount, receiptState);

  /// Create a copy of ReceiptItemList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptItemListImplCopyWith<_$ReceiptItemListImpl> get copyWith =>
      __$$ReceiptItemListImplCopyWithImpl<_$ReceiptItemListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiptItemListImplToJson(
      this,
    );
  }
}

abstract class _ReceiptItemList implements ReceiptItemList {
  const factory _ReceiptItemList(
      {final String? receiptType,
      final String? receiptDesc,
      final String? currency,
      final double? amount,
      final String? receiptState}) = _$ReceiptItemListImpl;

  factory _ReceiptItemList.fromJson(Map<String, dynamic> json) =
      _$ReceiptItemListImpl.fromJson;

  @override
  String? get receiptType;
  @override
  String? get receiptDesc;
  @override
  String? get currency;
  @override
  double? get amount;
  @override
  String? get receiptState;

  /// Create a copy of ReceiptItemList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiptItemListImplCopyWith<_$ReceiptItemListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PageMeta _$PageMetaFromJson(Map<String, dynamic> json) {
  return _PageMeta.fromJson(json);
}

/// @nodoc
mixin _$PageMeta {
  int? get pageNum => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get pages => throw _privateConstructorUsedError;

  /// Serializes this PageMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PageMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageMetaCopyWith<PageMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageMetaCopyWith<$Res> {
  factory $PageMetaCopyWith(PageMeta value, $Res Function(PageMeta) then) =
      _$PageMetaCopyWithImpl<$Res, PageMeta>;
  @useResult
  $Res call({int? pageNum, int? pageSize, int? total, int? pages});
}

/// @nodoc
class _$PageMetaCopyWithImpl<$Res, $Val extends PageMeta>
    implements $PageMetaCopyWith<$Res> {
  _$PageMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNum = freezed,
    Object? pageSize = freezed,
    Object? total = freezed,
    Object? pages = freezed,
  }) {
    return _then(_value.copyWith(
      pageNum: freezed == pageNum
          ? _value.pageNum
          : pageNum // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageMetaImplCopyWith<$Res>
    implements $PageMetaCopyWith<$Res> {
  factory _$$PageMetaImplCopyWith(
          _$PageMetaImpl value, $Res Function(_$PageMetaImpl) then) =
      __$$PageMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? pageNum, int? pageSize, int? total, int? pages});
}

/// @nodoc
class __$$PageMetaImplCopyWithImpl<$Res>
    extends _$PageMetaCopyWithImpl<$Res, _$PageMetaImpl>
    implements _$$PageMetaImplCopyWith<$Res> {
  __$$PageMetaImplCopyWithImpl(
      _$PageMetaImpl _value, $Res Function(_$PageMetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNum = freezed,
    Object? pageSize = freezed,
    Object? total = freezed,
    Object? pages = freezed,
  }) {
    return _then(_$PageMetaImpl(
      pageNum: freezed == pageNum
          ? _value.pageNum
          : pageNum // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageMetaImpl implements _PageMeta {
  const _$PageMetaImpl({this.pageNum, this.pageSize, this.total, this.pages});

  factory _$PageMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageMetaImplFromJson(json);

  @override
  final int? pageNum;
  @override
  final int? pageSize;
  @override
  final int? total;
  @override
  final int? pages;

  @override
  String toString() {
    return 'PageMeta(pageNum: $pageNum, pageSize: $pageSize, total: $total, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageMetaImpl &&
            (identical(other.pageNum, pageNum) || other.pageNum == pageNum) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pageNum, pageSize, total, pages);

  /// Create a copy of PageMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageMetaImplCopyWith<_$PageMetaImpl> get copyWith =>
      __$$PageMetaImplCopyWithImpl<_$PageMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageMetaImplToJson(
      this,
    );
  }
}

abstract class _PageMeta implements PageMeta {
  const factory _PageMeta(
      {final int? pageNum,
      final int? pageSize,
      final int? total,
      final int? pages}) = _$PageMetaImpl;

  factory _PageMeta.fromJson(Map<String, dynamic> json) =
      _$PageMetaImpl.fromJson;

  @override
  int? get pageNum;
  @override
  int? get pageSize;
  @override
  int? get total;
  @override
  int? get pages;

  /// Create a copy of PageMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageMetaImplCopyWith<_$PageMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
