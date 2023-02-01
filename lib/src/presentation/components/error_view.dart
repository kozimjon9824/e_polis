import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

import '../../core/themes/app_text_styles.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key, required this.onTap, this.errorText})
      : super(key: key);
  final Function() onTap;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 100),
          if (errorText != null) const SizedBox(height: 12),
          if (errorText != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(errorText ?? '',
                    style: AppTextStyles.styleW600S16White
                        .copyWith(color: AppColors.red)),
              ],
            ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: onTap,
                  child: Text(AppLocalizations.of(context).retry)),
            ],
          )
        ],
      ),
    );
  }
}
