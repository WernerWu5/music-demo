// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderDetailEntity _$OrderDetailEntityFromJson(Map<String, dynamic> json) {
  return _OrderDetailEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailEntity {
  String? get distributionOrderId => throw _privateConstructorUsedError;
  String? get channelOrderNo => throw _privateConstructorUsedError;
  String? get remark => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get orderType => throw _privateConstructorUsedError;
  String? get tradeState => throw _privateConstructorUsedError;
  String? get cancelState => throw _privateConstructorUsedError;
  String? get cancelReason => throw _privateConstructorUsedError;
  int? get gmtCreate => throw _privateConstructorUsedError;
  int? get gmtPay => throw _privateConstructorUsedError;
  int? get gmtDelivery => throw _privateConstructorUsedError;
  int? get gmtFinish => throw _privateConstructorUsedError;
  int? get paymentDeadline => throw _privateConstructorUsedError;
  int? get gmtParentCreate => throw _privateConstructorUsedError;
  Amount? get amount => throw _privateConstructorUsedError;
  Payment? get payment => throw _privateConstructorUsedError;
  Consignee? get consignee => throw _privateConstructorUsedError;
  List<OrderItemGroupList>? get orderItemGroupList =>
      throw _privateConstructorUsedError;
  List<OrderPromotionList>? get orderPromotionList =>
      throw _privateConstructorUsedError;
  String? get transportType => throw _privateConstructorUsedError;
  String? get transportTypeName => throw _privateConstructorUsedError;
  bool? get isCod => throw _privateConstructorUsedError;
  bool? get isCanCod => throw _privateConstructorUsedError;
  String? get tradeOrderId => throw _privateConstructorUsedError;
  String? get parentOrderId => throw _privateConstructorUsedError;
  bool? get canCustomerDelete => throw _privateConstructorUsedError;

  /// Serializes this OrderDetailEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDetailEntityCopyWith<OrderDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailEntityCopyWith<$Res> {
  factory $OrderDetailEntityCopyWith(
          OrderDetailEntity value, $Res Function(OrderDetailEntity) then) =
      _$OrderDetailEntityCopyWithImpl<$Res, OrderDetailEntity>;
  @useResult
  $Res call(
      {String? distributionOrderId,
      String? channelOrderNo,
      String? remark,
      String? state,
      String? orderType,
      String? tradeState,
      String? cancelState,
      String? cancelReason,
      int? gmtCreate,
      int? gmtPay,
      int? gmtDelivery,
      int? gmtFinish,
      int? paymentDeadline,
      int? gmtParentCreate,
      Amount? amount,
      Payment? payment,
      Consignee? consignee,
      List<OrderItemGroupList>? orderItemGroupList,
      List<OrderPromotionList>? orderPromotionList,
      String? transportType,
      String? transportTypeName,
      bool? isCod,
      bool? isCanCod,
      String? tradeOrderId,
      String? parentOrderId,
      bool? canCustomerDelete});

  $AmountCopyWith<$Res>? get amount;
  $PaymentCopyWith<$Res>? get payment;
  $ConsigneeCopyWith<$Res>? get consignee;
}

/// @nodoc
class _$OrderDetailEntityCopyWithImpl<$Res, $Val extends OrderDetailEntity>
    implements $OrderDetailEntityCopyWith<$Res> {
  _$OrderDetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distributionOrderId = freezed,
    Object? channelOrderNo = freezed,
    Object? remark = freezed,
    Object? state = freezed,
    Object? orderType = freezed,
    Object? tradeState = freezed,
    Object? cancelState = freezed,
    Object? cancelReason = freezed,
    Object? gmtCreate = freezed,
    Object? gmtPay = freezed,
    Object? gmtDelivery = freezed,
    Object? gmtFinish = freezed,
    Object? paymentDeadline = freezed,
    Object? gmtParentCreate = freezed,
    Object? amount = freezed,
    Object? payment = freezed,
    Object? consignee = freezed,
    Object? orderItemGroupList = freezed,
    Object? orderPromotionList = freezed,
    Object? transportType = freezed,
    Object? transportTypeName = freezed,
    Object? isCod = freezed,
    Object? isCanCod = freezed,
    Object? tradeOrderId = freezed,
    Object? parentOrderId = freezed,
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
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      tradeState: freezed == tradeState
          ? _value.tradeState
          : tradeState // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelState: freezed == cancelState
          ? _value.cancelState
          : cancelState // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
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
      paymentDeadline: freezed == paymentDeadline
          ? _value.paymentDeadline
          : paymentDeadline // ignore: cast_nullable_to_non_nullable
              as int?,
      gmtParentCreate: freezed == gmtParentCreate
          ? _value.gmtParentCreate
          : gmtParentCreate // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
      consignee: freezed == consignee
          ? _value.consignee
          : consignee // ignore: cast_nullable_to_non_nullable
              as Consignee?,
      orderItemGroupList: freezed == orderItemGroupList
          ? _value.orderItemGroupList
          : orderItemGroupList // ignore: cast_nullable_to_non_nullable
              as List<OrderItemGroupList>?,
      orderPromotionList: freezed == orderPromotionList
          ? _value.orderPromotionList
          : orderPromotionList // ignore: cast_nullable_to_non_nullable
              as List<OrderPromotionList>?,
      transportType: freezed == transportType
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String?,
      transportTypeName: freezed == transportTypeName
          ? _value.transportTypeName
          : transportTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      isCod: freezed == isCod
          ? _value.isCod
          : isCod // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCanCod: freezed == isCanCod
          ? _value.isCanCod
          : isCanCod // ignore: cast_nullable_to_non_nullable
              as bool?,
      tradeOrderId: freezed == tradeOrderId
          ? _value.tradeOrderId
          : tradeOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentOrderId: freezed == parentOrderId
          ? _value.parentOrderId
          : parentOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      canCustomerDelete: freezed == canCustomerDelete
          ? _value.canCustomerDelete
          : canCustomerDelete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of OrderDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AmountCopyWith<$Res>? get amount {
    if (_value.amount == null) {
      return null;
    }

    return $AmountCopyWith<$Res>(_value.amount!, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }

  /// Create a copy of OrderDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res>? get payment {
    if (_value.payment == null) {
      return null;
    }

    return $PaymentCopyWith<$Res>(_value.payment!, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }

  /// Create a copy of OrderDetailEntity
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
abstract class _$$OrderDetailEntityImplCopyWith<$Res>
    implements $OrderDetailEntityCopyWith<$Res> {
  factory _$$OrderDetailEntityImplCopyWith(_$OrderDetailEntityImpl value,
          $Res Function(_$OrderDetailEntityImpl) then) =
      __$$OrderDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? distributionOrderId,
      String? channelOrderNo,
      String? remark,
      String? state,
      String? orderType,
      String? tradeState,
      String? cancelState,
      String? cancelReason,
      int? gmtCreate,
      int? gmtPay,
      int? gmtDelivery,
      int? gmtFinish,
      int? paymentDeadline,
      int? gmtParentCreate,
      Amount? amount,
      Payment? payment,
      Consignee? consignee,
      List<OrderItemGroupList>? orderItemGroupList,
      List<OrderPromotionList>? orderPromotionList,
      String? transportType,
      String? transportTypeName,
      bool? isCod,
      bool? isCanCod,
      String? tradeOrderId,
      String? parentOrderId,
      bool? canCustomerDelete});

  @override
  $AmountCopyWith<$Res>? get amount;
  @override
  $PaymentCopyWith<$Res>? get payment;
  @override
  $ConsigneeCopyWith<$Res>? get consignee;
}

