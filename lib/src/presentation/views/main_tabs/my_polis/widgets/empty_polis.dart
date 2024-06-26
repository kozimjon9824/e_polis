import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyPolis extends StatelessWidget {
  const EmptyPolis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppIcons.docs),
        const SizedBox(height: 28),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Text(AppLocalizations.of(context).emptyPolis,
              textAlign: TextAlign.center,
              style: AppTextStyles.styleW500S14Grey7),
        )
      ],
    );
  }
}
