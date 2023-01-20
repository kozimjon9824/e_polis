import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:e_polis/src/presentation/cubits/language/language_cubit.dart';
import 'package:e_polis/src/presentation/cubits/language_setting/language_setting_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injector.dart';
import '../../../core/constants/constants.dart';
import '../../components/custom_button.dart';
import '../../components/language_button.dart';

class ChangeLanguagePage extends StatelessWidget {
  const ChangeLanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<LanguageSettingCubit>()..loadLang(),
      child: BlocConsumer<LanguageSettingCubit, LanguageSettingState>(
        listener: (context, state) {
          state.whenOrNull(success: () {
            context.read<LanguageCubit>().loadAppLang();
            Navigator.pushNamedAndRemoveUntil(
                context, AppRoutes.splash, (route) => false);
          });
        },
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => buildScaffold('', context),
              load: (language) => buildScaffold(language, context));
        },
      ),
    );
  }

  Scaffold buildScaffold(String language, BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Язык приложения')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LanguageButton(
              icon: AppIcons.uz,
              title: "O’zbek tili",
              isActive: language == UZ,
              onTap: () {
                context.read<LanguageSettingCubit>().selectAppLang(UZ);
              },
            ),
            const SizedBox(height: 16),
            LanguageButton(
              icon: AppIcons.ru,
              title: "Русский язык",
              isActive: language == RU,
              onTap: () {
                context.read<LanguageSettingCubit>().selectAppLang(RU);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomButton(
          text: 'Сохранить изменения',
          onTap: () {
            context.read<LanguageCubit>().state.whenOrNull(loaded: (lang) {
              if (lang != language) {
                context.read<LanguageSettingCubit>().saveAppLang(language);
              }
            });
          },
        ),
      ),
    );
  }
}
