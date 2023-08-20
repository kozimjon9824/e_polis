import 'package:flutter/material.dart';
import '../../../../../../../generated/l10n.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/utils/helper_models.dart';
import '../../../../../../core/utils/utils.dart';
import '../../../../insurance_register/widgets/animated_container.dart';
import '../../../../insurance_register/widgets/widgets.dart';

class ContractInfo extends StatelessWidget {
  const ContractInfo({
    Key? key,
    this.onClear,
    required this.travelAttModel,
  }) : super(key: key);
  final Function()? onClear;
  final TravelAttModel travelAttModel;

  @override
  Widget build(BuildContext context) {
    return AnimatedRoundContainer(
      title: AppLocalizations.of(context).contractInfo,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      showChildren2: false,
      onClear: onClear,
      children: [
        TitleSubtitle(
          title: AppLocalizations.of(context).contractStartDate,
          subtitle: travelAttModel.startDate ?? '',
        ),
        TitleSubtitle(
          title: AppLocalizations.of(context).contractExpirationDate,
          subtitle: travelAttModel.endDate ?? '',
        ),
        const Divider(height: 16, color: AppColors.divider, thickness: 1),
        TitleSubtitle(
          title: AppLocalizations.of(context).priceInUsd,
          subtitle: '\$ ${travelAttModel.calResponse?.premiumUsd ?? 0}',
        ),
        TitleSubtitle(
          title: AppLocalizations.of(context).polisPrice,
          subtitle:
              '${numberFormat(travelAttModel.calResponse?.insurancePremium ?? 0)} ${AppLocalizations.of(context).sum}',
        ),
        TitleSubtitle(
          title: AppLocalizations.of(context).insurancePrice,
          subtitle:
              '€ ${numberFormat(travelAttModel.calResponse?.insuranceLiability ?? 0)}',
        ),
      ],
    );
  }
}
