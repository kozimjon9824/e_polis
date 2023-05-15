import 'package:flutter/material.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../data/models/main/main.dart';

class LabelContainer extends StatelessWidget {
  const LabelContainer({
    super.key,
    required this.label,
  });

  final Label label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: HexColor(label.color ?? '#ffffff'),
      ),
      child: Text(
        label.title ?? '',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.styleW500S12Grey4.copyWith(color: AppColors.white),
      ),
    );
  }
}
