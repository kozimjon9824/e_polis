import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/themes/app_icons.dart';
import '../../../../core/themes/app_text_styles.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
    this.image,
    this.file,
    required this.onTap,
  }) : super(key: key);
  final String? image;
  final File? file;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        file == null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(56),
                child: CachedNetworkImage(
                  imageUrl: image ?? '',
                  fit: BoxFit.cover,
                  height: 116,
                  width: 116,
                  placeholder: (context, url) => const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) =>
                      SvgPicture.asset(AppIcons.bigAvatar),
                ),
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(56),
                child: Image.file(file!,
                    height: 116, width: 116, fit: BoxFit.cover),
              ),
        const SizedBox(height: 8),
        TextButton(
            onPressed: onTap,
            child: const Text('Добавить изображение',
                textAlign: TextAlign.center,
                style: AppTextStyles.styleW600S16Grey9)),
      ],
    );
  }
}
