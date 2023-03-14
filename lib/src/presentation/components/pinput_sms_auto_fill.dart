import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../core/themes/app_colors.dart';

class CustomPinPut extends StatelessWidget {
  CustomPinPut({
    Key? key,
    this.textController,
    this.forceErrorState,
    this.onChange,
  }) : super(key: key);

  final TextEditingController? textController;
  final bool? forceErrorState;
  final Function(String code)? onChange;

  @override
  Widget build(BuildContext context) {
    return Pinput(
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: focusedPinTheme,
        submittedPinTheme: submittedPinTheme,
        errorPinTheme: errorPinTheme,
        textInputAction: TextInputAction.done,
        autofocus: true,
        closeKeyboardWhenCompleted: false,
        forceErrorState: forceErrorState ?? false,
        errorText: '',
        controller: textController,
        onChanged: onChange,
        length: 5,
        androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit);
  }

  /// pin put border themes
  final defaultPinTheme = PinTheme(
    width: 54,
    height: 54,
    textStyle: const TextStyle(
        fontSize: 24, color: AppColors.grey900, fontWeight: FontWeight.w700),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.grey300),
      borderRadius: BorderRadius.circular(12),
    ),
  );

  final focusedPinTheme = PinTheme(
    width: 54,
    height: 54,
    textStyle: const TextStyle(
        fontSize: 24, color: AppColors.grey900, fontWeight: FontWeight.w700),
    decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor),
        borderRadius: BorderRadius.circular(12)),
  );

  final submittedPinTheme = PinTheme(
    width: 54,
    height: 54,
    textStyle: const TextStyle(
        fontSize: 24, color: AppColors.grey900, fontWeight: FontWeight.w700),
    decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey300),
        borderRadius: BorderRadius.circular(12)),
  );

  final errorPinTheme = PinTheme(
    width: 54,
    height: 54,
    textStyle: const TextStyle(
        fontSize: 24, color: AppColors.red, fontWeight: FontWeight.w700),
    decoration: BoxDecoration(
        border: Border.all(color: AppColors.red),
        borderRadius: BorderRadius.circular(12)),
  );
}
