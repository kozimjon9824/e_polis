import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/constants/constants.dart';
import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/presentation/cubits/auth/auth_cubit.dart';
import 'package:e_polis/src/presentation/cubits/language/language_cubit.dart';
import 'package:e_polis/src/presentation/cubits/main_screen_data/main_screen_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_icons.dart';
import '../../../components/custom_button.dart';
import 'widgets/dialog_body.dart';
import 'widgets/profile_details.dart';
import 'widgets/profile_item_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(AppLocalizations.of(context).profile)),
      body: ListView(
        children: [
          const SizedBox(height: 16),
          const Divider(height: 0, color: AppColors.grey50, thickness: 1.2),
          const ProfileDetailsWidget(),
          const Divider(height: 0, color: AppColors.grey50, thickness: 1.2),
          const SizedBox(height: 24),
          ProfileItemWidget(
            title: AppLocalizations.of(context).profileInfo,
            icon: AppIcons.profileInfo,
            onTap: () {
              if (context.read<AuthCubit>().state is AuthenticatedState) {
                Navigator.pushNamed(context, AppRoutes.profileInfo);
              }
            },
          ),
          BlocBuilder<LanguageCubit, LanguageState>(
            builder: (context, state) {
              String langCode = state.language ?? '';
              String displayLang = (langCode == UZ)
                  ? AppLocalizations.of(context).uzbekLang
                  : (langCode == RU)
                      ? AppLocalizations.of(context).russianLang
                      : '';
              return ProfileItemWidget(
                title: AppLocalizations.of(context).appLang,
                subTitle: displayLang,
                icon: AppIcons.changeLang,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.changeLanguage);
                },
              );
            },
          ),
          ProfileItemWidget(
            title: AppLocalizations.of(context).notifications,
            icon: AppIcons.notification,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.notificationSetting);
            },
          ),
          ProfileItemWidget(
            title: AppLocalizations.of(context).about,
            icon: AppIcons.about,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.about);
            },
          ),
          ProfileItemWidget(
            title: AppLocalizations.of(context).helpCenter,
            icon: AppIcons.questionMark,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.helperCenter);
            },
          )
        ],
      ),
      bottomNavigationBar:
          (context.read<AuthCubit>().state is AuthenticatedState)
              ? logoutBtn(context)
              : null,
    );
  }

  Widget logoutBtn(BuildContext context) => SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
        child: CustomOutlineButton(
          text: AppLocalizations.of(context).exit,
          onTap: () {
            showDialog(
              context: context,
              builder: (_) => BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is UnAuthenticatedState) {
                    context.read<MainScreenDataCubit>().loadData();
                    Navigator.pushNamedAndRemoveUntil(
                        context, AppRoutes.main, (route) => false);
                  }
                },
                builder: (context, state) {
                  return ExitDialogBody(onTap: () {
                    context.read<AuthCubit>().logout();
                  });
                },
              ),
            );
          },
        ),
      );
}