/// @nodoc
class __$$OrderDetailEntityImplCopyWithImpl<$Res>
    extends _$OrderDetailEntityCopyWithImpl<$Res, _$OrderDetailEntityImpl>
    implements _$$OrderDetailEntityImplCopyWith<$Res> {
  __$$OrderDetailEntityImplCopyWithImpl(_$OrderDetailEntityImpl _value,
      $Res Function(_$OrderDetailEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distributionOrderId = freezed,
    Object? channelOrderNo = freezed,
    Object? remark = freezed,
    Object? state = freezed,
    Object? orderType = freezed,
    Object? tradeState = freezed,
    Object? cancelState = freezed,
    Object? cancelReason = freezed,
    Object? gmtCreate = freezed,
    Object? gmtPay = freezed,
    Object? gmtDelivery = freezed,
    Object? gmtFinish = freezed,
    Object? paymentDeadline = freezed,
    Object? gmtParentCreate = freezed,
    Object? amount = freezed,
    Object? payment = freezed,
    Object? consignee = freezed,
    Object? orderItemGroupList = freezed,
    Object? orderPromotionList = freezed,
    Object? transportType = freezed,
    Object? transportTypeName = freezed,
    Object? isCod = freezed,
    Object? isCanCod = freezed,
    Object? tradeOrderId = freezed,
    Object? parentOrderId = freezed,
    Object? canCustomerDelete = freezed,
  }) {
    return _then(_$OrderDetailEntityImpl(
      distributionOrderId: freezed == distributionOrderId
          ? _value.distributionOrderId
          : distributionOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelOrderNo: freezed == channelOrderNo
          ? _value.channelOrderNo
          : channelOrderNo // ignore: cast_nullable_to_non_nullable
              as String?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      tradeState: freezed == tradeState
          ? _value.tradeState
          : tradeState // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelState: freezed == cancelState
          ? _value.cancelState
          : cancelState // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
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
      paymentDeadline: freezed == paymentDeadline
          ? _value.paymentDeadline
          : paymentDeadline // ignore: cast_nullable_to_non_nullable
              as int?,
      gmtParentCreate: freezed == gmtParentCreate
          ? _value.gmtParentCreate
          : gmtParentCreate // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
      consignee: freezed == consignee
          ? _value.consignee
          : consignee // ignore: cast_nullable_to_non_nullable
              as Consignee?,
      orderItemGroupList: freezed == orderItemGroupList
          ? _value._orderItemGroupList
          : orderItemGroupList // ignore: cast_nullable_to_non_nullable
              as List<OrderItemGroupList>?,
      orderPromotionList: freezed == orderPromotionList
          ? _value._orderPromotionList
          : orderPromotionList // ignore: cast_nullable_to_non_nullable
              as List<OrderPromotionList>?,
      transportType: freezed == transportType
          ? _value.transportType
          : transportType // ignore: cast_nullable_to_non_nullable
              as String?,
      transportTypeName: freezed == transportTypeName
          ? _value.transportTypeName
          : transportTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      isCod: freezed == isCod
          ? _value.isCod
          : isCod // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCanCod: freezed == isCanCod
          ? _value.isCanCod
          : isCanCod // ignore: cast_nullable_to_non_nullable
              as bool?,
      tradeOrderId: freezed == tradeOrderId
          ? _value.tradeOrderId
          : tradeOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentOrderId: freezed == parentOrderId
          ? _value.parentOrderId
          : parentOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      canCustomerDelete: freezed == canCustomerDelete
          ? _value.canCustomerDelete
          : canCustomerDelete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailEntityImpl implements _OrderDetailEntity {
  const _$OrderDetailEntityImpl(
      {this.distributionOrderId,
      this.channelOrderNo,
      this.remark,
      this.state,
      this.orderType,
      this.tradeState,
      this.cancelState,
      this.cancelReason,
      this.gmtCreate,
      this.gmtPay,
      this.gmtDelivery,
      this.gmtFinish,
      this.paymentDeadline,
      this.gmtParentCreate,
      this.amount,
      this.payment,
      this.consignee,
      final List<OrderItemGroupList>? orderItemGroupList,
      final List<OrderPromotionList>? orderPromotionList,
      this.transportType,
      this.transportTypeName,
      this.isCod,
      this.isCanCod,
      this.tradeOrderId,
      this.parentOrderId,
      this.canCustomerDelete})
      : _orderItemGroupList = orderItemGroupList,
        _orderPromotionList = orderPromotionList;

  factory _$OrderDetailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailEntityImplFromJson(json);

  @override
  final String? distributionOrderId;
  @override
  final String? channelOrderNo;
  @override
  final String? remark;
  @override
  final String? state;
  @override
  final String? orderType;
  @override
  final String? tradeState;
  @override
  final String? cancelState;
  @override
  final String? cancelReason;
  @override
  final int? gmtCreate;
  @override
  final int? gmtPay;
  @override
  final int? gmtDelivery;
  @override
  final int? gmtFinish;
  @override
  final int? paymentDeadline;
  @override
  final int? gmtParentCreate;
  @override
  final Amount? amount;
  @override
  final Payment? payment;
  @override
  final Consignee? consignee;
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

  final List<OrderPromotionList>? _orderPromotionList;
  @override
  List<OrderPromotionList>? get orderPromotionList {
    final value = _orderPromotionList;
    if (value == null) return null;
    if (_orderPromotionList is EqualUnmodifiableListView)
      return _orderPromotionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? transportType;
  @override
  final String? transportTypeName;
  @override
  final bool? isCod;
  @override
  final bool? isCanCod;
  @override
  final String? tradeOrderId;
  @override
  final String? parentOrderId;
  @override
  final bool? canCustomerDelete;

  @override
  String toString() {
    return 'OrderDetailEntity(distributionOrderId: $distributionOrderId, channelOrderNo: $channelOrderNo, remark: $remark, state: $state, orderType: $orderType, tradeState: $tradeState, cancelState: $cancelState, cancelReason: $cancelReason, gmtCreate: $gmtCreate, gmtPay: $gmtPay, gmtDelivery: $gmtDelivery, gmtFinish: $gmtFinish, paymentDeadline: $paymentDeadline, gmtParentCreate: $gmtParentCreate, amount: $amount, payment: $payment, consignee: $consignee, orderItemGroupList: $orderItemGroupList, orderPromotionList: $orderPromotionList, transportType: $transportType, transportTypeName: $transportTypeName, isCod: $isCod, isCanCod: $isCanCod, tradeOrderId: $tradeOrderId, parentOrderId: $parentOrderId, canCustomerDelete: $canCustomerDelete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailEntityImpl &&
            (identical(other.distributionOrderId, distributionOrderId) ||
                other.distributionOrderId == distributionOrderId) &&
            (identical(other.channelOrderNo, channelOrderNo) ||
                other.channelOrderNo == channelOrderNo) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.tradeState, tradeState) ||
                other.tradeState == tradeState) &&
            (identical(other.cancelState, cancelState) ||
                other.cancelState == cancelState) &&
            (identical(other.cancelReason, cancelReason) ||
                other.cancelReason == cancelReason) &&
            (identical(other.gmtCreate, gmtCreate) ||
                other.gmtCreate == gmtCreate) &&
            (identical(other.gmtPay, gmtPay) || other.gmtPay == gmtPay) &&
            (identical(other.gmtDelivery, gmtDelivery) ||
                other.gmtDelivery == gmtDelivery) &&
            (identical(other.gmtFinish, gmtFinish) ||
                other.gmtFinish == gmtFinish) &&
            (identical(other.paymentDeadline, paymentDeadline) ||
                other.paymentDeadline == paymentDeadline) &&
            (identical(other.gmtParentCreate, gmtParentCreate) ||
                other.gmtParentCreate == gmtParentCreate) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.consignee, consignee) ||
                other.consignee == consignee) &&
            const DeepCollectionEquality()
                .equals(other._orderItemGroupList, _orderItemGroupList) &&
            const DeepCollectionEquality()
                .equals(other._orderPromotionList, _orderPromotionList) &&
            (identical(other.transportType, transportType) ||
                other.transportType == transportType) &&
            (identical(other.transportTypeName, transportTypeName) ||
                other.transportTypeName == transportTypeName) &&
            (identical(other.isCod, isCod) || other.isCod == isCod) &&
            (identical(other.isCanCod, isCanCod) ||
                other.isCanCod == isCanCod) &&
            (identical(other.tradeOrderId, tradeOrderId) ||
                other.tradeOrderId == tradeOrderId) &&
            (identical(other.parentOrderId, parentOrderId) ||
                other.parentOrderId == parentOrderId) &&
            (identical(other.canCustomerDelete, canCustomerDelete) ||
                other.canCustomerDelete == canCustomerDelete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        distributionOrderId,
        channelOrderNo,
        remark,
        state,
        orderType,
        tradeState,
        cancelState,
        cancelReason,
        gmtCreate,
        gmtPay,
        gmtDelivery,
        gmtFinish,
        paymentDeadline,
        gmtParentCreate,
        amount,
        payment,
        consignee,
        const DeepCollectionEquality().hash(_orderItemGroupList),
        const DeepCollectionEquality().hash(_orderPromotionList),
        transportType,
        transportTypeName,
        isCod,
        isCanCod,
        tradeOrderId,
        parentOrderId,
        canCustomerDelete
      ]);

  /// Create a copy of OrderDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailEntityImplCopyWith<_$OrderDetailEntityImpl> get copyWith =>
      __$$OrderDetailEntityImplCopyWithImpl<_$OrderDetailEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailEntityImplToJson(
      this,
    );
  }
}

