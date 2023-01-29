import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/notification/notification_model.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({Key? key, required this.notification})
      : super(key: key);

  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColors.grey50, borderRadius: BorderRadius.circular(12)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 6),
        Row(children: [
          Text(notification.day ?? '', style: AppTextStyles.styleW500S12Grey5),
          const Spacer(),
          Text(notification.date ?? '', style: AppTextStyles.styleW500S12Grey5),
        ]),
        if (notification.photo != null) const SizedBox(height: 8),
        if (notification.photo != null)
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: notification.photo ?? '',
              width: double.infinity,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
        const SizedBox(height: 10),
        Text(notification.title ?? '', style: AppTextStyles.styleW700S16Grey9),
        const SizedBox(height: 8),
        Text(notification.text ?? '', style: AppTextStyles.styleW500S14Grey7),
        const SizedBox(height: 4),
        InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Купить страховку',
                style: AppTextStyles.styleW700S14Grey9
                    .copyWith(color: AppColors.primaryColor),
              ),
            ))
      ]),
    );
  }
}
