import 'dart:io';

import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Center(
        child: Platform.isAndroid
            ? const CircularProgressIndicator(color: AppColors.primaryColor)
            : const CupertinoActivityIndicator(
                color: AppColors.primaryColor,
                radius: 18,
              ),
      ),
    );
  }
}
