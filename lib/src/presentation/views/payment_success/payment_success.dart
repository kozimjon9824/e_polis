import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../generated/l10n.dart';
import '../../components/custom_button.dart';
import 'widgets.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
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
                  Text(local.success, style: AppTextStyles.styleW700S24Green),
                  const SizedBox(height: 8),
                  Text(local.SuccessDes,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.styleW500S14Grey7),
                  const SizedBox(height: 10),
                  const Divider(height: 24, color: AppColors.grey100),
                  RowTitleWidget(title: local.status, value: local.payed),
                  RowTitleWidget(title: local.paymentType, value: local.byCard),
                  const Divider(height: 24, color: AppColors.grey100),
                  RowTitleWidget(title: local.date, value: ''),
                  RowTitleWidget(title: local.name, value: ''),
                  const Divider(height: 24, color: AppColors.grey100),
                  RowTitleWidget(title: local.paymentAmount, value: ''),
                  RowTitleWidget(title: local.commission, value: ''),
                  RowTitleWidget(title: local.totalAmount, value: ''),
                  const Divider(height: 24, color: AppColors.grey100),
                  const SizedBox(height: 10),
                  CustomOutlineButton(text: local.downloadPayDoc, onTap: () {})
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
            Navigator.popUntil(context, (route) => false);
          },
        ),
      ),
    );
  }
}
