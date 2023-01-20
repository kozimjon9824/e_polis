import 'package:flutter/material.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_styles.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
      {Key? key,
      required this.onTap,
      required this.icon,
      this.size = 52,
      this.isChangeShape = false})
      : super(key: key);
  final Function() onTap;
  final IconData icon;
  final double size;
  final bool isChangeShape;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      color: AppColors.primaryColor,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Ink(
          height: size,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: isChangeShape
              ? const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Center(
                    child: Text('Начать пользоваться',
                        style: AppTextStyles.styleW600S16White),
                  ),
                )
              : Icon(icon, size: 21, color: AppColors.white),
        ),
      ),
    );
  }
}
