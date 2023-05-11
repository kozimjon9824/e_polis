import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../generated/l10n.dart';
import '../../../core/themes/app_icons.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context).about)),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            padding: const EdgeInsets.fromLTRB(16, 32, 16, 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.grey50,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SvgPicture.asset(
                    AppIcons.appLogo,
                    color: AppColors.primaryColor,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  AppLocalizations.of(context).ourMission,
                  style: AppTextStyles.styleW700S18Grey9,
                ),
                const SizedBox(height: 10),
                Text(
                  AppLocalizations.of(context).aboutUs,
                  style: AppTextStyles.styleW500S14Grey7.copyWith(height: 1.6),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
