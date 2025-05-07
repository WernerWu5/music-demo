// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Home`
  String get tab_home {
    return Intl.message('Home', name: 'tab_home', desc: '', args: []);
  }

  /// `Message`
  String get tab_message {
    return Intl.message('Message', name: 'tab_message', desc: '', args: []);
  }

  /// `Cart`
  String get tab_cart {
    return Intl.message('Cart', name: 'tab_cart', desc: '', args: []);
  }

  /// `My`
  String get tab_my {
    return Intl.message('My', name: 'tab_my', desc: '', args: []);
  }

  /// `Epal`
  String get home_title {
    return Intl.message('Epal', name: 'home_title', desc: '', args: []);
  }

  /// `Log in to unlock`
  String get home_log_detail1 {
    return Intl.message(
      'Log in to unlock',
      name: 'home_log_detail1',
      desc: '',
      args: [],
    );
  }

  /// `wholesale price`
  String get home_log_detail2 {
    return Intl.message(
      'wholesale price',
      name: 'home_log_detail2',
      desc: '',
      args: [],
    );
  }

  /// `Log in to unlock wholesale price`
  String get home_log_in {
    return Intl.message(
      'Log in to unlock wholesale price',
      name: 'home_log_in',
      desc: '',
      args: [],
    );
  }

  /// `Account Deletion`
  String get home_account_deletion {
    return Intl.message(
      'Account Deletion',
      name: 'home_account_deletion',
      desc: '',
      args: [],
    );
  }

  /// `We are sad that you want to leave us, but please note that account deletion is irreversible.`
  String get home_account_deletion_tip {
    return Intl.message(
      'We are sad that you want to leave us, but please note that account deletion is irreversible.',
      name: 'home_account_deletion_tip',
      desc: '',
      args: [],
    );
  }

  /// `It will be ready shortly`
  String get it_will_shortly {
    return Intl.message(
      'It will be ready shortly',
      name: 'it_will_shortly',
      desc: '',
      args: [],
    );
  }

  /// `Specials & Evrnts`
  String get message_specials {
    return Intl.message(
      'Specials & Evrnts',
      name: 'message_specials',
      desc: '',
      args: [],
    );
  }

  /// `Sales Promotion`
  String get message_sales {
    return Intl.message(
      'Sales Promotion',
      name: 'message_sales',
      desc: '',
      args: [],
    );
  }

  /// `Title Content`
  String get message_title {
    return Intl.message(
      'Title Content',
      name: 'message_title',
      desc: '',
      args: [],
    );
  }

  /// `All Read`
  String get message_allRead {
    return Intl.message(
      'All Read',
      name: 'message_allRead',
      desc: '',
      args: [],
    );
  }

  /// `Delete Read`
  String get message_delete {
    return Intl.message(
      'Delete Read',
      name: 'message_delete',
      desc: '',
      args: [],
    );
  }

  /// `Order update notification`
  String get message_notification {
    return Intl.message(
      'Order update notification',
      name: 'message_notification',
      desc: '',
      args: [],
    );
  }

  /// `My Cart`
  String get cart_title {
    return Intl.message('My Cart', name: 'cart_title', desc: '', args: []);
  }

  /// `Variations`
  String get productDetails_variations {
    return Intl.message(
      'Variations',
      name: 'productDetails_variations',
      desc: '',
      args: [],
    );
  }

  /// `Procurement Details`
  String get productDetails_procurement {
    return Intl.message(
      'Procurement Details',
      name: 'productDetails_procurement',
      desc: '',
      args: [],
    );
  }

  /// `Elephant-pal Platform guarantee`
  String get productDetails_guarantee {
    return Intl.message(
      'Elephant-pal Platform guarantee',
      name: 'productDetails_guarantee',
      desc: '',
      args: [],
    );
  }

  /// `Platform Guarantee`
  String get productDetails_platform {
    return Intl.message(
      'Platform Guarantee',
      name: 'productDetails_platform',
      desc: '',
      args: [],
    );
  }

  /// `Key Attributes`
  String get productDetails_attributes {
    return Intl.message(
      'Key Attributes',
      name: 'productDetails_attributes',
      desc: '',
      args: [],
    );
  }

  /// `Estimated to be delivered on`
  String get productDetails_estimated {
    return Intl.message(
      'Estimated to be delivered on',
      name: 'productDetails_estimated',
      desc: '',
      args: [],
    );
  }

  /// `Keep it new and unused .Damage claim...`
  String get productDetails_keep {
    return Intl.message(
      'Keep it new and unused .Damage claim...',
      name: 'productDetails_keep',
      desc: '',
      args: [],
    );
  }

  /// `Key Attributes`
  String get productDetails_key {
    return Intl.message(
      'Key Attributes',
      name: 'productDetails_key',
      desc: '',
      args: [],
    );
  }

  /// `Place of origin`
  String get productDetails_place {
    return Intl.message(
      'Place of origin',
      name: 'productDetails_place',
      desc: '',
      args: [],
    );
  }

  /// `Fei lV bin`
  String get productDetails_fei {
    return Intl.message(
      'Fei lV bin',
      name: 'productDetails_fei',
      desc: '',
      args: [],
    );
  }

  /// `import or not`
  String get productDetails_import {
    return Intl.message(
      'import or not',
      name: 'productDetails_import',
      desc: '',
      args: [],
    );
  }

  /// `You may get your ordered goods within the fastest time   with express delivery option. `
  String get productDetails_delivery_des {
    return Intl.message(
      'You may get your ordered goods within the fastest time   with express delivery option. ',
      name: 'productDetails_delivery_des',
      desc: '',
      args: [],
    );
  }

  /// `Collaborating with the most trustworthy shipping services provider (Ninjavan, J&T), your order will be delivered to you on time and to your door!`
  String get productDetails_door_des {
    return Intl.message(
      'Collaborating with the most trustworthy shipping services provider (Ninjavan, J&T), your order will be delivered to you on time and to your door!',
      name: 'productDetails_door_des',
      desc: '',
      args: [],
    );
  }

  /// `100% inspection Services`
  String get productDetails_inspection {
    return Intl.message(
      '100% inspection Services',
      name: 'productDetails_inspection',
      desc: '',
      args: [],
    );
  }

  /// `We provide quality control services, making your ordered products of good quality.`
  String get productDetails_inspection_des {
    return Intl.message(
      'We provide quality control services, making your ordered products of good quality.',
      name: 'productDetails_inspection_des',
      desc: '',
      args: [],
    );
  }

  /// `Money back guarantee`
  String get productDetails_money {
    return Intl.message(
      'Money back guarantee',
      name: 'productDetails_money',
      desc: '',
      args: [],
    );
  }

  /// `We assure you that all our products listed in the Shopee Mall are authentic. If you receive a non-authentic product, we will refund the money you’ve paid.`
  String get productDetails_money_des {
    return Intl.message(
      'We assure you that all our products listed in the Shopee Mall are authentic. If you receive a non-authentic product, we will refund the money you’ve paid.',
      name: 'productDetails_money_des',
      desc: '',
      args: [],
    );
  }

  /// `Solid customer communication`
  String get productDetails_solid {
    return Intl.message(
      'Solid customer communication',
      name: 'productDetails_solid',
      desc: '',
      args: [],
    );
  }

  /// `You can now directly communicate with our own customer care service, answering all of your inquiries.`
  String get productDetails_solid_des {
    return Intl.message(
      'You can now directly communicate with our own customer care service, answering all of your inquiries.',
      name: 'productDetails_solid_des',
      desc: '',
      args: [],
    );
  }

  /// `Payment Convience`
  String get productDetails_convience {
    return Intl.message(
      'Payment Convience',
      name: 'productDetails_convience',
      desc: '',
      args: [],
    );
  }

  /// `We assure you that all our products listed in the Shopee Mall are authentic. If you receive a non-authentic product, we will refund the money you’ve paid.`
  String get productDetails_convience_des {
    return Intl.message(
      'We assure you that all our products listed in the Shopee Mall are authentic. If you receive a non-authentic product, we will refund the money you’ve paid.',
      name: 'productDetails_convience_des',
      desc: '',
      args: [],
    );
  }

  /// `Verified Suppliers`
  String get productDetails_verified {
    return Intl.message(
      'Verified Suppliers',
      name: 'productDetails_verified',
      desc: '',
      args: [],
    );
  }

  /// `Ensure production quality from verified suppliers, providing exceptional goods and services from all over the world.`
  String get productDetails_verified_des {
    return Intl.message(
      'Ensure production quality from verified suppliers, providing exceptional goods and services from all over the world.',
      name: 'productDetails_verified_des',
      desc: '',
      args: [],
    );
  }

  /// `Similar product from this Category`
  String get productDetails_category {
    return Intl.message(
      'Similar product from this Category',
      name: 'productDetails_category',
      desc: '',
      args: [],
    );
  }

  /// `Similar product from this Brand`
  String get productDetails_brand {
    return Intl.message(
      'Similar product from this Brand',
      name: 'productDetails_brand',
      desc: '',
      args: [],
    );
  }

  /// `PURCHASE NOW`
  String get productDetails_purchase {
    return Intl.message(
      'PURCHASE NOW',
      name: 'productDetails_purchase',
      desc: '',
      args: [],
    );
  }

  /// `Unlock wholesale price`
  String get productDetails_unlock {
    return Intl.message(
      'Unlock wholesale price',
      name: 'productDetails_unlock',
      desc: '',
      args: [],
    );
  }

  /// `Add {total} items`
  String productDetails_item_total(Object total) {
    return Intl.message(
      'Add $total items',
      name: 'productDetails_item_total',
      desc: '',
      args: [total],
    );
  }

  /// `Potentital Kita`
  String get potentital_profit {
    return Intl.message(
      'Potentital Kita',
      name: 'potentital_profit',
      desc: '',
      args: [],
    );
  }

  /// `New: The total Kita of new added products`
  String get productDetails_tip {
    return Intl.message(
      'New: The total Kita of new added products',
      name: 'productDetails_tip',
      desc: '',
      args: [],
    );
  }

  /// `Select Address`
  String get checkout_sele_add {
    return Intl.message(
      'Select Address',
      name: 'checkout_sele_add',
      desc: '',
      args: [],
    );
  }

  /// `Select Payment`
  String get checkout_sele_pay {
    return Intl.message(
      'Select Payment',
      name: 'checkout_sele_pay',
      desc: '',
      args: [],
    );
  }

  /// `Promotion Code`
  String get checkout_promotion_code {
    return Intl.message(
      'Promotion Code',
      name: 'checkout_promotion_code',
      desc: '',
      args: [],
    );
  }

  /// `Items Amount`
  String get checkout_items_amount {
    return Intl.message(
      'Items Amount',
      name: 'checkout_items_amount',
      desc: '',
      args: [],
    );
  }

  /// `Shipping fee`
  String get checkout_shipping_fee {
    return Intl.message(
      'Shipping fee',
      name: 'checkout_shipping_fee',
      desc: '',
      args: [],
    );
  }

  /// `Show after choosing address`
  String get checkout_show_address {
    return Intl.message(
      'Show after choosing address',
      name: 'checkout_show_address',
      desc: '',
      args: [],
    );
  }

  /// `Discount`
  String get checkout_discount {
    return Intl.message(
      'Discount',
      name: 'checkout_discount',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the corect discount code`
  String get checkout_discount_code {
    return Intl.message(
      'Please enter the corect discount code',
      name: 'checkout_discount_code',
      desc: '',
      args: [],
    );
  }

  /// `Please select a payment method`
  String get checkout_please_method {
    return Intl.message(
      'Please select a payment method',
      name: 'checkout_please_method',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in the delivery address`
  String get checkout_please_address {
    return Intl.message(
      'Please fill in the delivery address',
      name: 'checkout_please_address',
      desc: '',
      args: [],
    );
  }

  /// `My Orders`
  String get my_myOrder {
    return Intl.message('My Orders', name: 'my_myOrder', desc: '', args: []);
  }

  /// `View all orders`
  String get my_viewOrder {
    return Intl.message(
      'View all orders',
      name: 'my_viewOrder',
      desc: '',
      args: [],
    );
  }

  /// `Change password`
  String get my_changePass {
    return Intl.message(
      'Change password',
      name: 'my_changePass',
      desc: '',
      args: [],
    );
  }

  /// `My address`
  String get my_address {
    return Intl.message('My address', name: 'my_address', desc: '', args: []);
  }

  /// `Contact us`
  String get my_contact {
    return Intl.message('Contact us', name: 'my_contact', desc: '', args: []);
  }

  /// `Pay By`
  String get pay_by {
    return Intl.message('Pay By', name: 'pay_by', desc: '', args: []);
  }

  /// `Order`
  String get order {
    return Intl.message('Order', name: 'order', desc: '', args: []);
  }

  /// `pending`
  String get order_pending {
    return Intl.message('pending', name: 'order_pending', desc: '', args: []);
  }

  /// `to be delivered`
  String get order_delivered {
    return Intl.message(
      'to be delivered',
      name: 'order_delivered',
      desc: '',
      args: [],
    );
  }

  /// `to be received`
  String get order_received {
    return Intl.message(
      'to be received',
      name: 'order_received',
      desc: '',
      args: [],
    );
  }

  /// `completed`
  String get order_completed {
    return Intl.message(
      'completed',
      name: 'order_completed',
      desc: '',
      args: [],
    );
  }

  /// `Shipping promo code`
  String get order_shippingPromo {
    return Intl.message(
      'Shipping promo code',
      name: 'order_shippingPromo',
      desc: '',
      args: [],
    );
  }

  /// `Order Summary`
  String get order_orderSum {
    return Intl.message(
      'Order Summary',
      name: 'order_orderSum',
      desc: '',
      args: [],
    );
  }

  /// `To Pay`
  String get order_status_to_pay {
    return Intl.message(
      'To Pay',
      name: 'order_status_to_pay',
      desc: '',
      args: [],
    );
  }

  /// `To Be Confirmed`
  String get order_status_to_confirmed {
    return Intl.message(
      'To Be Confirmed',
      name: 'order_status_to_confirmed',
      desc: '',
      args: [],
    );
  }

  /// `Preparing`
  String get order_status_preparing {
    return Intl.message(
      'Preparing',
      name: 'order_status_preparing',
      desc: '',
      args: [],
    );
  }

  /// `Shipped`
  String get order_status_shipped {
    return Intl.message(
      'Shipped',
      name: 'order_status_shipped',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get order_status_completed {
    return Intl.message(
      'Completed',
      name: 'order_status_completed',
      desc: '',
      args: [],
    );
  }

  /// `Closed`
  String get order_status_closed {
    return Intl.message(
      'Closed',
      name: 'order_status_closed',
      desc: '',
      args: [],
    );
  }

  /// `Promotion Discount`
  String get order_pro_dis {
    return Intl.message(
      'Promotion Discount',
      name: 'order_pro_dis',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Discount`
  String get order_shipping_dis {
    return Intl.message(
      'Shipping Discount',
      name: 'order_shipping_dis',
      desc: '',
      args: [],
    );
  }

  /// `State of payment`
  String get order_state_of_payment {
    return Intl.message(
      'State of payment',
      name: 'order_state_of_payment',
      desc: '',
      args: [],
    );
  }

  /// `Order Number`
  String get order_number {
    return Intl.message(
      'Order Number',
      name: 'order_number',
      desc: '',
      args: [],
    );
  }

  /// `Creation Time`
  String get order_time {
    return Intl.message(
      'Creation Time',
      name: 'order_time',
      desc: '',
      args: [],
    );
  }

  /// `Payment Number`
  String get order_oayment_number {
    return Intl.message(
      'Payment Number',
      name: 'order_oayment_number',
      desc: '',
      args: [],
    );
  }

  /// `Reason of cancel`
  String get order_reason_cancel {
    return Intl.message(
      'Reason of cancel',
      name: 'order_reason_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Go to logistics`
  String get order_go_to_log {
    return Intl.message(
      'Go to logistics',
      name: 'order_go_to_log',
      desc: '',
      args: [],
    );
  }

  /// `Go to {name} tracking your all package`
  String order_log_text(Object name) {
    return Intl.message(
      'Go to $name tracking your all package',
      name: 'order_log_text',
      desc: '',
      args: [name],
    );
  }

  /// `You are being redirected to an external, website to complete payment, authorization.`
  String get pay_loading_text {
    return Intl.message(
      'You are being redirected to an external, website to complete payment, authorization.',
      name: 'pay_loading_text',
      desc: '',
      args: [],
    );
  }

  /// `lf there is no response, click here`
  String get pay_loading_if {
    return Intl.message(
      'lf there is no response, click here',
      name: 'pay_loading_if',
      desc: '',
      args: [],
    );
  }

  /// `Amount to be paid`
  String get pay_amount {
    return Intl.message(
      'Amount to be paid',
      name: 'pay_amount',
      desc: '',
      args: [],
    );
  }

  /// `Please complete the payment within`
  String get pay_within {
    return Intl.message(
      'Please complete the payment within',
      name: 'pay_within',
      desc: '',
      args: [],
    );
  }

  /// `Our customer service system is being\nupgraded. Stay tuned!`
  String get after_sale_1 {
    return Intl.message(
      'Our customer service system is being\nupgraded. Stay tuned!',
      name: 'after_sale_1',
      desc: '',
      args: [],
    );
  }

  /// `If you have any questions,\nplease reach out to our support team.`
  String get after_sale_2 {
    return Intl.message(
      'If you have any questions,\nplease reach out to our support team.',
      name: 'after_sale_2',
      desc: '',
      args: [],
    );
  }

  /// `Scan the QR code to add our customer\nservice on Messenger!`
  String get after_sale_3 {
    return Intl.message(
      'Scan the QR code to add our customer\nservice on Messenger!',
      name: 'after_sale_3',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message('Address', name: 'address', desc: '', args: []);
  }

  /// `Select Address`
  String get address_select {
    return Intl.message(
      'Select Address',
      name: 'address_select',
      desc: '',
      args: [],
    );
  }

  /// `Add Address`
  String get address_add {
    return Intl.message('Add Address', name: 'address_add', desc: '', args: []);
  }

  /// `Edit Address`
  String get edit_add {
    return Intl.message('Edit Address', name: 'edit_add', desc: '', args: []);
  }

  /// `Please enter your name`
  String get address_pleaese_name {
    return Intl.message(
      'Please enter your name',
      name: 'address_pleaese_name',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get address_pleaese_phone {
    return Intl.message(
      'Please enter your phone number',
      name: 'address_pleaese_phone',
      desc: '',
      args: [],
    );
  }

  /// `Region/City/District`
  String get address_pleaese_address {
    return Intl.message(
      'Region/City/District',
      name: 'address_pleaese_address',
      desc: '',
      args: [],
    );
  }

  /// `Detailed address`
  String get address_pleaese_default_address {
    return Intl.message(
      'Detailed address',
      name: 'address_pleaese_default_address',
      desc: '',
      args: [],
    );
  }

  /// `Postal Code`
  String get address_pleaese_code {
    return Intl.message(
      'Postal Code',
      name: 'address_pleaese_code',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Address`
  String get address_delivery_address {
    return Intl.message(
      'Delivery Address',
      name: 'address_delivery_address',
      desc: '',
      args: [],
    );
  }

  /// `Enter the delivery address to get delivery time`
  String get address_enter {
    return Intl.message(
      'Enter the delivery address to get delivery time',
      name: 'address_enter',
      desc: '',
      args: [],
    );
  }

  /// `Please enter consignee name`
  String get address_please_name {
    return Intl.message(
      'Please enter consignee name',
      name: 'address_please_name',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a phone number`
  String get address_please_phone {
    return Intl.message(
      'Please enter a phone number',
      name: 'address_please_phone',
      desc: '',
      args: [],
    );
  }

  /// `Please select Region/City/District`
  String get address_please_building {
    return Intl.message(
      'Please select Region/City/District',
      name: 'address_please_building',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter`
  String get address_please_detailInfo {
    return Intl.message(
      'Please Enter',
      name: 'address_please_detailInfo',
      desc: '',
      args: [],
    );
  }

  /// `Please postal code`
  String get address_please_code {
    return Intl.message(
      'Please postal code',
      name: 'address_please_code',
      desc: '',
      args: [],
    );
  }

  /// `Wrong number format`
  String get address_phone_error_format {
    return Intl.message(
      'Wrong number format',
      name: 'address_phone_error_format',
      desc: '',
      args: [],
    );
  }

  /// `Postal Code`
  String get address_postal_code {
    return Intl.message(
      'Postal Code',
      name: 'address_postal_code',
      desc: '',
      args: [],
    );
  }

  /// `Please select the address first`
  String get address_please_first_add {
    return Intl.message(
      'Please select the address first',
      name: 'address_please_first_add',
      desc: '',
      args: [],
    );
  }

  /// `Mobile number login`
  String get user_login_mobileNumLogin {
    return Intl.message(
      'Mobile number login',
      name: 'user_login_mobileNumLogin',
      desc: '',
      args: [],
    );
  }

  /// `Account Login`
  String get user_login_accLogin {
    return Intl.message(
      'Account Login',
      name: 'user_login_accLogin',
      desc: '',
      args: [],
    );
  }

  /// `Enter your mobile number`
  String get user_login_enterMobile {
    return Intl.message(
      'Enter your mobile number',
      name: 'user_login_enterMobile',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the verif code`
  String get user_login_pleaseVerif {
    return Intl.message(
      'Please enter the verif code',
      name: 'user_login_pleaseVerif',
      desc: '',
      args: [],
    );
  }

  /// `Send via SMS`
  String get user_login_sendSMS {
    return Intl.message(
      'Send via SMS',
      name: 'user_login_sendSMS',
      desc: '',
      args: [],
    );
  }

  /// `Account Login`
  String get user_login_accountLogin {
    return Intl.message(
      'Account Login',
      name: 'user_login_accountLogin',
      desc: '',
      args: [],
    );
  }

  /// `User Authorization Agreement`
  String get user_login_userAgreement {
    return Intl.message(
      'User Authorization Agreement',
      name: 'user_login_userAgreement',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get user_login_or {
    return Intl.message('OR', name: 'user_login_or', desc: '', args: []);
  }

  /// `《User Authorization Agreement》`
  String get user_agree {
    return Intl.message(
      '《User Authorization Agreement》',
      name: 'user_agree',
      desc: '',
      args: [],
    );
  }

  /// `Or continue with`
  String get user_continue {
    return Intl.message(
      'Or continue with',
      name: 'user_continue',
      desc: '',
      args: [],
    );
  }

  /// `Forgot PassWord`
  String get user_forgot {
    return Intl.message(
      'Forgot PassWord',
      name: 'user_forgot',
      desc: '',
      args: [],
    );
  }

  /// `ENTER THE CODE`
  String get user_login_enter {
    return Intl.message(
      'ENTER THE CODE',
      name: 'user_login_enter',
      desc: '',
      args: [],
    );
  }

  /// `Enter the {number}-digit code sent to`
  String user_login_digit(Object number) {
    return Intl.message(
      'Enter the $number-digit code sent to',
      name: 'user_login_digit',
      desc: '',
      args: [number],
    );
  }

  /// `Resend the code in`
  String get user_login_time {
    return Intl.message(
      'Resend the code in',
      name: 'user_login_time',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get user_login_time_resend {
    return Intl.message(
      'Resend',
      name: 'user_login_time_resend',
      desc: '',
      args: [],
    );
  }

  /// `s`
  String get user_login_s {
    return Intl.message('s', name: 'user_login_s', desc: '', args: []);
  }

  /// `LOG IN/SIGN Up WITH MOBILE`
  String get user_login_log_sign {
    return Intl.message(
      'LOG IN/SIGN Up WITH MOBILE',
      name: 'user_login_log_sign',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get user_login_mobile_replace {
    return Intl.message(
      'Please enter your phone number',
      name: 'user_login_mobile_replace',
      desc: '',
      args: [],
    );
  }

  /// `By logging in/signing up, you agree to Elephant Pal`
  String get user_login_by_loggin {
    return Intl.message(
      'By logging in/signing up, you agree to Elephant Pal',
      name: 'user_login_by_loggin',
      desc: '',
      args: [],
    );
  }

  /// `LOGIN/SIGN UP`
  String get user_login_sign {
    return Intl.message(
      'LOGIN/SIGN UP',
      name: 'user_login_sign',
      desc: '',
      args: [],
    );
  }

  /// `Please re-enter your phone number`
  String get user_login_re_enter {
    return Intl.message(
      'Please re-enter your phone number',
      name: 'user_login_re_enter',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service`
  String get terms_services {
    return Intl.message(
      'Terms of Service',
      name: 'terms_services',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privary_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privary_policy',
      desc: '',
      args: [],
    );
  }

  /// `WHSL`
  String get WHSL {
    return Intl.message('WHSL', name: 'WHSL', desc: '', args: []);
  }

  /// `Buy Again`
  String get buy_again {
    return Intl.message('Buy Again', name: 'buy_again', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Continue With Google`
  String get with_google {
    return Intl.message(
      'Continue With Google',
      name: 'with_google',
      desc: '',
      args: [],
    );
  }

  /// `Continue With Apple`
  String get with_apple {
    return Intl.message(
      'Continue With Apple',
      name: 'with_apple',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get Apply {
    return Intl.message('Apply', name: 'Apply', desc: '', args: []);
  }

  /// `NEXT`
  String get NEXT {
    return Intl.message('NEXT', name: 'NEXT', desc: '', args: []);
  }

  /// `Please Enter`
  String get please_enter {
    return Intl.message(
      'Please Enter',
      name: 'please_enter',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get Add {
    return Intl.message('Add', name: 'Add', desc: '', args: []);
  }

  /// `loading`
  String get loading {
    return Intl.message('loading', name: 'loading', desc: '', args: []);
  }

  /// `END`
  String get END {
    return Intl.message('END', name: 'END', desc: '', args: []);
  }

  /// `Load More...`
  String get load_more {
    return Intl.message('Load More...', name: 'load_more', desc: '', args: []);
  }

  /// `Saved Successfully`
  String get save_successfully {
    return Intl.message(
      'Saved Successfully',
      name: 'save_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get Selec {
    return Intl.message('Select', name: 'Selec', desc: '', args: []);
  }

  /// `Save`
  String get Save {
    return Intl.message('Save', name: 'Save', desc: '', args: []);
  }

  /// `Contact Us`
  String get contact_us {
    return Intl.message('Contact Us', name: 'contact_us', desc: '', args: []);
  }

  /// `Log in now`
  String get log_in_now {
    return Intl.message('Log in now', name: 'log_in_now', desc: '', args: []);
  }

  /// `Dear`
  String get Dear {
    return Intl.message('Dear', name: 'Dear', desc: '', args: []);
  }

  /// `NAME`
  String get NAME {
    return Intl.message('NAME', name: 'NAME', desc: '', args: []);
  }

  /// `PHONE NUMBER`
  String get phone_number {
    return Intl.message(
      'PHONE NUMBER',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `ADDRESS`
  String get ADDRESS {
    return Intl.message('ADDRESS', name: 'ADDRESS', desc: '', args: []);
  }

  /// `POSTAL CODE`
  String get POSTAL_CODE {
    return Intl.message('POSTAL CODE', name: 'POSTAL_CODE', desc: '', args: []);
  }

  /// `Payment Method`
  String get payment_method {
    return Intl.message(
      'Payment Method',
      name: 'payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Default`
  String get Default {
    return Intl.message('Default', name: 'Default', desc: '', args: []);
  }

  /// `Edit`
  String get Edit {
    return Intl.message('Edit', name: 'Edit', desc: '', args: []);
  }

  /// `Pay Now`
  String get pay_now {
    return Intl.message('Pay Now', name: 'pay_now', desc: '', args: []);
  }

  /// `Note`
  String get Note {
    return Intl.message('Note', name: 'Note', desc: '', args: []);
  }

  /// `Click Note`
  String get click_note {
    return Intl.message('Click Note', name: 'click_note', desc: '', args: []);
  }

  /// `Checkout`
  String get Checkout {
    return Intl.message('Checkout', name: 'Checkout', desc: '', args: []);
  }

  /// `Items`
  String get Items {
    return Intl.message('Items', name: 'Items', desc: '', args: []);
  }

  /// `Sold`
  String get sold {
    return Intl.message('Sold', name: 'sold', desc: '', args: []);
  }

  /// `Log In`
  String get log_in {
    return Intl.message('Log In', name: 'log_in', desc: '', args: []);
  }

  /// `LOG IN`
  String get LOG_IN {
    return Intl.message('LOG IN', name: 'LOG_IN', desc: '', args: []);
  }

  /// `More`
  String get More {
    return Intl.message('More', name: 'More', desc: '', args: []);
  }

  /// `Hide`
  String get pack {
    return Intl.message('Hide', name: 'pack', desc: '', args: []);
  }

  /// `Minimum`
  String get minimum {
    return Intl.message('Minimum', name: 'minimum', desc: '', args: []);
  }

  /// `Pieces`
  String get pieces {
    return Intl.message('Pieces', name: 'pieces', desc: '', args: []);
  }

  /// `pc`
  String get Pcs {
    return Intl.message('pc', name: 'Pcs', desc: '', args: []);
  }

  /// `PP`
  String get pp {
    return Intl.message('PP', name: 'pp', desc: '', args: []);
  }

  /// `MSRP`
  String get msrp {
    return Intl.message('MSRP', name: 'msrp', desc: '', args: []);
  }

  /// `Earn`
  String get Earn {
    return Intl.message('Earn', name: 'Earn', desc: '', args: []);
  }

  /// `INTEGRATED`
  String get integrated {
    return Intl.message('INTEGRATED', name: 'integrated', desc: '', args: []);
  }

  /// `Kita`
  String get Kita {
    return Intl.message('Kita', name: 'Kita', desc: '', args: []);
  }

  /// `Legal Policies`
  String get legal_policies {
    return Intl.message(
      'Legal Policies',
      name: 'legal_policies',
      desc: '',
      args: [],
    );
  }

  /// `Service`
  String get service {
    return Intl.message('Service', name: 'service', desc: '', args: []);
  }

  /// `Log In`
  String get loginIn {
    return Intl.message('Log In', name: 'loginIn', desc: '', args: []);
  }

  /// `Agree`
  String get agree {
    return Intl.message('Agree', name: 'agree', desc: '', args: []);
  }

  /// `Update`
  String get update {
    return Intl.message('Update', name: 'update', desc: '', args: []);
  }

  /// `Description`
  String get description {
    return Intl.message('Description', name: 'description', desc: '', args: []);
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Subtotal`
  String get subtotal {
    return Intl.message('Subtotal', name: 'subtotal', desc: '', args: []);
  }

  /// `All`
  String get all {
    return Intl.message('All', name: 'all', desc: '', args: []);
  }

  /// `Check Out`
  String get checkOut {
    return Intl.message('Check Out', name: 'checkOut', desc: '', args: []);
  }

  /// `Shipping`
  String get shipping {
    return Intl.message('Shipping', name: 'shipping', desc: '', args: []);
  }

  /// `Free Shipping`
  String get freeShipping {
    return Intl.message(
      'Free Shipping',
      name: 'freeShipping',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message('Payment', name: 'payment', desc: '', args: []);
  }

  /// `Services of goods`
  String get servicesOfGoods {
    return Intl.message(
      'Services of goods',
      name: 'servicesOfGoods',
      desc: '',
      args: [],
    );
  }

  /// `Express delivery`
  String get expressDelivery {
    return Intl.message(
      'Express delivery',
      name: 'expressDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Door to door Delivery`
  String get door {
    return Intl.message(
      'Door to door Delivery',
      name: 'door',
      desc: '',
      args: [],
    );
  }

  /// `All Services`
  String get allServices {
    return Intl.message(
      'All Services',
      name: 'allServices',
      desc: '',
      args: [],
    );
  }

  /// `no`
  String get no {
    return Intl.message('no', name: 'no', desc: '', args: []);
  }

  /// `Product Detail`
  String get productDetail {
    return Intl.message(
      'Product Detail',
      name: 'productDetail',
      desc: '',
      args: [],
    );
  }

  /// `VIEW ALL`
  String get viewAll {
    return Intl.message('VIEW ALL', name: 'viewAll', desc: '', args: []);
  }

  /// `Contact Us`
  String get contactUs {
    return Intl.message('Contact Us', name: 'contactUs', desc: '', args: []);
  }

  /// `Add to cart`
  String get addCart {
    return Intl.message('Add to cart', name: 'addCart', desc: '', args: []);
  }

  /// `Buy Now`
  String get buyNow {
    return Intl.message('Buy Now', name: 'buyNow', desc: '', args: []);
  }

  /// `Specifcation`
  String get specifcation {
    return Intl.message(
      'Specifcation',
      name: 'specifcation',
      desc: '',
      args: [],
    );
  }

  /// `Search for anything`
  String get searchAnything {
    return Intl.message(
      'Search for anything',
      name: 'searchAnything',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message('Filter', name: 'filter', desc: '', args: []);
  }

  /// `OVERSEAS`
  String get overseas {
    return Intl.message('OVERSEAS', name: 'overseas', desc: '', args: []);
  }

  /// `LOCAL`
  String get local {
    return Intl.message('LOCAL', name: 'local', desc: '', args: []);
  }

  /// `Order Success`
  String get orderSuccess {
    return Intl.message(
      'Order Success',
      name: 'orderSuccess',
      desc: '',
      args: [],
    );
  }

  /// `items`
  String get items {
    return Intl.message('items', name: 'items', desc: '', args: []);
  }

  /// `Total`
  String get total {
    return Intl.message('Total', name: 'total', desc: '', args: []);
  }

  /// `More`
  String get more {
    return Intl.message('More', name: 'more', desc: '', args: []);
  }

  /// `End`
  String get noMore {
    return Intl.message('End', name: 'noMore', desc: '', args: []);
  }

  /// `Package Logistics`
  String get pLogistics {
    return Intl.message(
      'Package Logistics',
      name: 'pLogistics',
      desc: '',
      args: [],
    );
  }

  /// `Logistics`
  String get logistics {
    return Intl.message('Logistics', name: 'logistics', desc: '', args: []);
  }

  /// `Total Products Price`
  String get totalProducts {
    return Intl.message(
      'Total Products Price',
      name: 'totalProducts',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get note {
    return Intl.message('Note', name: 'note', desc: '', args: []);
  }

  /// `Promo Code`
  String get promo {
    return Intl.message('Promo Code', name: 'promo', desc: '', args: []);
  }

  /// `Use Code`
  String get useCode {
    return Intl.message('Use Code', name: 'useCode', desc: '', args: []);
  }

  /// `Shipping Fee`
  String get shippingFee {
    return Intl.message(
      'Shipping Fee',
      name: 'shippingFee',
      desc: '',
      args: [],
    );
  }

  /// `Pay By`
  String get payBy {
    return Intl.message('Pay By', name: 'payBy', desc: '', args: []);
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Logistics Option`
  String get logisticsOption {
    return Intl.message(
      'Logistics Option',
      name: 'logisticsOption',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message('Register', name: 'register', desc: '', args: []);
  }

  /// `IMPORTANT NOTE`
  String get important_note {
    return Intl.message(
      'IMPORTANT NOTE',
      name: 'important_note',
      desc: '',
      args: [],
    );
  }

  /// `Any remaining/unused, vouchers, coupons, and other paid services in your account will be forfeited.Please confirm that there are no orders in progress before proceeding.Continuing with the application will be considered as your confirmation that there are no pending buying or selling transactions in your account, including any unused or non-refunded e-vouchers, etc.After successful deletion of your account, Elephant Pal will continue to hold transactional data for financial aud Hit purposes.After successful deletion of your account, you will not be able to log in to a deleted account and view previous account history.After successful deletion of your account, you will no longer be able to use the same phone number or Email to create account, including third-party accounts, within 30 days.Elephant Pal reserves the right to reject future account creation requests.`
  String get important_note_content {
    return Intl.message(
      'Any remaining/unused, vouchers, coupons, and other paid services in your account will be forfeited.Please confirm that there are no orders in progress before proceeding.Continuing with the application will be considered as your confirmation that there are no pending buying or selling transactions in your account, including any unused or non-refunded e-vouchers, etc.After successful deletion of your account, Elephant Pal will continue to hold transactional data for financial aud Hit purposes.After successful deletion of your account, you will not be able to log in to a deleted account and view previous account history.After successful deletion of your account, you will no longer be able to use the same phone number or Email to create account, including third-party accounts, within 30 days.Elephant Pal reserves the right to reject future account creation requests.',
      name: 'important_note_content',
      desc: '',
      args: [],
    );
  }

  /// `Copy Succeeded`
  String get copy_succeeded {
    return Intl.message(
      'Copy Succeeded',
      name: 'copy_succeeded',
      desc: '',
      args: [],
    );
  }

  /// `Copy`
  String get copy {
    return Intl.message('Copy', name: 'copy', desc: '', args: []);
  }

  /// `Select Region`
  String get select_region {
    return Intl.message(
      'Select Region',
      name: 'select_region',
      desc: '',
      args: [],
    );
  }

  /// `Selected area`
  String get selected_area {
    return Intl.message(
      'Selected area',
      name: 'selected_area',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message('Reset', name: 'reset', desc: '', args: []);
  }

  /// `Search area/city`
  String get select_region_hint {
    return Intl.message(
      'Search area/city',
      name: 'select_region_hint',
      desc: '',
      args: [],
    );
  }

  /// `Confirm submission? Once submitted, the information cannot be modified.`
  String get confirm_submission {
    return Intl.message(
      'Confirm submission? Once submitted, the information cannot be modified.',
      name: 'confirm_submission',
      desc: '',
      args: [],
    );
  }

  /// `Authentication`
  String get authentication {
    return Intl.message(
      'Authentication',
      name: 'authentication',
      desc: '',
      args: [],
    );
  }

  /// `YES`
  String get yes {
    return Intl.message('YES', name: 'yes', desc: '', args: []);
  }

  /// `Business Name*`
  String get business_name {
    return Intl.message(
      'Business Name*',
      name: 'business_name',
      desc: '',
      args: [],
    );
  }

  /// `Please enter Business Name`
  String get please_enter_business_name {
    return Intl.message(
      'Please enter Business Name',
      name: 'please_enter_business_name',
      desc: '',
      args: [],
    );
  }

  /// `Certificate No. / BNN`
  String get certificate_no {
    return Intl.message(
      'Certificate No. / BNN',
      name: 'certificate_no',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number*`
  String get authentication_phone_number {
    return Intl.message(
      'Phone Number*',
      name: 'authentication_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a phone number`
  String get please_enter_a_phone_number {
    return Intl.message(
      'Please enter a phone number',
      name: 'please_enter_a_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Upload the business permit or storefront pictures*`
  String get business_permit {
    return Intl.message(
      'Upload the business permit or storefront pictures*',
      name: 'business_permit',
      desc: '',
      args: [],
    );
  }

  /// `Detailed address*`
  String get business_permit_detaled_address {
    return Intl.message(
      'Detailed address*',
      name: 'business_permit_detaled_address',
      desc: '',
      args: [],
    );
  }

  /// `Enter Specific House Number`
  String get business_permit_detaled_address_hint {
    return Intl.message(
      'Enter Specific House Number',
      name: 'business_permit_detaled_address_hint',
      desc: '',
      args: [],
    );
  }

  /// `Address*`
  String get business_permit_address {
    return Intl.message(
      'Address*',
      name: 'business_permit_address',
      desc: '',
      args: [],
    );
  }

  /// `Region/City/District`
  String get business_permit_address_hint {
    return Intl.message(
      'Region/City/District',
      name: 'business_permit_address_hint',
      desc: '',
      args: [],
    );
  }

  /// `Please upload the Business Permi`
  String get please_upload_the_business_permi {
    return Intl.message(
      'Please upload the Business Permi',
      name: 'please_upload_the_business_permi',
      desc: '',
      args: [],
    );
  }

  /// `Estimated to complete review in 1-3 days`
  String get estimated_to_complete_review_days {
    return Intl.message(
      'Estimated to complete review in 1-3 days',
      name: 'estimated_to_complete_review_days',
      desc: '',
      args: [],
    );
  }

  /// `One-time authentication for sample service enjoyment`
  String get one_time_authentication {
    return Intl.message(
      'One-time authentication for sample service enjoyment',
      name: 'one_time_authentication',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get review {
    return Intl.message('Review', name: 'review', desc: '', args: []);
  }

  /// `Pass`
  String get pass {
    return Intl.message('Pass', name: 'pass', desc: '', args: []);
  }

  /// `REJECT`
  String get reject {
    return Intl.message('REJECT', name: 'reject', desc: '', args: []);
  }

  /// `Congratulations on becoming a certified user`
  String get congratulations_becoming_certified_user {
    return Intl.message(
      'Congratulations on becoming a certified user',
      name: 'congratulations_becoming_certified_user',
      desc: '',
      args: [],
    );
  }

  /// `Be reviewed and completed within 1 to 3 days`
  String get be_reviewed_completed_within_days {
    return Intl.message(
      'Be reviewed and completed within 1 to 3 days',
      name: 'be_reviewed_completed_within_days',
      desc: '',
      args: [],
    );
  }

  /// `Update Prompt`
  String get update_prompt {
    return Intl.message(
      'Update Prompt',
      name: 'update_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Update Now`
  String get update_now {
    return Intl.message('Update Now', name: 'update_now', desc: '', args: []);
  }

  /// `Updating`
  String get Updating {
    return Intl.message('Updating', name: 'Updating', desc: '', args: []);
  }

  /// `Update Successfully`
  String get update_successfully {
    return Intl.message(
      'Update Successfully',
      name: 'update_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Get Libreng Sample now！`
  String get get_free_sample_sub_title {
    return Intl.message(
      'Get Libreng Sample now！',
      name: 'get_free_sample_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `GET SAMPLE >`
  String get get_sample {
    return Intl.message('GET SAMPLE >', name: 'get_sample', desc: '', args: []);
  }

  /// `Go`
  String get go {
    return Intl.message('Go', name: 'go', desc: '', args: []);
  }

  /// `Just one step away! Complete your merchant verification, and we’ll ship your order right away.`
  String get order_merchant_verification_hint {
    return Intl.message(
      'Just one step away! Complete your merchant verification, and we’ll ship your order right away.',
      name: 'order_merchant_verification_hint',
      desc: '',
      args: [],
    );
  }

  /// `If you exit now, you’ll lose your sample. Are you sure you want to leave?`
  String get order_merchant_verification_exit_hint {
    return Intl.message(
      'If you exit now, you’ll lose your sample. Are you sure you want to leave?',
      name: 'order_merchant_verification_exit_hint',
      desc: '',
      args: [],
    );
  }

  /// `You've submitted your merchant verification. Once approved, we'll ship your order immediately`
  String get order_merchant_verification_review_hint {
    return Intl.message(
      'You\'ve submitted your merchant verification. Once approved, we\'ll ship your order immediately',
      name: 'order_merchant_verification_review_hint',
      desc: '',
      args: [],
    );
  }

  /// `Merchant ldentity Verification is required Before Delivery`
  String get order_merchant_verification_page_top_hint {
    return Intl.message(
      'Merchant ldentity Verification is required Before Delivery',
      name: 'order_merchant_verification_page_top_hint',
      desc: '',
      args: [],
    );
  }

  /// `Go verification`
  String get order_merchant_verification_page_bottom_hint {
    return Intl.message(
      'Go verification',
      name: 'order_merchant_verification_page_bottom_hint',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message('OK', name: 'ok', desc: '', args: []);
  }

  /// `Re-Upload`
  String get re_upload {
    return Intl.message('Re-Upload', name: 're_upload', desc: '', args: []);
  }

  /// `camera`
  String get camera {
    return Intl.message('camera', name: 'camera', desc: '', args: []);
  }

  /// `gallery`
  String get gallery {
    return Intl.message('gallery', name: 'gallery', desc: '', args: []);
  }

  /// `Manufacturer's Suggested Retail Price`
  String get msrp_suggested {
    return Intl.message(
      'Manufacturer\'s Suggested Retail Price',
      name: 'msrp_suggested',
      desc: '',
      args: [],
    );
  }

  /// `KITA MARGIN`
  String get kita_margin {
    return Intl.message('KITA MARGIN', name: 'kita_margin', desc: '', args: []);
  }

  /// `GOT IT`
  String get got_it {
    return Intl.message('GOT IT', name: 'got_it', desc: '', args: []);
  }

  /// `Product Category`
  String get product_category {
    return Intl.message(
      'Product Category',
      name: 'product_category',
      desc: '',
      args: [],
    );
  }

  /// `NEXT PAGE`
  String get next_page {
    return Intl.message('NEXT PAGE', name: 'next_page', desc: '', args: []);
  }

  /// `EXPLORE THE FEATURES\nAFTER LOGGING IN`
  String get explore_the_features {
    return Intl.message(
      'EXPLORE THE FEATURES\nAFTER LOGGING IN',
      name: 'explore_the_features',
      desc: '',
      args: [],
    );
  }

  /// `Brand name, indicating the brand to which\nthe product belongs`
  String get guide_brand_name {
    return Intl.message(
      'Brand name, indicating the brand to which\nthe product belongs',
      name: 'guide_brand_name',
      desc: '',
      args: [],
    );
  }

  /// `Product Information Display Fully Upgraded`
  String get guide_brand_product_info {
    return Intl.message(
      'Product Information Display Fully Upgraded',
      name: 'guide_brand_product_info',
      desc: '',
      args: [],
    );
  }

  /// `Enter the invitation code`
  String get enter_the_invitation_code {
    return Intl.message(
      'Enter the invitation code',
      name: 'enter_the_invitation_code',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your invitation code to unlock your exclusive purchase price. More free samples await your claim.`
  String get enter_the_invitation_code_hint {
    return Intl.message(
      'Please enter your invitation code to unlock your exclusive purchase price. More free samples await your claim.',
      name: 'enter_the_invitation_code_hint',
      desc: '',
      args: [],
    );
  }

  /// `Get`
  String get Get {
    return Intl.message('Get', name: 'Get', desc: '', args: []);
  }

  /// `Got it`
  String get Got_it {
    return Intl.message('Got it', name: 'Got_it', desc: '', args: []);
  }

  /// `This area enjoys free shipping. We have selected the discount for you.`
  String get checkout_promotion_code_hint {
    return Intl.message(
      'This area enjoys free shipping. We have selected the discount for you.',
      name: 'checkout_promotion_code_hint',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
