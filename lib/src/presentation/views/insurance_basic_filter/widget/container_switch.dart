import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../cubits/insurance_basic_filter/insurance_basic_filter_cubit.dart';
import 'widgets.dart';

class ContainerSwitch extends StatelessWidget {
  const ContainerSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InsuranceBasicFilterCubit, InsuranceBasicFilterState>(
      builder: (context, state) {
        final cubit = context.read<InsuranceBasicFilterCubit>();
        var status = state.basicFilterRequest.isVip;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            const Text('Количество водителей',
                style: AppTextStyles.styleW600S14Grey9),
            const SizedBox(height: 7),
            Row(
              children: [
                SwitchBtn(
                    title: 'До 5 человек',
                    onTap: () {
                      cubit.selectDriversCount(false);
                    },
                    bgColor: status == false ? AppColors.green : null,
                    borderRadius: const BorderRadius.horizontal(
                        left: Radius.circular(8))),
                SwitchBtn(
                    title: 'Не ограничен',
                    onTap: () {
                      cubit.selectDriversCount(true);
                    },
                    bgColor: status == true ? AppColors.green : null,
                    borderRadius: const BorderRadius.horizontal(
                        right: Radius.circular(8))),
              ],
            ),
          ],
        );
      },
    );
  }
}
