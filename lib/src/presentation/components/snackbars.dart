import 'package:another_flushbar/flushbar.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void showErrorMessage(BuildContext context, String message) {
  Flushbar(
    messageText: Row(
      children: [
        SvgPicture.asset(AppIcons.error),
        const SizedBox(width: 12),
        Expanded(child: Text(message, style: AppTextStyles.styleW500S14Grey9)),
      ],
    ),
    duration: const Duration(seconds: 3),
    borderRadius: BorderRadius.circular(10),
    margin: const EdgeInsets.all(12),
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: Colors.white,
    barBlur: 5,
    boxShadows: const [
      BoxShadow(
          color: Color.fromRGBO(145, 158, 171, 0.15),
          offset: Offset(-2, -3),
          blurRadius: 5.0),
      BoxShadow(
          color: Color.fromRGBO(145, 158, 171, 0.15),
          offset: Offset(2, 3),
          blurRadius: 5.0)
    ],
  ).show(context);
}

void showSuccessMessage(BuildContext context, String message) {
  Flushbar(
    messageText: Row(
      children: [
        SvgPicture.asset(AppIcons.success),
        const SizedBox(width: 12),
        Expanded(child: Text(message, style: AppTextStyles.styleW500S14Grey9)),
      ],
    ),
    duration: const Duration(seconds: 3),
    borderRadius: BorderRadius.circular(10),
    margin: const EdgeInsets.all(12),
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: Colors.white,
    barBlur: 5,
    boxShadows: const [
      BoxShadow(
          color: Color.fromRGBO(145, 158, 171, 0.15),
          offset: Offset(-2, -3),
          blurRadius: 5.0),
      BoxShadow(
          color: Color.fromRGBO(145, 158, 171, 0.15),
          offset: Offset(2, 3),
          blurRadius: 5.0)
    ],
  ).show(context);
}

void showDefaultMessage(BuildContext context, String message) {
  Flushbar(
    messageText: Row(
      children: [
        SvgPicture.asset(AppIcons.info),
        const SizedBox(width: 12),
        Expanded(child: Text(message, style: AppTextStyles.styleW500S14Grey9)),
      ],
    ),
    duration: const Duration(seconds: 3),
    borderRadius: BorderRadius.circular(10),
    margin: const EdgeInsets.all(12),
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: Colors.white,
    barBlur: 5,
    boxShadows: const [
      BoxShadow(
          color: Color.fromRGBO(145, 158, 171, 0.15),
          offset: Offset(-2, -3),
          blurRadius: 5.0),
      BoxShadow(
          color: Color.fromRGBO(145, 158, 171, 0.15),
          offset: Offset(2, 3),
          blurRadius: 5.0)
    ],
  ).show(context);
}
