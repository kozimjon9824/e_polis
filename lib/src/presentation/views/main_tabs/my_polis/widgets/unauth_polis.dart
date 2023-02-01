import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:e_polis/src/presentation/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UnAuthPolis extends StatelessWidget {
  const UnAuthPolis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppIcons.docs),
        const SizedBox(height: 28),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(AppLocalizations.of(context).anAuthText,
                textAlign: TextAlign.center,
                style: AppTextStyles.styleW500S14Grey7)),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CustomButton(
              text: AppLocalizations.of(context).registration,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.login);
              }),
        )
      ],
    );
  }
}
