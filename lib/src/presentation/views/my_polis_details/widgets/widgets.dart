import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/themes/app_text_styles.dart';

class RowTitleWidget extends StatelessWidget {
  const RowTitleWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Text(title, style: AppTextStyles.styleW500S14Grey7),
          const Spacer(),
          Text(value, style: AppTextStyles.styleW700S14Grey9),
        ],
      ),
    );
  }
}

class TitleImageWidget extends StatelessWidget {
  const TitleImageWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Text(title, style: AppTextStyles.styleW500S14Grey7),
          const Spacer(),
          CachedNetworkImage(
            fit: BoxFit.contain,
            imageUrl: value,
            height: 30,
            width: 130,
            errorWidget: (_, __, ___) => SvgPicture.asset(
              AppIcons.appLogo,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
