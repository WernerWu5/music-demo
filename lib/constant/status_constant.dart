import 'package:flutter/cupertino.dart';

class OrderTransportConstant {
  // 防抖
  static String local = 'LOCAL';
  static String sea = 'SEA';
}

class OrderStatus {
  static String toPay = 'WAIT_PAY';
  static String confirmed = 'WAIT_CONFIRM';
  static String preparing = 'PREPARING';
  static String shipped = 'SHIPPED';
  static String completed = 'COMPLETED';
  static String closed = 'CLOSED';
}

class PayStatus {
  static String waiting = 'WAITING';
  static String pending = 'PENDING';
  static String successed = 'SUCCESSED';
  static String closed = 'CLOSED';
  static String returned = 'RETURNED';
}

class OrderTypeConstant {
  ///领样
  static String sample = 'SAMPLE';

  ///正常下单
  static String normal = 'NORMAL';
}

enum OrderStatusEnum {
  empty('', ''),
  notCancel('NOT_CANCEL', 'Not Cancel'),
  offlineSelf('OFFLINE_SELF', 'Offline Self'),
  toPay('WAIT_PAY', 'To Pay'),
  waitAudit('WAIT_AUDIT', 'To Pay'),
  waitConfirm('WAIT_CONFIRM', 'To Be Confirmed'),
  confirmed('CONFIRMING', 'To Be Confirmed'),

  preparing('PREPARING', 'Preparing'),
  awaitShip('WAIT_SHIP', 'Preparing'),

  crossShipped('CROSS_SHIPPED', 'Shipping'),
  localShipped('LOCAL_SHIPPED', 'Shipping'),
  disShipped('DISPATCHING', 'Shipping'),
  shipped('SHIPPED', 'Shipping'),

  awaitReceive('WAIT_RECEIVE', 'Completed'),

  completed('COMPLETED', 'Order Success'),
  closed('CLOSED', 'Order Closed');

  const OrderStatusEnum(this.status, this.statusText);
  final String status;
  final String statusText;

  static String getStatusText([String? status = '']) {
    return OrderStatusEnum.values
        .firstWhere((item) => item.status == (status ?? ''),
            orElse: () => OrderStatusEnum.empty)
        .statusText;
  }

  static int getStatusIndex([String? status = '']) => OrderStatusEnum.values
      .firstWhere((item) => item.status == status,
          orElse: () => OrderStatusEnum.empty)
      .index;
}

enum OrderPayStatusEnum {
  empty('', ''),
  toPay('WAIT_PAY', 'To Pay'),
  confirm('WAIT_PAY_RECEIPT_CONFIRM', 'Confirm'),
  partPay('PART_PAY', 'Part Pay'),
  paid('PAID', 'Paid'),
  codToPay('COD_PAY', 'COD To Pay');

  const OrderPayStatusEnum(this.status, this.statusText);
  final String status;
  final String statusText;

  static String getStatusText(String? status) => OrderPayStatusEnum.values
      .firstWhere((item) => item.status == status,
          orElse: () => OrderPayStatusEnum.empty)
      .statusText;

  static int getStatusIndex(String? status) => OrderPayStatusEnum.values
      .firstWhere((item) => item.status == status,
          orElse: () => OrderPayStatusEnum.empty)
      .index;
}

// 都行，刷新，加载中，空
enum LoadStatus { allow, refresh, loading, operationing, empty }

var test = OrderStatusEnum;

const Map<String, Color> locationCol = {
  'N1': Color.fromRGBO(255, 0, 0, 1),
  'N2': Color.fromRGBO(255, 165, 0, 1),
  'N3': Color.fromRGBO(150, 150, 17, 1),
  'N4': Color.fromRGBO(0, 255, 0, 1),
  'N5': Color.fromRGBO(43, 126, 126, 1),
  'N6': Color.fromRGBO(0, 255, 255, 1),
  'N7': Color.fromRGBO(0, 0, 255, 1),
  'total': Color.fromRGBO(139, 0, 255, 1),
};

const Map<String, Color> otherColor = {
  'mean': Color.fromRGBO(41, 40, 41, 1),
  'totalMean': Color.fromRGBO(3, 40, 226, 1),
};

class MusicSort {
  static const int as = 1;
  static const int des = 0;
}

class MusicType {
  static const String song = 'song';
  static const String collection = 'collection';
}