abstract class _OrderDetailEntity implements OrderDetailEntity {
  const factory _OrderDetailEntity(
      {final String? distributionOrderId,
      final String? channelOrderNo,
      final String? remark,
      final String? state,
      final String? orderType,
      final String? tradeState,
      final String? cancelState,
      final String? cancelReason,
      final int? gmtCreate,
      final int? gmtPay,
      final int? gmtDelivery,
      final int? gmtFinish,
      final int? paymentDeadline,
      final int? gmtParentCreate,
      final Amount? amount,
      final Payment? payment,
      final Consignee? consignee,
      final List<OrderItemGroupList>? orderItemGroupList,
      final List<OrderPromotionList>? orderPromotionList,
      final String? transportType,
      final String? transportTypeName,
      final bool? isCod,
      final bool? isCanCod,
      final String? tradeOrderId,
      final String? parentOrderId,
      final bool? canCustomerDelete}) = _$OrderDetailEntityImpl;

  factory _OrderDetailEntity.fromJson(Map<String, dynamic> json) =
      _$OrderDetailEntityImpl.fromJson;

  @override
  String? get distributionOrderId;
  @override
  String? get channelOrderNo;
  @override
  String? get remark;
  @override
  String? get state;
  @override
  String? get orderType;
  @override
  String? get tradeState;
  @override
  String? get cancelState;
  @override
  String? get cancelReason;
  @override
  int? get gmtCreate;
  @override
  int? get gmtPay;
  @override
  int? get gmtDelivery;
  @override
  int? get gmtFinish;
  @override
  int? get paymentDeadline;
  @override
  int? get gmtParentCreate;
  @override
  Amount? get amount;
  @override
  Payment? get payment;
  @override
  Consignee? get consignee;
  @override
  List<OrderItemGroupList>? get orderItemGroupList;
  @override
  List<OrderPromotionList>? get orderPromotionList;
  @override
  String? get transportType;
  @override
  String? get transportTypeName;
  @override
  bool? get isCod;
  @override
  bool? get isCanCod;
  @override
  String? get tradeOrderId;
  @override
  String? get parentOrderId;
  @override
  bool? get canCustomerDelete;

