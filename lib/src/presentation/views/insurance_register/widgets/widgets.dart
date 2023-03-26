import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class TitleSubtitle extends StatelessWidget {
  const TitleSubtitle({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(title, style: AppTextStyles.styleW500S14Grey4)),
            ],
          ),
          const SizedBox(height: 6),
          Text(subtitle, style: AppTextStyles.styleW600S14Grey9),
        ],
      ),
    );
  }
}
