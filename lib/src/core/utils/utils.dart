import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
