import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../../../../generated/l10n.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class Desc extends StatelessWidget {
  const Desc({Key? key, required this.desc}) : super(key: key);
  final String desc;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      desc,
      trimLines: 3,
      colorClickableText: AppColors.primaryColor,
      trimMode: TrimMode.Line,
      trimCollapsedText: AppLocalizations.of(context).inDetail,
      trimExpandedText: AppLocalizations.of(context).hide,
      style: AppTextStyles.styleW400S14Grey6
          .copyWith(color: AppColors.grey900, height: 1.5),
      moreStyle: AppTextStyles.styleW600S14Primary,
      lessStyle: AppTextStyles.styleW600S14Primary,
    );
  }
}
