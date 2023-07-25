import 'package:e_polis/src/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../../../../../generated/l10n.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../data/models/contract_information/response/contract_info_response.dart';
import '../../../../../components/custom_text_field.dart';
import '../../../widgets/animated_container.dart';
import '../../../widgets/widgets.dart';

class ContractDetails extends StatelessWidget {
  const ContractDetails(
      {Key? key,
      this.contract,
      required this.dateController,
      this.onClear,
      required this.focusNode,
      required this.onRequest})
      : super(key: key);
  final ContractInfoResponse? contract;
  final TextEditingController dateController;
  final Function()? onClear;
  final FocusNode focusNode;
  final Function() onRequest;

  @override
  Widget build(BuildContext context) {
    return AnimatedRoundContainer(
      title: AppLocalizations.of(context).contractInfo,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      clearText:
          contract != null ? AppLocalizations.of(context).clearData : null,
      showChildren2: true,
      onClear: onClear,
      children: [
        const SizedBox(height: 8),
        CustomDatePickTextField(
          label: AppLocalizations.of(context).contractStartDate,
          hintText: '30.12.2022',
          keyboardType: TextInputType.datetime,
          textEditingController: dateController,
          textInputAction: TextInputAction.done,
          onFieldSubmitted: (_) => focusNode.unfocus(),
          focusNode: focusNode,
          validator: (value) => (value!.length < 10)
              ? AppLocalizations.of(context).enterDate
              : null,
          dateFormat: 'dd.MM.yyyy',
          onChange: (value) {
            if (value.length == 10) {
              focusNode.unfocus();
              onRequest();
            }
          },
          inputFormatters: [
            MaskTextInputFormatter(
              mask: '##.##.####',
              initialText: dateController.text.replaceAll('.', ''),
              type: MaskAutoCompletionType.eager,
              filter: {"#": RegExp(r'\d')},
            )
          ],
          onDate: (date) {
            focusNode.unfocus();
            onRequest();
          },
        ),
        const SizedBox(height: 8),
        const Divider(height: 16, color: AppColors.divider, thickness: 1),
        TitleSubtitle(
          title: AppLocalizations.of(context).contractExpirationDate,
          subtitle: contract?.endDate ?? '',
        ),
        TitleSubtitle(
          title: AppLocalizations.of(context).haveThePrivilege,
          subtitle: AppLocalizations.of(context).notPrivileged,
        ),
        const Divider(height: 16, color: AppColors.divider, thickness: 1),
        TitleSubtitle(
          title: AppLocalizations.of(context).polisPrice,
          subtitle:
              '${numberFormat(contract?.policyAmount?.toInt())} ${AppLocalizations.of(context).sum}',
        ),
        TitleSubtitle(
          title: AppLocalizations.of(context).insurancePrice,
          subtitle:
              '${numberFormat(contract?.insuranceAmount?.toInt())} ${AppLocalizations.of(context).sum}',
        ),
      ],
    );
  }
}
