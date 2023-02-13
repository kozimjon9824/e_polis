import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../core/utils/utils.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
    this.image,
    this.fullName,
    this.phone,
    required this.hasUser,
  }) : super(key: key);
  final String? image;
  final String? fullName;
  final String? phone;
  final bool hasUser;

  @override
  Widget build(BuildContext context) {
    if (!hasUser) {
      return Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.login);
          },
          child: Text(AppLocalizations.of(context).registration,
              style: AppTextStyles.styleW700S16Grey9
                  .copyWith(color: AppColors.primaryColor)),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(26),
            child: CachedNetworkImage(
              imageUrl: image ?? '',
              fit: BoxFit.cover,
              height: 50,
              width: 50,
              placeholder: (context, url) => const CupertinoActivityIndicator(),
              errorWidget: (context, url, error) =>
                  SvgPicture.asset(AppIcons.avatar),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(fullName ?? AppLocalizations.of(context).nameSurname,
                    style: AppTextStyles.styleW700S16Grey9),
                const SizedBox(height: 5),
                Text(getMaskedPhone(phone) ?? '+998 90 123 45 67',
                    style: AppTextStyles.styleW600S14Grey9
                        .copyWith(color: AppColors.grey700)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
