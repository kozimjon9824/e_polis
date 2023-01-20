import 'package:flutter/cupertino.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_styles.dart';

class DropDownButton<T> extends StatelessWidget {
  const DropDownButton({
    Key? key,
    required this.label,
    this.hint,
    this.onChanged,
    this.onSaved,
    this.errorText,
    required this.items,
  }) : super(key: key);
  final String label;
  final String? hint;
  final String? errorText;
  final Function(T?)? onChanged;
  final Function(T?)? onSaved;
  final List<DropdownMenuItem<T>> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.styleW600S14Grey9),
        const SizedBox(height: 7),
        DropdownButtonFormField2(
            decoration: dropDownDecoration(),
            isExpanded: true,
            hint: Text(hint ?? '',
                style: AppTextStyles.styleW400S14Grey6
                    .copyWith(color: AppColors.grey400)),
            icon: const Icon(CupertinoIcons.chevron_down,
                color: AppColors.grey400),
            iconOnClick:
                const Icon(CupertinoIcons.chevron_up, color: AppColors.grey400),
            iconSize: 16,
            buttonHeight: 56,
            style: AppTextStyles.styleW500S14Grey9,
            buttonPadding: const EdgeInsets.only(right: 12),
            dropdownDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            items: items,
            validator: (value) {
              if (value == null) {
                return errorText;
              }
              return null;
            },
            onChanged: onChanged,
            onSaved: onSaved),
      ],
    );
  }

  InputDecoration dropDownDecoration() {
    return const InputDecoration(
      isDense: true,
      contentPadding: EdgeInsets.zero,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide()),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.grey400)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.primaryColor)),
      disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.grey400)),
    );
  }
}
