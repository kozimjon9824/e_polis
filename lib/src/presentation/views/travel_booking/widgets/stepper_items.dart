import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_icons.dart';
import '../../../../core/themes/app_text_styles.dart';

/// widgets
class StepperStep extends StatelessWidget {
  const StepperStep({
    Key? key,
    required this.currentIndex,
    required this.index,
    this.onTap,
  }) : super(key: key);

  final int currentIndex;
  final int index;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    if (currentIndex < index) {
      return InkWell(
        // onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: Container(
            height: 18,
            width: 18,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.grey500, width: 1)),
            child: Text(
              (index + 1).toString(),
              style: AppTextStyles.styleW700S12Grey5,
            ),
          ),
        ),
      );
    }
    return InkWell(
      // onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: SvgPicture.asset(
            index == currentIndex ? AppIcons.active : AppIcons.check,
            height: 18,
            width: 18),
      ),
    );
  }
}

/// widgets
class StepperText extends StatelessWidget {
  const StepperText({
    Key? key,
    this.isActive = false,
    required this.title,
  }) : super(key: key);

  final bool isActive;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: AppTextStyles.styleW500S12Grey9.copyWith(
                color: isActive ? AppColors.grey900 : AppColors.grey500),
          ),
        ),
      ),
    );
  }
}
