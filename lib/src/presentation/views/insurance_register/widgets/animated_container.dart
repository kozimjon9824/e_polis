import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class AnimatedRoundContainer extends StatelessWidget {
  const AnimatedRoundContainer(
      {Key? key,
      required this.title,
      required this.children,
      this.padding,
      this.padding2,
      this.clearText,
      this.onClear,
      this.children2,
      this.showChildren2 = false})
      : super(key: key);

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
          border: Border.all(color: AppColors.primaryColor)),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.zero,
        elevation: 0,
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: AppColors.grey100),
          child: ExpansionTile(
            title: Text(title, style: AppTextStyles.styleW700S16White),
            collapsedBackgroundColor: AppColors.primaryColor,
            backgroundColor: AppColors.primaryColor,
            iconColor: AppColors.white,
            collapsedIconColor: AppColors.white,
            children: <Widget>[
              Container(
                  padding: padding,
                  decoration: const BoxDecoration(color: AppColors.grey50),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: children)),
              if (children2 != null && showChildren2)
                Container(
                    padding: padding2,
                    decoration: const BoxDecoration(color: AppColors.grey50),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: children2!)),
              if (clearText != null)
                Container(
                  color: AppColors.white,
                  child: ListTile(
                    onTap: onClear,
                    title: Text(clearText ?? '',
                        style: AppTextStyles.styleW700S16White
                            .copyWith(color: AppColors.red)),
                    trailing: SvgPicture.asset(AppIcons.delete),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
