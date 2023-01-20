import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/themes/app_colors.dart';

/// widgets
class SmoothDots extends StatelessWidget {
  const SmoothDots({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController, // PageController
      count: 3,
      textDirection: TextDirection.ltr,
      effect: ExpandingDotsEffect(
          dotWidth: 16,
          dotHeight: 4,
          radius: 56,
          expansionFactor: 1.1,
          dotColor: AppColors.primaryColor.withOpacity(.3),
          activeDotColor: AppColors.primaryColor,
          spacing: 4),
    );
  }
}
