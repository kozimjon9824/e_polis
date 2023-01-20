import 'package:e_polis/src/core/themes/app_icons.dart';

//payment
enum PaymentType { payMe, click, apelsin, byCard }

class PaymentModel {
  final PaymentType? paymentType;
  final String icon;
  final String? cashBack;

  PaymentModel({this.paymentType, this.icon = '', this.cashBack});
}

final paymentTypeList = [
  PaymentModel(paymentType: PaymentType.payMe, icon: AppIcons.payMe),
  PaymentModel(paymentType: PaymentType.click, icon: AppIcons.click),
  PaymentModel(paymentType: PaymentType.apelsin, icon: AppIcons.apelsin),
  PaymentModel(paymentType: PaymentType.byCard, icon: AppIcons.card),
];
