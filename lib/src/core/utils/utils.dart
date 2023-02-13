import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

enum StateStatus { loading, success, error, unknown }

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

/// jwt token decoder
Map<String, dynamic> parseJwt(String token) {
  final parts = token.split('.');
  if (parts.length != 3) {
    throw Exception('invalid token');
  }

  final payload = _decodeBase64(parts[1]);
  final payloadMap = json.decode(payload);
  if (payloadMap is! Map<String, dynamic>) {
    throw Exception('invalid payload');
  }
  return payloadMap;
}

String _decodeBase64(String str) {
  String output = str.replaceAll('-', '+').replaceAll('_', '/');

  switch (output.length % 4) {
    case 0:
      break;
    case 2:
      output += '==';
      break;
    case 3:
      output += '=';
      break;
    default:
      throw Exception('Illegal base64url string!"');
  }

  return utf8.decode(base64Url.decode(output));
}

String getDateTime(String? date) {
  if (date == null) return '';
  var d = DateTime.parse(date);
  var today = DateTime.now();
  if (d.day == today.day && d.month == today.month) {
    return 'Today';
  }
  if (d.day == today.subtract(const Duration(days: 1)).day &&
      d.month == today.subtract(const Duration(days: 1)).month) {
    return 'Yesterday, ${DateFormat('MMMM d').format(d)}';
  }
  return DateFormat('MMMM d').format(d);
}

String dateConverter(
    {required String date,
    required String inFormat,
    required String outFormat}) {
  try {
    if (date.isEmpty) return '';
    final format = DateFormat(inFormat);
    DateTime gettingDate = format.parse(date);
    final DateFormat formatter = DateFormat(outFormat);
    final String formatted = formatter.format(gettingDate);
    return formatted;
  } catch (e) {
    return '';
  }
}

String numberFormat(dynamic number) {
  if (number == null) return '';
  return NumberFormat.decimalPattern().format(number).replaceAll(',', ' ');
}

class ThousandsSeparatorInputFormatter extends TextInputFormatter {
  static const separator = ','; // Change this to '.' for other locales

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Short-circuit if the new value is empty
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    }

    // Handle "deletion" of separator character
    String oldValueText = oldValue.text.replaceAll(separator, '');
    String newValueText = newValue.text.replaceAll(separator, '');

    if (oldValue.text.endsWith(separator) &&
        oldValue.text.length == newValue.text.length + 1) {
      newValueText = newValueText.substring(0, newValueText.length - 1);
    }

    // Only process if the old value and new value are different
    if (oldValueText != newValueText) {
      int selectionIndex =
          newValue.text.length - newValue.selection.extentOffset;
      final chars = newValueText.split('');

      String newString = '';
      for (int i = chars.length - 1; i >= 0; i--) {
        if ((chars.length - 1 - i) % 3 == 0 && i != chars.length - 1) {
          newString = separator + newString;
        }
        newString = chars[i] + newString;
      }

      return TextEditingValue(
        text: newString.toString(),
        selection: TextSelection.collapsed(
          offset: newString.length - selectionIndex,
        ),
      );
    }

    return newValue;
  }
}

String? getMaskedPhone(String? phone) {
  if (phone == null) return null;
  final phoneMask = MaskTextInputFormatter(
      mask: '### ## ### ## ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.eager);
  return '+${phoneMask.maskText(phone)}';
}
