import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/presentation/cubits/auth/auth_cubit.dart';
import 'package:e_polis/src/presentation/cubits/main_screen_data/main_screen_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../injector.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_icons.dart';
import '../../../components/custom_button.dart';
import '../../../cubits/my_product_tab_controller/product_tab_manager_cubit.dart';
import 'widgets/dialog_body.dart';
import 'widgets/profile_details.dart';
import 'widgets/profile_item_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false, title: const Text('Профиль')),
      body: ListView(
        children: [
          const SizedBox(height: 16),
          const Divider(height: 0, color: AppColors.grey50, thickness: 1.2),
          const ProfileDetailsWidget(),
          const Divider(height: 0, color: AppColors.grey50, thickness: 1.2),
          const SizedBox(height: 24),
          ProfileItemWidget(
            title: 'Информация профиля',
            icon: AppIcons.profileInfo,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.profileInfo);
            },
          ),
          ProfileItemWidget(
            title: 'Язык приложения',
            subTitle: 'Русский язык',
            icon: AppIcons.changeLang,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.changeLanguage);
            },
          ),
          ProfileItemWidget(
            title: 'Напоминания',
            icon: AppIcons.notification,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.notificationSetting);
            },
          ),
          ProfileItemWidget(
            title: 'О Нас',
            icon: AppIcons.about,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.about);
            },
          ),
          ProfileItemWidget(
            title: 'Центр помощи',
            icon: AppIcons.questionMark,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.helperCenter);
            },
          )
        ],
      ),
      bottomNavigationBar: logoutBtn(context),
    );
  }

  Widget logoutBtn(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
      child: CustomOutlineButton(
        text: 'Выйти',
        onTap: () {
          showDialog(
              context: context,
              builder: (_) => ExitDialogBody(onTap: () {
                    context.read<AuthCubit>().logout();
                    context.read<MainScreenDataCubit>().loadData();
                    Navigator.pushNamedAndRemoveUntil(
                        context, AppRoutes.main, (route) => false);
                  }));
        },
      ),
    );
  }
}
