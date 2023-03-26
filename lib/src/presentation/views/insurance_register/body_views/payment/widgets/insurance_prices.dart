import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:flutter/material.dart';
import '../../../../../../data/models/contract_information/response/contract_info_response.dart';
import '../../../widgets/animated_container.dart';
import '../../../widgets/widgets.dart';

class ContractPrice extends StatelessWidget {
  const ContractPrice({Key? key, this.contract}) : super(key: key);
  final ContractInfoResponse? contract;

  @override
  Widget build(BuildContext context) {
    return AnimatedRoundContainer(
      title: AppLocalizations.of(context).paymentAmount,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      children: [
        TitleSubtitle(
            title: AppLocalizations.of(context).polisPrice,
            subtitle:
                '${numberFormat(contract?.policyAmount ?? 0)} ${AppLocalizations.of(context).sum}'),
        TitleSubtitle(
            title: AppLocalizations.of(context).insurancePrice,
            subtitle:
                '${numberFormat(contract?.insuranceAmount ?? 0)} ${AppLocalizations.of(context).sum}'),
      ],
    );
  }
}
