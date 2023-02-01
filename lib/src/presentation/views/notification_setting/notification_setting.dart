import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/themes/app_colors.dart';
import '../../components/custom_button.dart';

class NotificationSettingPage extends StatelessWidget {
  const NotificationSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text(AppLocalizations.of(context).notificationSetting)),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
        child: Column(
          children: [
            ListTile(
              title: Text(AppLocalizations.of(context).notificationSetting,
                  style: AppTextStyles.styleW700S14Grey9),
              subtitle: Text(AppLocalizations.of(context).notificationOnOffText,
                  style: AppTextStyles.styleW500S12Grey5),
              trailing: CupertinoSwitch(
                  value: true,
                  activeColor: AppColors.primaryColor,
                  onChanged: (value) {}),
            ),
            ListTile(
              title: Text(AppLocalizations.of(context).notificationOnPhone,
                  style: AppTextStyles.styleW700S14Grey9),
              subtitle: Text(AppLocalizations.of(context).alertAndTips,
                  style: AppTextStyles.styleW500S12Grey5),
              trailing: CupertinoSwitch(
                  value: false,
                  activeColor: AppColors.primaryColor,
                  onChanged: (value) {}),
            ),
            ListTile(
              title: Text(AppLocalizations.of(context).newsLatter,
                  style: AppTextStyles.styleW700S14Grey9),
              subtitle: Text(
                  AppLocalizations.of(context).newAndPromotionalInformation,
                  style: AppTextStyles.styleW500S12Grey5),
              trailing: CupertinoSwitch(
                  value: false,
                  activeColor: AppColors.primaryColor,
                  onChanged: (value) {}),
            )
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomButton(
          text: AppLocalizations.of(context).saveChanges,
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
