import 'package:distribution_mall_flutter/entity/pay/pay.dart';
import 'package:distribution_mall_flutter/http/init.dart';
import 'package:distribution_mall_flutter/http/modules/pay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PayState {
  OrderPaymentEntity? orderPay;
  PaymentStateEntity? paymentState;

  PayState({this.orderPay, this.paymentState});

  PayState.initial();

  PayState copyWith(
          {OrderPaymentEntity? orderPay, PaymentStateEntity? paymentState}) =>
      PayState(
          orderPay: orderPay ?? this.orderPay,
          paymentState: paymentState ?? this.paymentState);
}

final paySelfProvider =
    StateNotifierProvider.autoDispose<PayViewModel, PayState>((ref) {
  return PayViewModel();
});

// 发起支付
class PayViewModel extends StateNotifier<PayState> {
  PayViewModel() : super(PayState.initial());

  Future<Result<OrderPaymentEntity>> getOrderPayment(
      Map<String, dynamic> params) async {
    Result<OrderPaymentEntity> data = await PayApi.orderPayment(params);
    state = state.copyWith(orderPay: data.data);
    return data;
  }

  // 查询订单状态
  Future<PaymentStateEntity?> queryPaymentState(
      String receiptPaymentId, String distributionOrderId) async {
    try {
      PaymentStateEntity? data = await PayApi.queryPaymentState({
        'receiptPaymentId': receiptPaymentId,
        'distributionOrderId': distributionOrderId
      });
      if (data == null) return null;
      state = state.copyWith(paymentState: data);
      return data;
    } catch (e) {
      debugPrint('eeeeeeeeeeee $e');
      return null;
    }
  }
}
