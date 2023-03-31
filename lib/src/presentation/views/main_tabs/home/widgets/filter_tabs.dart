import 'package:flutter/material.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_text_styles.dart';

class FilterTabs extends StatelessWidget {
  const FilterTabs({
    Key? key,
    required this.tabs,
    required this.selectedTab,
    required this.onTap,
  }) : super(key: key);

  final List<String> tabs;
  final String selectedTab;
  final Function(String value) onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.separated(
        itemCount: tabs.length,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          var tab = tabs[index];
          return InkWell(
            onTap: () {
              onTap(tab);
            },
            borderRadius: BorderRadius.circular(10),
            child: Ink(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color:
                    selectedTab == tab ? AppColors.primary300 : AppColors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: selectedTab == tab
                      ? AppColors.primaryColor
                      : AppColors.grey100,
                ),
              ),
              child: Center(
                child: Text(
                  tab,
                  style: selectedTab != tab
                      ? AppTextStyles.styleW500S14Grey9
                      : AppTextStyles.styleW500S14White,
                  maxLines: 1,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 8),
      ),
    );
  }
}
