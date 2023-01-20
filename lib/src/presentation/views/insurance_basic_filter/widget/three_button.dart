import 'package:flutter/material.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import 'widgets.dart';

class ThreeButton extends StatefulWidget {
  const ThreeButton({Key? key}) : super(key: key);

  @override
  State<ThreeButton> createState() => _ThreeButtonState();
}

class _ThreeButtonState extends State<ThreeButton> {
  ButtonStatus buttonStatus = ButtonStatus.initial;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Срок действия страхового полиса',
            style: AppTextStyles.styleW600S14Grey9),
        const SizedBox(height: 7),
        Row(
          children: [
            SwitchBtn(
                title: '6 месяцев',
                onTap: () {
                  buttonStatus = ButtonStatus.left;
                  setState(() {});
                },
                bgColor:
                    buttonStatus == ButtonStatus.left ? AppColors.green : null,
                borderRadius:
                    const BorderRadius.horizontal(left: Radius.circular(8))),
            SwitchBtn(
                title: '1 год',
                onTap: () {
                  buttonStatus = ButtonStatus.middle;
                  setState(() {});
                },
                bgColor: buttonStatus == ButtonStatus.middle
                    ? AppColors.green
                    : null),
            SwitchBtn(
                title: '20 дней',
                onTap: () {
                  buttonStatus = ButtonStatus.right;
                  setState(() {});
                },
                bgColor:
                    buttonStatus == ButtonStatus.right ? AppColors.green : null,
                borderRadius:
                    const BorderRadius.horizontal(right: Radius.circular(8))),
          ],
        ),
      ],
    );
  }
}

enum ButtonStatus { left, middle, right, initial }
