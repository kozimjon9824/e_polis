import 'package:flutter/material.dart';

import '../../../core/themes/app_text_styles.dart';

class RowTitleWidget extends StatelessWidget {
  const RowTitleWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(title, style: AppTextStyles.styleW500S14Grey7),
          const SizedBox(width: 16),
          Expanded(
              child: Align(
            alignment: Alignment.centerRight,
            child: Text(value,
                textAlign: TextAlign.end,
                style: AppTextStyles.styleW700S14Grey9),
          )),
        ],
      ),
    );
  }
}
