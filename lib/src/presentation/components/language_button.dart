import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/themes/app_colors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton(
      {Key? key,
      required this.icon,
      required this.title,
      required this.isActive,
      this.onTap})
      : super(key: key);
  final String icon;
  final String title;
  final bool isActive;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isActive ? AppColors.white : AppColors.grey50,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Ink(
          padding: EdgeInsets.symmetric(
              horizontal: 16, vertical: isActive ? 16 : 18),
          decoration: BoxDecoration(
              border: isActive
                  ? Border.all(color: AppColors.primaryColor, width: 2)
                  : null,
              borderRadius: BorderRadius.circular(12),
              color: AppColors.grey50),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SvgPicture.asset(icon),
            const SizedBox(width: 10),
            Text(title, style: AppTextStyles.styleW500S16Black),
            const Spacer(),
            Visibility(
                visible: isActive, child: SvgPicture.asset(AppIcons.check)),
          ]),
        ),
      ),
    );
  }
}
