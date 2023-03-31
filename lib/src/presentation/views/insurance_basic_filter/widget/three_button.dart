import 'package:e_polis/src/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../generated/l10n.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../cubits/insurance_basic_filter/insurance_basic_filter_cubit.dart';
import 'widgets.dart';

class ThreeButton extends StatelessWidget {
  const ThreeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InsuranceBasicFilterCubit, InsuranceBasicFilterState>(
      builder: (context, state) {
        var cubit = context.read<InsuranceBasicFilterCubit>();
        var status = state.basicFilterRequest.period;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context).termsOfInsurance,
              style: AppTextStyles.styleW600S14Grey9,
            ),
            const SizedBox(height: 7),
            Row(
              children: [
                SwitchBtn(
                  title: AppLocalizations.of(context).twentyDays,
                  onTap: () {
                    cubit.selectPeriod(PERIOD_DAYS);
                  },
                  bgColor: status == PERIOD_DAYS ? AppColors.green : null,
                  borderRadius:
                      const BorderRadius.horizontal(left: Radius.circular(8)),
                ),
                SwitchBtn(
                  title: AppLocalizations.of(context).sixMonth,
                  onTap: () {
                    cubit.selectPeriod(PERIOD_MONTHS);
                  },
                  bgColor: status == PERIOD_MONTHS ? AppColors.green : null,
                ),
                SwitchBtn(
                  title: AppLocalizations.of(context).oneYear,
                  onTap: () {
                    cubit.selectPeriod(PERIOD_YEAR);
                  },
                  bgColor: status == PERIOD_YEAR ? AppColors.green : null,
                  borderRadius:
                      const BorderRadius.horizontal(right: Radius.circular(8)),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
