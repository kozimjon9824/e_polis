import 'package:e_polis/generated/l10n.dart';
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
        return buildScaffold(state.language, context);
      },
    );
  }

  Widget buildScaffold(String? language, BuildContext context) {
    final cubit = context.read<LanguageCubit>();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Text(AppLocalizations.of(context).chooseLanguage,
                style: AppTextStyles.styleW700S24Grey9),
            const SizedBox(height: 12),
            Text(AppLocalizations.of(context).languagePageMainText,
                style: AppTextStyles.styleW500S14Grey7),
            const SizedBox(height: 32),
            LanguageButton(
              icon: AppIcons.uz,
              title: AppLocalizations.of(context).uzbekLang,
              isActive: language == UZ,
              onTap: () {
                cubit.saveAppLang(UZ);
              },
            ),
            const SizedBox(height: 16),
            LanguageButton(
              icon: AppIcons.ru,
              title: AppLocalizations.of(context).russianLang,
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
                text: AppLocalizations.of(context).next,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.onBoarding);
                },
              ),
            ),
    );
  }
}
