import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/constants/constants.dart';
import '../../components/custom_button.dart';
import '../../components/language_button.dart';
import '../../cubits/language/language_cubit.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => buildScaffold('', context),
            loaded: (language) => buildScaffold(language, context));
      },
    );
  }

  Widget buildScaffold(String language, BuildContext context) {
    final cubit = context.read<LanguageCubit>();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text('Выберите язык', style: AppTextStyles.styleW700S24Grey9),
            const SizedBox(height: 12),
            const Text('Добро пожаловать в epolis Выберите язык приложения',
                style: AppTextStyles.styleW500S14Grey7),
            const SizedBox(height: 32),
            LanguageButton(
              icon: AppIcons.uz,
              title: "O’zbek tili",
              isActive: language == UZ,
              onTap: () {
                cubit.saveAppLang(UZ);
              },
            ),
            const SizedBox(height: 16),
            LanguageButton(
              icon: AppIcons.ru,
              title: "Русский язык",
              isActive: language == RU,
              onTap: () {
                cubit.saveAppLang(RU);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: language == ''
          ? null
          : SafeArea(
              minimum: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: CustomButton(
                text: 'Продолжить',
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.onBoarding);
                },
              ),
            ),
    );
  }
}
