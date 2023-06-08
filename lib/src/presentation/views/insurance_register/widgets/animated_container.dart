import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import 'custom_expension_tile.dart';

class AnimatedRoundContainer extends StatelessWidget {
  const AnimatedRoundContainer({
    Key? key,
    required this.title,
    required this.children,
    this.padding,
    this.padding2,
    this.clearText,
    this.onClear,
    this.children2,
    this.showChildren2 = false,
  }) : super(key: key);

  final String title;
  final List<Widget> children;
  final List<Widget>? children2;
  final bool showChildren2;
  final EdgeInsets? padding;
  final EdgeInsets? padding2;
  final String? clearText;
  final Function()? onClear;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        border: Border.all(color: AppColors.primary400),
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.zero,
        elevation: 0,
        child: CustomExpansionTile(
          title: Text(title, style: AppTextStyles.styleW700S16White),
          collapsedBackgroundColor: AppColors.primary400,
          backgroundColor: AppColors.primary400,
          iconColor: AppColors.white,
          initiallyExpanded: true,
          maintainState: true,
          collapsedIconColor: AppColors.white,
          children: <Widget>[
            Container(
              padding: padding,
              decoration: const BoxDecoration(color: AppColors.grey50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              ),
            ),
            if (children2 != null && showChildren2)
              Container(
                padding: padding2,
                decoration: const BoxDecoration(color: AppColors.grey50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: children2!,
                ),
              ),
            if (clearText != null)
              Container(
                color: AppColors.white,
                child: ListTile(
                  onTap: onClear,
                  title: Text(
                    clearText ?? '',
                    style: AppTextStyles.styleW700S16White
                        .copyWith(color: AppColors.red),
                  ),
                  trailing: SvgPicture.asset(AppIcons.delete),
                ),
              )
          ],
        ),
      ),
    );
  }
}
