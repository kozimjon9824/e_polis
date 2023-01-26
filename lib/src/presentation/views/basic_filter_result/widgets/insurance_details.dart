import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_button.dart';

class InsuranceDetail extends StatelessWidget {
  const InsuranceDetail(
      {Key? key,
      required this.onDetailTap,
      this.image,
      this.polisPrice,
      this.insurancePrice,
      this.onBuy})
      : super(key: key);
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
          borderRadius: BorderRadius.circular(20), color: AppColors.grey50),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: CachedNetworkImage(
                          imageUrl: image ?? '', height: 28))),
              const SizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text('Цена полиса',
                      style: AppTextStyles.styleW400S14Grey6),
                  const SizedBox(height: 4),
                  Text('$polisPrice сум',
                      style: AppTextStyles.styleW700S18Green)
                ],
              )
            ],
          ),
          const Divider(height: 28, color: AppColors.grey300),
          Row(
            children: [
              const Expanded(
                  child: Text('Страховая сумма',
                      style: AppTextStyles.styleW400S14Grey6)),
              Text('$insurancePrice сум',
                  style: AppTextStyles.styleW600S14Grey9),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                  child: CustomOutlineButton(
                      text: 'Подробно', padding: 10, onTap: onDetailTap)),
              const SizedBox(width: 16),
              Expanded(
                child: CustomButton(
                  text: 'КУПИТЬ',
                  padding: 12,
                  onTap: onBuy,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
