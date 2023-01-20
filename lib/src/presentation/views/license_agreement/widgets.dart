import 'package:flutter/material.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';

class AgreeCheckWidget extends StatelessWidget {
  const AgreeCheckWidget({
    Key? key,
    required this.value,
    required this.onChange,
  }) : super(key: key);
  final bool value;
  final Function(bool? value) onChange;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: value,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          activeColor: AppColors.primaryColor,
          onChanged: onChange,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          side: const BorderSide(width: 2, color: AppColors.grey300),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 6.0, top: 4),
            child: Text(
                'Я полностью согласен с условиями Пользователкого соглашения',
                style: AppTextStyles.styleW500S14Grey9),
          ),
        ),
      ],
    );
  }
}
