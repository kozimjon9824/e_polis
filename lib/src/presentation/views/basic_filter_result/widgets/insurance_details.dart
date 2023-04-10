import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_button.dart';

class InsuranceDetail extends StatelessWidget {
  const InsuranceDetail({
    Key? key,
    required this.onDetailTap,
    this.image,
    this.polisPrice,
    this.insurancePrice,
    this.onBuy,
  }) : super(key: key);

  final Function() onDetailTap;
  final String? image;
  final String? polisPrice;
  final String? insurancePrice;
  final Function()? onBuy;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.grey50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: CachedNetworkImage(
                      imageUrl: image ?? '',
                      height: 30,
                      width: 130,
                      fit: BoxFit.contain,
                      errorWidget: (_, __, ___) => const SizedBox.shrink(),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    AppLocalizations.of(context).polisPrice,
                    style: AppTextStyles.styleW400S14Grey6,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '$polisPrice ${AppLocalizations.of(context).sum}',
                    style: AppTextStyles.styleW700S18Green,
                  )
                ],
              )
            ],
          ),
          const Divider(height: 28, color: AppColors.grey300),
          Row(
            children: [
              Expanded(
                  child: Text(AppLocalizations.of(context).insurancePrice,
                      style: AppTextStyles.styleW400S14Grey6)),
              Text('$insurancePrice ${AppLocalizations.of(context).sum}',
                  style: AppTextStyles.styleW600S14Grey9),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                  child: CustomOutlineButton(
                      text: AppLocalizations.of(context).inDetail,
                      padding: 10,
                      onTap: onDetailTap)),
              const SizedBox(width: 16),
              Expanded(
                child: CustomButton(
                    text: AppLocalizations.of(context).buy,
                    padding: 12,
                    onTap: onBuy),
              ),
            ],
          )
        ],
      ),
    );
  }
}
