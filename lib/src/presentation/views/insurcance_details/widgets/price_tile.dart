import 'package:e_polis/generated/l10n.dart';
import 'package:flutter/material.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class PriceTile extends StatelessWidget {
  const PriceTile({
    Key? key,
    required this.title,
    required this.price,
    this.textStyle,
  }) : super(key: key);
  final String title;
  final String price;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTextStyles.styleW400S12Grey7),
          const SizedBox(height: 4),
          Text(
            price,
            style: textStyle ??
                AppTextStyles.styleW600S16White
                    .copyWith(color: AppColors.grey900),
          )
        ]);
  }
}
