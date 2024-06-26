import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../generated/l10n.dart';

class NothingFound extends StatelessWidget {
  const NothingFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(AppLocalizations.of(context).weFoundZero,
              style: AppTextStyles.styleW500S14Grey9),
        ),
        Expanded(
          child: Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(AppIcons.nothingFound)),
        ),
        const SizedBox(height: 60)
      ],
    );
  }
}
