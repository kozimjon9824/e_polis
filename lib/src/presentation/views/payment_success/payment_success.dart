import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/constants/constants.dart';
import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../generated/l10n.dart';
import '../../components/custom_button.dart';
import '../main_tabs/main_tab.dart';
import 'widgets.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as SuccessPageArgs;
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 2, 20, 20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.grey50),
              child: Column(
                children: [
                  SvgPicture.asset(AppIcons.paymentSuccess),
                  const SizedBox(height: 10),
                  Text(local.paymentInstruction,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.styleW700S18Green
                          .copyWith(color: AppColors.primaryColor)),
                  const SizedBox(height: 8),
                  // Text(local.SuccessDes,
                  //     textAlign: TextAlign.center,
                  //     style: AppTextStyles.styleW500S14Grey7),
                  // const SizedBox(height: 10),
                  const Divider(height: 24, color: AppColors.grey100),
                  // RowTitleWidget(title: local.status, value: local.payed),
                  RowTitleWidget(title: local.paymentType, value: 'Click'),
                  const Divider(height: 24, color: AppColors.grey100),
                  RowTitleWidget(
                    title: local.date,
                    value: DateFormat('dd MMMM, yyyy HH:mm',
                            inject<SharedPreferences>().getString(APP_LANGUAGE))
                        .format(DateTime.now()),
                  ),
                  RowTitleWidget(title: local.name, value: arguments.name),
                  const Divider(height: 24, color: AppColors.grey100),
                  RowTitleWidget(
                    title: local.paymentAmount,
                    value: '${arguments.amount} ${local.sum}',
                  ),
                  // RowTitleWidget(title: local.commission, value: ''),
                  // RowTitleWidget(title: local.totalAmount, value: ''),
                  // const Divider(height: 24, color: AppColors.grey100),
                  // const SizedBox(height: 10),
                  // CustomOutlineButton(text: local.downloadPayDoc, onTap: () {})
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 4, 20, 16),
        child: CustomButton(
          text: local.home,
          onTap: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const MainPage(index: 1)),
              (Route<dynamic> route) => false,
            );
          },
        ),
      ),
    );
  }
}

class SuccessPageArgs {
  final String name;
  final String amount;

  SuccessPageArgs({
    required this.name,
    required this.amount,
  });
}
