import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:e_polis/src/presentation/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../generated/l10n.dart';
import '../../../core/routes/app_routes.dart';

class VerificationSuccessPage extends StatelessWidget {
  const VerificationSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppIcons.successDoc),
            const SizedBox(height: 24),
            Text(AppLocalizations.of(context).accountVerified,
                textAlign: TextAlign.center,
                style: AppTextStyles.styleW700S24Grey9),
            const SizedBox(height: 12),
            Text(AppLocalizations.of(context).accountVerifiedDescription,
                textAlign: TextAlign.center,
                style: AppTextStyles.styleW500S14Grey6),
            const SizedBox(height: 40),
            CustomButton(
                text: AppLocalizations.of(context).confirm,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.licenseAgreement);
                }),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
