import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/helper_models.dart';
import '../../../../insurance_register/widgets/animated_container.dart';
import '../../../../insurance_register/widgets/widgets.dart';

class TravelContractPrice extends StatelessWidget {
  const TravelContractPrice({
    Key? key,
    required this.travelAttModel,
  }) : super(key: key);
  final TravelAttModel travelAttModel;

  @override
  Widget build(BuildContext context) {
    return AnimatedRoundContainer(
      title: AppLocalizations.of(context).paymentAmount,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      children: [
        TitleSubtitle(
          title: AppLocalizations.of(context).polisPrice,
          subtitle:
              '${numberFormat(travelAttModel.calResponse?.insurancePremium ?? 0)} ${AppLocalizations.of(context).sum}',
        ),
        TitleSubtitle(
          title: AppLocalizations.of(context).insurancePrice,
          subtitle:
              '${numberFormat(travelAttModel.calResponse?.insuranceLiability ?? 0)} ${AppLocalizations.of(context).sum}',
        ),
      ],
    );
  }
}
