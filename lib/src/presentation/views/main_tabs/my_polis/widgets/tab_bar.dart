import 'package:flutter/material.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_text_styles.dart';

class TabBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const TabBarWidget({
    Key? key,
    required TabController tabController,
    required this.tabs,
    this.onTap,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;
  final List tabs;
  final Function(int index)? onTap;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, 60),
      child: TabBar(
        indicatorColor: Colors.transparent,
        isScrollable: true,
        labelPadding: const EdgeInsets.symmetric(horizontal: 4),
        controller: _tabController,
        splashBorderRadius: BorderRadius.circular(10),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        tabs: List.generate(
          tabs.length,
          (index) => Tab(
            child: Ink(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: index == _tabController.index
                      ? AppColors.primary300
                      : AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: index == _tabController.index
                          ? AppColors.primaryColor
                          : AppColors.grey100)),
              child: Center(
                child: Text(tabs[index],
                    style: index != _tabController.index
                        ? AppTextStyles.styleW500S14Grey9
                        : AppTextStyles.styleW500S14White,
                    maxLines: 1),
              ),
            ),
          ),
        ),
        onTap: onTap,
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}
