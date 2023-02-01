import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class ExpandableContainer extends StatefulWidget {
  const ExpandableContainer({
    Key? key,
    required this.title,
    required this.subText,
  }) : super(key: key);

  final String title;
  final String subText;

  @override
  State<ExpandableContainer> createState() => _ExpandableContainerState();
}

class _ExpandableContainerState extends State<ExpandableContainer> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              color: isOpen ? AppColors.primaryColor : AppColors.grey500)),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.zero,
        elevation: 0,
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            onExpansionChanged: (value) {
              isOpen = value;
              setState(() {});
            },
            title: Text(widget.title,
                style: AppTextStyles.styleW700S14Grey9.copyWith(
                    color: isOpen ? AppColors.primaryColor : AppColors.grey900,
                    height: 1.6)),
            backgroundColor: AppColors.grey50,
            iconColor: AppColors.primaryColor,
            collapsedIconColor: AppColors.grey900,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(color: AppColors.grey50),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(widget.subText,
                          style: AppTextStyles.styleW500S12Grey5
                              .copyWith(height: 1.4)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