  /// Create a copy of OrderDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDetailEntityImplCopyWith<_$OrderDetailEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Amount _$AmountFromJson(Map<String, dynamic> json) {
  return _Amount.fromJson(json);
}

/// @nodoc
mixin _$Amount {
  String? get currency => throw _privateConstructorUsedError;
  double? get totalAmount => throw _privateConstructorUsedError;
  double? get goodsTotalAmount => throw _privateConstructorUsedError;
  double? get shippingAmount => throw _privateConstructorUsedError;
  double? get goodsCollectionFreight => throw _privateConstructorUsedError;
  double? get internationalLogisticsFreight =>
      throw _privateConstructorUsedError;
  double? get terminalLogisticsFreight => throw _privateConstructorUsedError;
  double? get adjustAmount => throw _privateConstructorUsedError;
  double? get tax => throw _privateConstructorUsedError;
  double? get goodsDiscount => throw _privateConstructorUsedError;
  double? get freightDiscount => throw _privateConstructorUsedError;
  double? get activityDiscount => throw _privateConstructorUsedError;
  double? get couponDiscount => throw _privateConstructorUsedError;
  double? get activityGoodsDiscount => throw _privateConstructorUsedError;
  double? get activityFreightDiscount => throw _privateConstructorUsedError;
  double? get couponGoodsDiscount => throw _privateConstructorUsedError;
  double? get couponFreightDiscount => throw _privateConstructorUsedError;
  double? get totalDiscount => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  List<ReceiptItemList>? get receiptItemList =>
      throw _privateConstructorUsedError;

  /// Serializes this Amount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Amount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AmountCopyWith<Amount> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountCopyWith<$Res> {
  factory $AmountCopyWith(Amount value, $Res Function(Amount) then) =
      _$AmountCopyWithImpl<$Res, Amount>;
  @useResult
  $Res call(
      {String? currency,
      double? totalAmount,
      double? goodsTotalAmount,
      double? shippingAmount,
      double? goodsCollectionFreight,
      double? internationalLogisticsFreight,
      double? terminalLogisticsFreight,
      double? adjustAmount,
      double? tax,
      double? goodsDiscount,
      double? freightDiscount,
      double? activityDiscount,
      double? couponDiscount,
      double? activityGoodsDiscount,
      double? activityFreightDiscount,
      double? couponGoodsDiscount,
      double? couponFreightDiscount,
      double? totalDiscount,
      double? discount,
      List<ReceiptItemList>? receiptItemList});
}

