import 'package:flutter/material.dart';

class CustomRefreshIndicator extends StatelessWidget {
  const CustomRefreshIndicator(
      {Key? key, required this.child, required this.onRefresh})
      : super(key: key);
  final Widget child;
  final Future Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(onRefresh: onRefresh, child: child);
  }
}
