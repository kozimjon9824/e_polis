import 'package:e_polis/src/core/themes/app_icons.dart';

import '../../data/models/book/book_model.dart';

//payment
enum PaymentType { payMe, click, uzum, byCard }

class PaymentModel {
  final PaymentType? paymentType;
  final String icon;
  final String? cashBack;
  final String name;

  PaymentModel({
    this.paymentType,
    this.icon = '',
    this.cashBack,
    required this.name,
  });
}

final paymentTypeList = [
  PaymentModel(
      paymentType: PaymentType.click, icon: AppIcons.click, name: 'CLICK'),
  PaymentModel(
      paymentType: PaymentType.payMe, icon: AppIcons.payMe, name: 'CLICK'),
  PaymentModel(
      paymentType: PaymentType.uzum, icon: AppIcons.uzum, name: 'CLICK'),
  PaymentModel(
      paymentType: PaymentType.byCard, icon: AppIcons.card, name: 'CLICK'),
];

class IndexedDriverModel {
  DriverModel? driverModel;
  final bool? isSuccess;
  bool relativeSelected;
  int relativeKey;

  IndexedDriverModel({
    this.driverModel,
    this.isSuccess,
    this.relativeSelected = false,
    this.relativeKey = 0,
  });
}
