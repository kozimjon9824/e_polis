import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/themes/app_text_styles.dart';

class ProfileItemWidget extends StatelessWidget {
  const ProfileItemWidget(
      {Key? key,
      required this.icon,
      required this.title,
      this.onTap,
      this.subTitle})
      : super(key: key);

  final String icon;
  final String title;
  final String? subTitle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
        child: Row(
          children: [
            Ink(child: SvgPicture.asset(icon)),
            const SizedBox(width: 16),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyles.styleW600S16Grey9),
                if (subTitle != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(subTitle ?? '',
                        style: AppTextStyles.styleW500S12Grey4),
                  ),
              ],
            )),
            SvgPicture.asset(AppIcons.rightArrow)
          ],
        ),
      ),
    );
  }
}
