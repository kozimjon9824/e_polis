import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import 'home/home.dart';
import 'my_polis/my_polis.dart';
import 'profile/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key, this.index = 0}) : super(key: key);
  final int index;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          HomePage(),
          MyPolis(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (_currentIndex != index) {
            setState(() => _currentIndex = index);
          }
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.grey400,
        selectedLabelStyle: AppTextStyles.styleW500S14Primary,
        unselectedLabelStyle: AppTextStyles.styleW500S14Grey4,
        items: [
          BottomNavigationBarItem(
              label: 'Главная',
              tooltip: 'Главная',
              activeIcon: SvgPicture.asset(AppIcons.activeHome),
              icon: SvgPicture.asset(AppIcons.home)),
          BottomNavigationBarItem(
              label: 'Мои полисы',
              tooltip: 'Мои полисы',
              activeIcon: SvgPicture.asset(AppIcons.activeBriefcase),
              icon: SvgPicture.asset(AppIcons.briefcase)),
          BottomNavigationBarItem(
              label: 'Профиль',
              tooltip: 'Профиль',
              activeIcon: SvgPicture.asset(AppIcons.activeProfile),
              icon: SvgPicture.asset(AppIcons.profile)),
        ],
      ),
    );
  }
}
