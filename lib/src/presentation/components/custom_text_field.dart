import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.textEditingController,
      this.onChange,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.obscure,
      this.textInputAction,
      this.fillColor,
      this.preIconColor,
      this.validator,
      this.autoFocus,
      this.focusNode,
      this.initialValue,
      this.label,
      this.inputFormatters,
      this.keyboardType,
      this.textCapitalization,
      this.onFieldSubmitted})
      : super(key: key);

  final TextEditingController? textEditingController;
  final Function(String value)? onChange;
  final String? hintText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscure;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final Color? preIconColor;
  final FormFieldValidator<String>? validator;
  final bool? autoFocus;
  final FocusNode? focusNode;
  final String? initialValue;
  final String? label;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(label ?? '', style: AppTextStyles.styleW600S14Grey9),
        if (label != null) const SizedBox(height: 6),
        TextFormField(
          validator: validator,
          style: AppTextStyles.styleW500S14Grey9,
          onChanged: onChange,
          obscureText: obscure ?? false,
          autofocus: autoFocus ?? false,
          focusNode: focusNode,
          initialValue: initialValue,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          inputFormatters: inputFormatters,
          controller: textEditingController,
          textInputAction: textInputAction,
          keyboardType: keyboardType,
          cursorColor: AppColors.primaryColor,
          onFieldSubmitted: onFieldSubmitted,
          decoration: InputDecoration(
            // prefixIcon: Icon(prefixIcon, size: 22, color: preIconColor),
            suffixIcon: suffixIcon,
            hintStyle: AppTextStyles.styleW500S14Grey3,
            hintText: hintText,
            filled: true,
            fillColor: fillColor ?? Colors.white,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Colors.red),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: AppColors.grey400),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: AppColors.primary400),
            ),
            disabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: AppColors.grey400),
            ),
          ),
        ),
      ],
    );
  }
}

/// textfield with prefix widget

class CustomPrefixTextField extends StatelessWidget {
  const CustomPrefixTextField(
      {Key? key,
      this.textEditingController,
      this.onChange,
      this.hintText,
      this.prefixIcon,
      this.validator,
      this.suffixIcon,
      this.obscure,
      this.textInputAction,
      this.textInputType,
      required this.label,
      this.autoFocus,
      this.inputFormatters,
      this.focusNode})
      : super(key: key);

  final TextEditingController? textEditingController;
  final Function(String value)? onChange;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscure;
  final bool? autoFocus;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final FormFieldValidator<String>? validator;
  final String label;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.styleW600S14Grey9),
        const SizedBox(height: 7),
        TextFormField(
          validator: validator,
          style: AppTextStyles.styleW500S14Grey9,
          onChanged: onChange,
          obscureText: obscure ?? false,
          autofocus: autoFocus ?? false,
          focusNode: focusNode,
          textInputAction: textInputAction,
          controller: textEditingController,
          inputFormatters: inputFormatters,
          keyboardType: textInputType,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintStyle: AppTextStyles.styleW500S14Grey3,
            hintText: hintText,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Colors.red),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: AppColors.grey400),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: AppColors.primary400),
            ),
            disabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: AppColors.grey400),
            ),
          ),
        ),
      ],
    );
  }
}