/// @nodoc
class _$AmountCopyWithImpl<$Res, $Val extends Amount>
    implements $AmountCopyWith<$Res> {
  _$AmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Amount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = freezed,
    Object? totalAmount = freezed,
    Object? goodsTotalAmount = freezed,
    Object? shippingAmount = freezed,
    Object? goodsCollectionFreight = freezed,
    Object? internationalLogisticsFreight = freezed,
    Object? terminalLogisticsFreight = freezed,
    Object? adjustAmount = freezed,
    Object? tax = freezed,
    Object? goodsDiscount = freezed,
    Object? freightDiscount = freezed,
    Object? activityDiscount = freezed,
    Object? couponDiscount = freezed,
    Object? activityGoodsDiscount = freezed,
    Object? activityFreightDiscount = freezed,
    Object? couponGoodsDiscount = freezed,
    Object? couponFreightDiscount = freezed,
    Object? totalDiscount = freezed,
    Object? discount = freezed,
    Object? receiptItemList = freezed,
  }) {
    return _then(_value.copyWith(
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      goodsTotalAmount: freezed == goodsTotalAmount
          ? _value.goodsTotalAmount
          : goodsTotalAmount // ignore: cast_nullable_to_non_nullable
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
      adjustAmount: freezed == adjustAmount
          ? _value.adjustAmount
          : adjustAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
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
      totalDiscount: freezed == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      receiptItemList: freezed == receiptItemList
          ? _value.receiptItemList
          : receiptItemList // ignore: cast_nullable_to_non_nullable
              as List<ReceiptItemList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AmountImplCopyWith<$Res> implements $AmountCopyWith<$Res> {
  factory _$$AmountImplCopyWith(
          _$AmountImpl value, $Res Function(_$AmountImpl) then) =
      __$$AmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? currency,
      double? totalAmount,
      double? goodsTotalAmount,
      double? shippingAmount,
      double? goodsCollectionFreight,
      double? internationalLogisticsFreight,
      double? terminalLogisticsFreight,
      double? adjustAmount,
      double? tax,
      double? goodsDiscount,
      double? freightDiscount,
      double? activityDiscount,
      double? couponDiscount,
      double? activityGoodsDiscount,
      double? activityFreightDiscount,
      double? couponGoodsDiscount,
      double? couponFreightDiscount,
      double? totalDiscount,
      double? discount,
      List<ReceiptItemList>? receiptItemList});
}

/// @nodoc
class __$$AmountImplCopyWithImpl<$Res>
    extends _$AmountCopyWithImpl<$Res, _$AmountImpl>
    implements _$$AmountImplCopyWith<$Res> {
  __$$AmountImplCopyWithImpl(
      _$AmountImpl _value, $Res Function(_$AmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of Amount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = freezed,
    Object? totalAmount = freezed,
    Object? goodsTotalAmount = freezed,
    Object? shippingAmount = freezed,
    Object? goodsCollectionFreight = freezed,
    Object? internationalLogisticsFreight = freezed,
    Object? terminalLogisticsFreight = freezed,
    Object? adjustAmount = freezed,
    Object? tax = freezed,
    Object? goodsDiscount = freezed,
    Object? freightDiscount = freezed,
    Object? activityDiscount = freezed,
    Object? couponDiscount = freezed,
    Object? activityGoodsDiscount = freezed,
    Object? activityFreightDiscount = freezed,
    Object? couponGoodsDiscount = freezed,
    Object? couponFreightDiscount = freezed,
    Object? totalDiscount = freezed,
    Object? discount = freezed,
    Object? receiptItemList = freezed,
  }) {
    return _then(_$AmountImpl(
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      goodsTotalAmount: freezed == goodsTotalAmount
          ? _value.goodsTotalAmount
          : goodsTotalAmount // ignore: cast_nullable_to_non_nullable
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
      adjustAmount: freezed == adjustAmount
          ? _value.adjustAmount
          : adjustAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
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
      totalDiscount: freezed == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      receiptItemList: freezed == receiptItemList
          ? _value._receiptItemList
          : receiptItemList // ignore: cast_nullable_to_non_nullable
              as List<ReceiptItemList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AmountImpl implements _Amount {
  const _$AmountImpl(
      {this.currency,
      this.totalAmount,
      this.goodsTotalAmount,
      this.shippingAmount,
      this.goodsCollectionFreight,
      this.internationalLogisticsFreight,
      this.terminalLogisticsFreight,
      this.adjustAmount,
      this.tax,
      this.goodsDiscount,
      this.freightDiscount,
      this.activityDiscount,
      this.couponDiscount,
      this.activityGoodsDiscount,
      this.activityFreightDiscount,
      this.couponGoodsDiscount,
      this.couponFreightDiscount,
      this.totalDiscount,
      this.discount,
      final List<ReceiptItemList>? receiptItemList})
      : _receiptItemList = receiptItemList;

  factory _$AmountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AmountImplFromJson(json);

  @override
  final String? currency;
  @override
  final double? totalAmount;
  @override
  final double? goodsTotalAmount;
  @override
  final double? shippingAmount;
  @override
  final double? goodsCollectionFreight;
  @override
  final double? internationalLogisticsFreight;
  @override
  final double? terminalLogisticsFreight;
  @override
  final double? adjustAmount;
  @override
  final double? tax;
  @override
  final double? goodsDiscount;
  @override
  final double? freightDiscount;
  @override
  final double? activityDiscount;
  @override
  final double? couponDiscount;
  @override
  final double? activityGoodsDiscount;
  @override
  final double? activityFreightDiscount;
  @override
  final double? couponGoodsDiscount;
  @override
  final double? couponFreightDiscount;
  @override
  final double? totalDiscount;
  @override
  final double? discount;
  final List<ReceiptItemList>? _receiptItemList;
  @override
  List<ReceiptItemList>? get receiptItemList {
    final value = _receiptItemList;
    if (value == null) return null;
    if (_receiptItemList is EqualUnmodifiableListView) return _receiptItemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Amount(currency: $currency, totalAmount: $totalAmount, goodsTotalAmount: $goodsTotalAmount, shippingAmount: $shippingAmount, goodsCollectionFreight: $goodsCollectionFreight, internationalLogisticsFreight: $internationalLogisticsFreight, terminalLogisticsFreight: $terminalLogisticsFreight, adjustAmount: $adjustAmount, tax: $tax, goodsDiscount: $goodsDiscount, freightDiscount: $freightDiscount, activityDiscount: $activityDiscount, couponDiscount: $couponDiscount, activityGoodsDiscount: $activityGoodsDiscount, activityFreightDiscount: $activityFreightDiscount, couponGoodsDiscount: $couponGoodsDiscount, couponFreightDiscount: $couponFreightDiscount, totalDiscount: $totalDiscount, discount: $discount, receiptItemList: $receiptItemList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.goodsTotalAmount, goodsTotalAmount) ||
                other.goodsTotalAmount == goodsTotalAmount) &&
            (identical(other.shippingAmount, shippingAmount) ||
                other.shippingAmount == shippingAmount) &&
            (identical(other.goodsCollectionFreight, goodsCollectionFreight) ||
                other.goodsCollectionFreight == goodsCollectionFreight) &&
            (identical(other.internationalLogisticsFreight,
                    internationalLogisticsFreight) ||
                other.internationalLogisticsFreight ==
                    internationalLogisticsFreight) &&
            (identical(
                    other.terminalLogisticsFreight, terminalLogisticsFreight) ||
                other.terminalLogisticsFreight == terminalLogisticsFreight) &&
            (identical(other.adjustAmount, adjustAmount) ||
                other.adjustAmount == adjustAmount) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.goodsDiscount, goodsDiscount) ||
                other.goodsDiscount == goodsDiscount) &&
            (identical(other.freightDiscount, freightDiscount) ||
                other.freightDiscount == freightDiscount) &&
            (identical(other.activityDiscount, activityDiscount) ||
                other.activityDiscount == activityDiscount) &&
            (identical(other.couponDiscount, couponDiscount) ||
                other.couponDiscount == couponDiscount) &&
            (identical(other.activityGoodsDiscount, activityGoodsDiscount) ||
                other.activityGoodsDiscount == activityGoodsDiscount) &&
            (identical(
                    other.activityFreightDiscount, activityFreightDiscount) ||
                other.activityFreightDiscount == activityFreightDiscount) &&
            (identical(other.couponGoodsDiscount, couponGoodsDiscount) ||
                other.couponGoodsDiscount == couponGoodsDiscount) &&
            (identical(other.couponFreightDiscount, couponFreightDiscount) ||
                other.couponFreightDiscount == couponFreightDiscount) &&
            (identical(other.totalDiscount, totalDiscount) ||
                other.totalDiscount == totalDiscount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            const DeepCollectionEquality()
                .equals(other._receiptItemList, _receiptItemList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        currency,
        totalAmount,
        goodsTotalAmount,
        shippingAmount,
        goodsCollectionFreight,
        internationalLogisticsFreight,
        terminalLogisticsFreight,
        adjustAmount,
        tax,
        goodsDiscount,
        freightDiscount,
        activityDiscount,
        couponDiscount,
        activityGoodsDiscount,
        activityFreightDiscount,
        couponGoodsDiscount,
        couponFreightDiscount,
        totalDiscount,
        discount,
        const DeepCollectionEquality().hash(_receiptItemList)
      ]);

  /// Create a copy of Amount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountImplCopyWith<_$AmountImpl> get copyWith =>
      __$$AmountImplCopyWithImpl<_$AmountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AmountImplToJson(
      this,
    );
  }
}

abstract class _Amount implements Amount {
  const factory _Amount(
      {final String? currency,
      final double? totalAmount,
      final double? goodsTotalAmount,
      final double? shippingAmount,
      final double? goodsCollectionFreight,
      final double? internationalLogisticsFreight,
      final double? terminalLogisticsFreight,
      final double? adjustAmount,
      final double? tax,
      final double? goodsDiscount,
      final double? freightDiscount,
      final double? activityDiscount,
      final double? couponDiscount,
      final double? activityGoodsDiscount,
      final double? activityFreightDiscount,
      final double? couponGoodsDiscount,
      final double? couponFreightDiscount,
      final double? totalDiscount,
      final double? discount,
      final List<ReceiptItemList>? receiptItemList}) = _$AmountImpl;

  factory _Amount.fromJson(Map<String, dynamic> json) = _$AmountImpl.fromJson;

  @override
  String? get currency;
  @override
  double? get totalAmount;
  @override
  double? get goodsTotalAmount;
  @override
  double? get shippingAmount;
  @override
  double? get goodsCollectionFreight;
  @override
  double? get internationalLogisticsFreight;
  @override
  double? get terminalLogisticsFreight;
  @override
  double? get adjustAmount;
  @override
  double? get tax;
  @override
  double? get goodsDiscount;
  @override
  double? get freightDiscount;
  @override
  double? get activityDiscount;
  @override
  double? get couponDiscount;
  @override
  double? get activityGoodsDiscount;
  @override
  double? get activityFreightDiscount;
  @override
  double? get couponGoodsDiscount;
  @override
  double? get couponFreightDiscount;
  @override
  double? get totalDiscount;
  @override
  double? get discount;
  @override
  List<ReceiptItemList>? get receiptItemList;

  /// Create a copy of Amount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AmountImplCopyWith<_$AmountImpl> get copyWith =>
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
  String? get specUnit => throw _privateConstructorUsedError;
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
  double? get subTotalAtOrderCurrency => throw _privateConstructorUsedError;
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
      String? specUnit,
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
      double? subTotalAtOrderCurrency,
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
    Object? specUnit = freezed,
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
    Object? subTotalAtOrderCurrency = freezed,
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
      specUnit: freezed == specUnit
          ? _value.specUnit
          : specUnit // ignore: cast_nullable_to_non_nullable
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
      subTotalAtOrderCurrency: freezed == subTotalAtOrderCurrency
          ? _value.subTotalAtOrderCurrency
          : subTotalAtOrderCurrency // ignore: cast_nullable_to_non_nullable
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
      String? specUnit,
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
      double? subTotalAtOrderCurrency,
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
    Object? specUnit = freezed,
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
    Object? subTotalAtOrderCurrency = freezed,
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
      specUnit: freezed == specUnit
          ? _value.specUnit
          : specUnit // ignore: cast_nullable_to_non_nullable
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
      subTotalAtOrderCurrency: freezed == subTotalAtOrderCurrency
          ? _value.subTotalAtOrderCurrency
          : subTotalAtOrderCurrency // ignore: cast_nullable_to_non_nullable
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
      this.specUnit,
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
      this.subTotalAtOrderCurrency,
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
  final String? specUnit;
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
  final double? subTotalAtOrderCurrency;
  @override
  final bool? isCanCod;

  @override
  String toString() {
    return 'OrderGoodsList(saleItemId: $saleItemId, subItemId: $subItemId, afterSale: $afterSale, channelSaleUnitId: $channelSaleUnitId, title: $title, mainImage: $mainImage, specs: $specs, spec: $spec, specUnit: $specUnit, quantity: $quantity, moq: $moq, stockNum: $stockNum, salePrice: $salePrice, salePriceCurrency: $salePriceCurrency, salePriceAtOrderCurrency: $salePriceAtOrderCurrency, isLocalShipping: $isLocalShipping, shipsFrom: $shipsFrom, transportType: $transportType, internationalLpId: $internationalLpId, internationalLpCode: $internationalLpCode, internationalLpName: $internationalLpName, terminalLpId: $terminalLpId, terminalLpCode: $terminalLpCode, terminalLpName: $terminalLpName, tax: $tax, totalDiscount: $totalDiscount, discount: $discount, activityGoodsDiscount: $activityGoodsDiscount, activityFreightDiscount: $activityFreightDiscount, couponGoodsDiscount: $couponGoodsDiscount, couponFreightDiscount: $couponFreightDiscount, goodsDiscount: $goodsDiscount, freightDiscount: $freightDiscount, activityDiscount: $activityDiscount, couponDiscount: $couponDiscount, shippingAmount: $shippingAmount, goodsCollectionFreight: $goodsCollectionFreight, internationalLogisticsFreight: $internationalLogisticsFreight, terminalLogisticsFreight: $terminalLogisticsFreight, subTotalAtOrderCurrency: $subTotalAtOrderCurrency, isCanCod: $isCanCod)';
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
            (identical(other.specUnit, specUnit) ||
                other.specUnit == specUnit) &&
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
            (identical(other.terminalLogisticsFreight, terminalLogisticsFreight) || other.terminalLogisticsFreight == terminalLogisticsFreight) &&
            (identical(other.subTotalAtOrderCurrency, subTotalAtOrderCurrency) || other.subTotalAtOrderCurrency == subTotalAtOrderCurrency) &&
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
        specUnit,
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
        subTotalAtOrderCurrency,
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
      final String? specUnit,
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
      final double? subTotalAtOrderCurrency,
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
  String? get specUnit;
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
  double? get subTotalAtOrderCurrency;
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

OrderPromotionList _$OrderPromotionListFromJson(Map<String, dynamic> json) {
  return _OrderPromotionList.fromJson(json);
}

/// @nodoc
mixin _$OrderPromotionList {
  String? get promotionPlanId => throw _privateConstructorUsedError;
  String? get promotionCode => throw _privateConstructorUsedError;
  String? get promotionType => throw _privateConstructorUsedError;
  String? get promotionTarget => throw _privateConstructorUsedError;
  double? get discountAmount => throw _privateConstructorUsedError;

  /// Serializes this OrderPromotionList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderPromotionList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderPromotionListCopyWith<OrderPromotionList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPromotionListCopyWith<$Res> {
  factory $OrderPromotionListCopyWith(
          OrderPromotionList value, $Res Function(OrderPromotionList) then) =
      _$OrderPromotionListCopyWithImpl<$Res, OrderPromotionList>;
  @useResult
  $Res call(
      {String? promotionPlanId,
      String? promotionCode,
      String? promotionType,
      String? promotionTarget,
      double? discountAmount});
}

/// @nodoc
class _$OrderPromotionListCopyWithImpl<$Res, $Val extends OrderPromotionList>
    implements $OrderPromotionListCopyWith<$Res> {
  _$OrderPromotionListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderPromotionList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotionPlanId = freezed,
    Object? promotionCode = freezed,
    Object? promotionType = freezed,
    Object? promotionTarget = freezed,
    Object? discountAmount = freezed,
  }) {
    return _then(_value.copyWith(
      promotionPlanId: freezed == promotionPlanId
          ? _value.promotionPlanId
          : promotionPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      promotionCode: freezed == promotionCode
          ? _value.promotionCode
          : promotionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      promotionType: freezed == promotionType
          ? _value.promotionType
          : promotionType // ignore: cast_nullable_to_non_nullable
              as String?,
      promotionTarget: freezed == promotionTarget
          ? _value.promotionTarget
          : promotionTarget // ignore: cast_nullable_to_non_nullable
              as String?,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderPromotionListImplCopyWith<$Res>
    implements $OrderPromotionListCopyWith<$Res> {
  factory _$$OrderPromotionListImplCopyWith(_$OrderPromotionListImpl value,
          $Res Function(_$OrderPromotionListImpl) then) =
      __$$OrderPromotionListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? promotionPlanId,
      String? promotionCode,
      String? promotionType,
      String? promotionTarget,
      double? discountAmount});
}

/// @nodoc
class __$$OrderPromotionListImplCopyWithImpl<$Res>
    extends _$OrderPromotionListCopyWithImpl<$Res, _$OrderPromotionListImpl>
    implements _$$OrderPromotionListImplCopyWith<$Res> {
  __$$OrderPromotionListImplCopyWithImpl(_$OrderPromotionListImpl _value,
      $Res Function(_$OrderPromotionListImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderPromotionList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotionPlanId = freezed,
    Object? promotionCode = freezed,
    Object? promotionType = freezed,
    Object? promotionTarget = freezed,
    Object? discountAmount = freezed,
  }) {
    return _then(_$OrderPromotionListImpl(
      promotionPlanId: freezed == promotionPlanId
          ? _value.promotionPlanId
          : promotionPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
      promotionCode: freezed == promotionCode
          ? _value.promotionCode
          : promotionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      promotionType: freezed == promotionType
          ? _value.promotionType
          : promotionType // ignore: cast_nullable_to_non_nullable
              as String?,
      promotionTarget: freezed == promotionTarget
          ? _value.promotionTarget
          : promotionTarget // ignore: cast_nullable_to_non_nullable
              as String?,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderPromotionListImpl implements _OrderPromotionList {
  const _$OrderPromotionListImpl(
      {this.promotionPlanId,
      this.promotionCode,
      this.promotionType,
      this.promotionTarget,
      this.discountAmount});

  factory _$OrderPromotionListImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderPromotionListImplFromJson(json);

  @override
  final String? promotionPlanId;
  @override
  final String? promotionCode;
  @override
  final String? promotionType;
  @override
  final String? promotionTarget;
  @override
  final double? discountAmount;

  @override
  String toString() {
    return 'OrderPromotionList(promotionPlanId: $promotionPlanId, promotionCode: $promotionCode, promotionType: $promotionType, promotionTarget: $promotionTarget, discountAmount: $discountAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPromotionListImpl &&
            (identical(other.promotionPlanId, promotionPlanId) ||
                other.promotionPlanId == promotionPlanId) &&
            (identical(other.promotionCode, promotionCode) ||
                other.promotionCode == promotionCode) &&
            (identical(other.promotionType, promotionType) ||
                other.promotionType == promotionType) &&
            (identical(other.promotionTarget, promotionTarget) ||
                other.promotionTarget == promotionTarget) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, promotionPlanId, promotionCode,
      promotionType, promotionTarget, discountAmount);

  /// Create a copy of OrderPromotionList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPromotionListImplCopyWith<_$OrderPromotionListImpl> get copyWith =>
      __$$OrderPromotionListImplCopyWithImpl<_$OrderPromotionListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderPromotionListImplToJson(
      this,
    );
  }
}

abstract class _OrderPromotionList implements OrderPromotionList {
  const factory _OrderPromotionList(
      {final String? promotionPlanId,
      final String? promotionCode,
      final String? promotionType,
      final String? promotionTarget,
      final double? discountAmount}) = _$OrderPromotionListImpl;

  factory _OrderPromotionList.fromJson(Map<String, dynamic> json) =
      _$OrderPromotionListImpl.fromJson;

  @override
  String? get promotionPlanId;
  @override
  String? get promotionCode;
  @override
  String? get promotionType;
  @override
  String? get promotionTarget;
  @override
  double? get discountAmount;

  /// Create a copy of OrderPromotionList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderPromotionListImplCopyWith<_$OrderPromotionListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  String? get paymentState => throw _privateConstructorUsedError;
  double? get amountPaid => throw _privateConstructorUsedError;
  List<PaidListElement>? get paidList => throw _privateConstructorUsedError;
  List<PaidListElement>? get unPayList => throw _privateConstructorUsedError;

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call(
      {String? paymentState,
      double? amountPaid,
      List<PaidListElement>? paidList,
      List<PaidListElement>? unPayList});
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentState = freezed,
    Object? amountPaid = freezed,
    Object? paidList = freezed,
    Object? unPayList = freezed,
  }) {
    return _then(_value.copyWith(
      paymentState: freezed == paymentState
          ? _value.paymentState
          : paymentState // ignore: cast_nullable_to_non_nullable
              as String?,
      amountPaid: freezed == amountPaid
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as double?,
      paidList: freezed == paidList
          ? _value.paidList
          : paidList // ignore: cast_nullable_to_non_nullable
              as List<PaidListElement>?,
      unPayList: freezed == unPayList
          ? _value.unPayList
          : unPayList // ignore: cast_nullable_to_non_nullable
              as List<PaidListElement>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
          _$PaymentImpl value, $Res Function(_$PaymentImpl) then) =
      __$$PaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? paymentState,
      double? amountPaid,
      List<PaidListElement>? paidList,
      List<PaidListElement>? unPayList});
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
      _$PaymentImpl _value, $Res Function(_$PaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentState = freezed,
    Object? amountPaid = freezed,
    Object? paidList = freezed,
    Object? unPayList = freezed,
  }) {
    return _then(_$PaymentImpl(
      paymentState: freezed == paymentState
          ? _value.paymentState
          : paymentState // ignore: cast_nullable_to_non_nullable
              as String?,
      amountPaid: freezed == amountPaid
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as double?,
      paidList: freezed == paidList
          ? _value._paidList
          : paidList // ignore: cast_nullable_to_non_nullable
              as List<PaidListElement>?,
      unPayList: freezed == unPayList
          ? _value._unPayList
          : unPayList // ignore: cast_nullable_to_non_nullable
              as List<PaidListElement>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentImpl implements _Payment {
  const _$PaymentImpl(
      {this.paymentState,
      this.amountPaid,
      final List<PaidListElement>? paidList,
      final List<PaidListElement>? unPayList})
      : _paidList = paidList,
        _unPayList = unPayList;

  factory _$PaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentImplFromJson(json);

  @override
  final String? paymentState;
  @override
  final double? amountPaid;
  final List<PaidListElement>? _paidList;
  @override
  List<PaidListElement>? get paidList {
    final value = _paidList;
    if (value == null) return null;
    if (_paidList is EqualUnmodifiableListView) return _paidList;
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

  @override
  String toString() {
    return 'Payment(paymentState: $paymentState, amountPaid: $amountPaid, paidList: $paidList, unPayList: $unPayList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentImpl &&
            (identical(other.paymentState, paymentState) ||
                other.paymentState == paymentState) &&
            (identical(other.amountPaid, amountPaid) ||
                other.amountPaid == amountPaid) &&
            const DeepCollectionEquality().equals(other._paidList, _paidList) &&
            const DeepCollectionEquality()
                .equals(other._unPayList, _unPayList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      paymentState,
      amountPaid,
      const DeepCollectionEquality().hash(_paidList),
      const DeepCollectionEquality().hash(_unPayList));

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      __$$PaymentImplCopyWithImpl<_$PaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentImplToJson(
      this,
    );
  }
}

abstract class _Payment implements Payment {
  const factory _Payment(
      {final String? paymentState,
      final double? amountPaid,
      final List<PaidListElement>? paidList,
      final List<PaidListElement>? unPayList}) = _$PaymentImpl;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$PaymentImpl.fromJson;

  @override
  String? get paymentState;
  @override
  double? get amountPaid;
  @override
  List<PaidListElement>? get paidList;
  @override
  List<PaidListElement>? get unPayList;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
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
