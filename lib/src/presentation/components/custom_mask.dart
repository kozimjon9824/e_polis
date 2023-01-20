import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SpecialMaskTextInputFormatter extends MaskTextInputFormatter {
  static String maskA = "## £## &&&";
  static String maskB = "## £ ### &&";

  SpecialMaskTextInputFormatter({String? initialText})
      : super(
            mask: maskA,
            filter: {
              "#": RegExp('[0-9]'),
              "&": RegExp('[A-Z]'),
              '£': RegExp(r'[0-9A-Z]')
            },
            initialText: initialText);

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var isLatter =
        newValue.text.trim().length > 2 ? newValue.text.trim()[2] : '';
    if (RegExp('[0-9]').hasMatch(isLatter)) {
      if (getMask() != maskA) {
        updateMask(mask: maskA);
      }
    } else if (RegExp('[A-Z]').hasMatch(isLatter)) {
      if (getMask() != maskB) {
        updateMask(mask: maskB);
      }
    }
    return super.formatEditUpdate(oldValue, newValue);
  }
}
