import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SpecialMaskTextInputFormatter extends MaskTextInputFormatter {
  static String maskA = "## £## &&&";
  static String maskB = "## £ ### &&";

  SpecialMaskTextInputFormatter({String? initialText})
      : super(
            mask: maskA,
            filter: {
              "#": RegExp('[0-9]'),
              "&": RegExp('[A-Za-z]'),
              '£': RegExp(r'[0-9A-Za-z]')
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
    } else if (RegExp('[A-Za-z]').hasMatch(isLatter)) {
      if (getMask() != maskB) {
        updateMask(mask: maskB);
      }
    }
    return super.formatEditUpdate(oldValue, newValue);
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
