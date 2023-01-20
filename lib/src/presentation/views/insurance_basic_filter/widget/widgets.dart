import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimLines: 3,
      colorClickableText: AppColors.primaryColor,
      trimMode: TrimMode.Line,
      trimCollapsedText: '\nПодробно',
      trimExpandedText: 'Скрывать',
      style: AppTextStyles.styleW400S14Grey6
          .copyWith(color: AppColors.grey900, height: 1.5),
      moreStyle: AppTextStyles.styleW600S14Primary,
      lessStyle: AppTextStyles.styleW600S14Primary,
    );
  }
}

class SwitchBtn extends StatelessWidget {
  const SwitchBtn({
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
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: borderRadius,
                border: Border.all(
                    color:
                        bgColor != null ? AppColors.green : AppColors.grey400)),
            child: Center(
              child: Text(title,
                  style: AppTextStyles.styleW500S14White.copyWith(
                      color:
                          bgColor == null ? AppColors.black : AppColors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
