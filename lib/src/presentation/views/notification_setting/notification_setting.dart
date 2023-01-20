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
      appBar: AppBar(title: const Text('Всплывающие напоминания')),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
        child: Column(
          children: [
            ListTile(
              title: const Text('Всплывающие напоминания',
                  style: AppTextStyles.styleW700S14Grey9),
              subtitle: const Text(
                  'Receive recommendations based on your activities',
                  style: AppTextStyles.styleW500S12Grey5),
              trailing: CupertinoSwitch(
                  value: true,
                  activeColor: AppColors.primaryColor,
                  onChanged: (value) {}),
            ),
            ListTile(
              title: const Text('Получайте оповещения на свою телефону',
                  style: AppTextStyles.styleW700S14Grey9),
              subtitle: const Text('Оповещение  и советы ',
                  style: AppTextStyles.styleW500S12Grey5),
              trailing: CupertinoSwitch(
                  value: false,
                  activeColor: AppColors.primaryColor,
                  onChanged: (value) {}),
            ),
            ListTile(
              title: const Text('Новостная рассылка',
                  style: AppTextStyles.styleW700S14Grey9),
              subtitle: const Text('Новости и рекламная информация',
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
          text: 'Сохранить изменения',
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
