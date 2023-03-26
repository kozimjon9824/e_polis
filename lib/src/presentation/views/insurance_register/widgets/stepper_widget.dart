import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../generated/l10n.dart';
import '../../../cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';

class CustomStepper extends StatelessWidget implements PreferredSizeWidget {
  const CustomStepper({Key? key, required this.currentIndex}) : super(key: key);
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ManageInsuranceStackViewsCubit,
        ManageInsuranceStackViewsState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  const Expanded(flex: 1, child: SizedBox()),
                  StepperStep(
                      currentIndex: currentIndex,
                      index: 0,
                      onTap: () {
                        context
                            .read<ManageInsuranceStackViewsCubit>()
                            .changeIndex(0);
                      }),
                  liner(currentIndex >= 1),
                  StepperStep(
                      currentIndex: currentIndex,
                      index: 1,
                      onTap: () {
                        context
                            .read<ManageInsuranceStackViewsCubit>()
                            .changeIndex(1);
                      }),
                  liner(currentIndex >= 2),
                  StepperStep(
                      currentIndex: currentIndex,
                      index: 2,
                      onTap: () {
                        context
                            .read<ManageInsuranceStackViewsCubit>()
                            .changeIndex(2);
                      }),
                  liner(currentIndex >= 3),
                  StepperStep(
                      currentIndex: currentIndex,
                      index: 3,
                      onTap: () {
                        context
                            .read<ManageInsuranceStackViewsCubit>()
                            .changeIndex(3);
                      }),
                  const Expanded(flex: 1, child: SizedBox()),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
              child: Row(
                children: [
                  for (int i = 0; i < 4; i++)
                    StepperText(
                        title: getTitles(context)[i],
                        isActive: currentIndex >= i),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  List<String> getTitles(BuildContext context) => [
        AppLocalizations.of(context).generalInfo,
        AppLocalizations.of(context).driverDetails,
        AppLocalizations.of(context).contractDetails,
        AppLocalizations.of(context).payment,
      ];

  Widget liner(bool isActive) {
    return Expanded(
      flex: 2,
      child: Divider(
          height: 0,
          thickness: 1,
          color: isActive ? AppColors.primaryColor : AppColors.grey500),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(68);
}

/// widgets
class StepperStep extends StatelessWidget {
  const StepperStep(
      {Key? key, required this.currentIndex, required this.index, this.onTap})
      : super(key: key);
  final int currentIndex;
  final int index;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    if (currentIndex < index) {
      return InkWell(
        // onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: Container(
            height: 18,
            width: 18,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.grey500, width: 1)),
            child: Text((index + 1).toString(),
                style: AppTextStyles.styleW700S12Grey5),
          ),
        ),
      );
    }
    return InkWell(
      // onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: SvgPicture.asset(
            index == currentIndex ? AppIcons.active : AppIcons.check,
            height: 18,
            width: 18),
      ),
    );
  }
}

/// widgets
class StepperText extends StatelessWidget {
  const StepperText({Key? key, this.isActive = false, required this.title})
      : super(key: key);

  final bool isActive;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: AppTextStyles.styleW500S12Grey9.copyWith(
                color: isActive ? AppColors.grey900 : AppColors.grey500),
          ),
        ),
      ),
    );
  }
}
