import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.onTap,
    this.radius,
    this.bgColor,
    this.textColor,
    this.isLoading = false,
    this.padding,
  }) : super(key: key);

  final String text;
  final Function()? onTap;
  final double? radius;
  final Color? bgColor;
  final Color? textColor;
  final bool isLoading;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(radius ?? 12),
      color: bgColor ?? AppColors.primaryColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(radius ?? 12),
        onTap: onTap,
        child: Ink(
          padding:
              EdgeInsets.symmetric(vertical: isLoading ? 8 : (padding ?? 16)),
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(radius ?? 12)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isLoading
                  ? const CircularProgressIndicator(color: AppColors.white)
                  : Text(text, style: AppTextStyles.styleW700S16White),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.bgColor,
    this.padding,
  }) : super(key: key);
  final String text;
  final Function() onTap;
  final Color? bgColor;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Ink(
          padding: EdgeInsets.symmetric(vertical: padding ?? 14),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.primaryColor, width: 2)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: AppTextStyles.styleW700S16White
                    .copyWith(color: AppColors.primaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
