import 'package:flutter/material.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../components/custom_button.dart';

class DialogBody extends StatelessWidget {
  const DialogBody({
    Key? key,
    required this.onSubmit,
  }) : super(key: key);
  final Function() onSubmit;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child:
                      const Icon(Icons.close, color: AppColors.primaryColor)),
            ),
            const Text('Купить', style: AppTextStyles.styleW700S18Grey9),
            const SizedBox(height: 12),
            const Text(
                'Зарегистрируйтесь сначала, чтобы купить страховой полис',
                style: AppTextStyles.styleW500S14Grey7),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                    child: CustomOutlineButton(
                        text: 'Отмена',
                        padding: 10,
                        onTap: () {
                          Navigator.pop(context);
                        })),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                      text: 'Регистрация', padding: 12, onTap: onSubmit),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
