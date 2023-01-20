import 'package:flutter/material.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../components/custom_button.dart';

class ExitDialogBody extends StatelessWidget {
  const ExitDialogBody({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Выход', style: AppTextStyles.styleW700S18Grey9),
            const SizedBox(height: 12),
            const Text('Вы хотите выйти из приложения',
                style: AppTextStyles.styleW500S14Grey7),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                    child: CustomOutlineButton(
                        text: 'Нет',
                        padding: 10,
                        onTap: () {
                          Navigator.pop(context);
                        })),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButton(text: 'Да', padding: 12, onTap: onTap),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
