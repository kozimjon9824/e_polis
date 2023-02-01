import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:flutter/material.dart';
import '../../../../generated/l10n.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../components/round_button.dart';
import 'widgets/custom_dots.dart';
import 'widgets/onboarding_page_item.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final pageController = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(automaticallyImplyLeading: true, actions: [
        TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, AppRoutes.main, (route) => false);
            },
            child: Text(AppLocalizations.of(context).skip,
                style: AppTextStyles.styleW400S14Grey6))
      ]),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          pageIndex = index;
          setState(() {});
        },
        children: [
          OnBoardingItemPage(
            logo: AppIcons.onBoarding1,
            title: AppLocalizations.of(context).onBoardingTitle1,
            subTitle: AppLocalizations.of(context).onBoardingText1,
          ),
          OnBoardingItemPage(
            logo: AppIcons.onBoarding1,
            title: AppLocalizations.of(context).onBoardingTitle2,
            subTitle: AppLocalizations.of(context).onBoardingText2,
          ),
          OnBoardingItemPage(
            logo: AppIcons.onBoarding1,
            title: AppLocalizations.of(context).onBoardingTitle3,
            subTitle: AppLocalizations.of(context).onBoardingText3,
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 16, 20, 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmoothDots(pageController: pageController),
            RoundButton(
                onTap: () {
                  pageIndex++;
                  if (pageIndex <= 2) {
                    pageController.animateToPage(pageIndex,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.linear);
                    setState(() {});
                  }
                  if (pageIndex == 3) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, AppRoutes.main, (route) => false);
                  }
                },
                icon: Icons.arrow_forward_rounded,
                isChangeShape: pageIndex == 2)
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
}
