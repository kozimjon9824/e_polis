import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/themes/app_text_styles.dart';

class IconBtn extends StatelessWidget {
  const IconBtn({
    Key? key,
    this.bgColor,
    required this.onTap,
    this.borderRadius,
  }) : super(key: key);
  final Color? bgColor;
  final Function() onTap;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        borderRadius: borderRadius,
        color: bgColor,
        child: InkWell(
          onTap: onTap,
          borderRadius:
              const BorderRadius.horizontal(right: Radius.circular(8)),
          child: Container(
            height: 44,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.horizontal(right: Radius.circular(8)),
                border: Border.all(
                    color:
                        bgColor != null ? AppColors.green : AppColors.grey400)),
            child: Center(
              child: SvgPicture.asset(AppIcons.add),
            ),
          ),
        ),
      ),
    );
  }
}

class TextBtn extends StatelessWidget {
  const TextBtn({
    Key? key,
    this.bgColor,
    required this.title,
    required this.onTap,
    this.borderRadius,
  }) : super(key: key);
  final Color? bgColor;
  final String title;
  final Function() onTap;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        borderRadius: borderRadius,
        color: bgColor,
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius,
          child: Container(
            height: 44,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: borderRadius,
                border: Border.all(
                    color:
                        bgColor != null ? AppColors.green : AppColors.grey400)),
            child: Center(
              child: Text(title,
                  style: AppTextStyles.styleW600S16White.copyWith(
                      color:
                          bgColor == null ? AppColors.black : AppColors.white)),
            ),
          ),
        ),
      ),
    );
  }
}

class IconBtnWithWidth extends StatelessWidget {
  const IconBtnWithWidth({
    Key? key,
    this.bgColor,
    required this.onTap,
    this.borderRadius,
  }) : super(key: key);
  final Color? bgColor;
  final Function() onTap;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: borderRadius,
      color: bgColor,
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.horizontal(right: Radius.circular(8)),
        child: Container(
          height: 44,
          width: 80,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.horizontal(right: Radius.circular(8)),
              border: Border.all(
                  color:
                      bgColor != null ? AppColors.green : AppColors.grey400)),
          child: Center(
            child: SvgPicture.asset(AppIcons.add),
          ),
        ),
      ),
    );
  }
}

class TextBtnWithWidth extends StatelessWidget {
  const TextBtnWithWidth({
    Key? key,
    this.bgColor,
    required this.title,
    required this.onTap,
    this.borderRadius,
  }) : super(key: key);
  final Color? bgColor;
  final String title;
  final Function() onTap;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: borderRadius,
      color: bgColor,
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        child: Container(
          height: 44,
          width: 80,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: borderRadius,
              border: Border.all(
                  color:
                      bgColor != null ? AppColors.green : AppColors.grey400)),
          child: Center(
            child: Text(title,
                style: AppTextStyles.styleW600S16White.copyWith(
                    color:
                        bgColor == null ? AppColors.black : AppColors.white)),
          ),
        ),
      ),
    );
  }
}
