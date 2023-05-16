import 'dart:io';
import 'package:flutter/cupertino.dart';
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
        onTap: isLoading ? null : onTap,
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
                  ? (Platform.isAndroid
                      ? const CircularProgressIndicator(color: AppColors.white)
                      : const CupertinoActivityIndicator(radius: 16))
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
    this.primaryColor,
    this.isLoading = false,
  }) : super(key: key);

  final String text;
  final Function() onTap;
  final Color? bgColor;
  final Color? primaryColor;
  final double? padding;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Ink(
          padding: EdgeInsets.symmetric(
              vertical:
                  isLoading ? (Platform.isAndroid ? 4 : 8) : (padding ?? 13)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color: primaryColor ?? AppColors.primaryColor, width: 2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isLoading
                  ? (Platform.isAndroid
                      ? const CircularProgressIndicator(
                          color: AppColors.primaryColor)
                      : const CupertinoActivityIndicator(
                          color: AppColors.primaryColor, radius: 16))
                  : Text(
                      text,
                      style: AppTextStyles.styleW700S16White.copyWith(
                          color: primaryColor ?? AppColors.primaryColor),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
