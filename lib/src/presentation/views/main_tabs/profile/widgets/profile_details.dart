import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/presentation/cubits/main_screen_data/main_screen_data_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/themes/app_text_styles.dart';

class ProfileDetailsWidget extends StatelessWidget {
  const ProfileDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenDataCubit, MainScreenDataState>(
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => const Profile(hasUser: false),
            loaded: (data) => Profile(
                  hasUser: data?.user != null,
                  fullName: data?.user?.fullName,
                  image: data?.user?.photo,
                  phone: data?.user?.phone,
                ));
      },
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    this.fullName,
    this.image,
    this.phone,
    required this.hasUser,
  }) : super(key: key);
  final String? fullName;
  final String? image;
  final String? phone;
  final bool hasUser;

  @override
  Widget build(BuildContext context) {
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
          const SizedBox(width: 16),
          (!hasUser)
              ? TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.login);
                  },
                  child: Text(AppLocalizations.of(context).registration,
                      style: AppTextStyles.styleW700S16Grey9
                          .copyWith(color: AppColors.primaryColor)),
                )
              : Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(fullName ?? AppLocalizations.of(context).nameSurname,
                          style: AppTextStyles.styleW700S16Grey9),
                      const SizedBox(height: 6),
                      Text(getMaskedPhone(phone) ?? '+998 90 123 45 67',
                          maxLines: 1, style: AppTextStyles.styleW500S16Grey4),
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
