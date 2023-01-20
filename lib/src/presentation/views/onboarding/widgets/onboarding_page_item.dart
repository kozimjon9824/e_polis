import 'package:flutter/material.dart';
import '../../../../core/themes/app_text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingItemPage extends StatelessWidget {
  const OnBoardingItemPage({
    Key? key,
    required this.logo,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String logo;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width - 40,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset(logo,
                  alignment: Alignment.center, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 60.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(title,
                textAlign: TextAlign.center,
                style: AppTextStyles.styleW700S24Grey9),
          ),
          const SizedBox(height: 12.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(subTitle,
                textAlign: TextAlign.center,
                style: AppTextStyles.styleW500S14Grey7),
          ),
          const SizedBox(height: 64.0),
        ],
      ),
    );
  }
}
