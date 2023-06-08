import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/presentation/views/travel_booking/widgets/stepper_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../generated/l10n.dart';
import '../../../cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';

class TravelCustomStepper extends StatelessWidget
    implements PreferredSizeWidget {
  const TravelCustomStepper({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ManageInsuranceStackViewsCubit,
        ManageInsuranceStackViewsState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
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
                      isActive: currentIndex >= i,
                    ),
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
        color: isActive ? AppColors.primaryColor : AppColors.grey500,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(68);
}
