import 'package:e_polis/src/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../data/models/contract_information/response/contract_info_response.dart';
import '../../../../../components/custom_mask.dart';
import '../../../../../components/custom_text_field.dart';
import '../../../widgets/animated_container.dart';
import '../../../widgets/widgets.dart';

class ContractDetails extends StatelessWidget {
  const ContractDetails(
      {Key? key,
      this.contract,
      required this.dateController,
      this.onClear,
      required this.focusNode})
      : super(key: key);
  final ContractInfoResponse? contract;
  final TextEditingController dateController;
  final Function()? onClear;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return AnimatedRoundContainer(
      title: 'Информация о контракте',
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      clearText: contract != null ? 'Очистить информацию' : null,
      showChildren2: true,
      onClear: onClear,
      children: [
        const SizedBox(height: 8),
        CustomTextField(
          label: 'Дата начало контракта',
          hintText: '02.12.2022',
          keyboardType: TextInputType.datetime,
          textEditingController: dateController,
          textInputAction: TextInputAction.done,
          focusNode: focusNode,
          validator: (value) => (value?.isEmpty ?? false) ? 'Enter date' : null,
          inputFormatters: [
            MaskTextInputFormatter(
                mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')})
          ],
        ),
        const SizedBox(height: 8),
        const Divider(height: 16, color: AppColors.divider, thickness: 1),
        TitleSubtitle(
            title: 'Дата окончания срока действия контракта',
            subtitle: contract?.endDate ?? ''),
        const TitleSubtitle(
            title: 'Иметь привилегию', subtitle: 'Не привилегированный'),
        const Divider(height: 16, color: AppColors.divider, thickness: 1),
        TitleSubtitle(
            title: 'Цена полиса',
            subtitle: '${numberFormat(contract?.policyAmount?.toInt())} сум'),
        TitleSubtitle(
            title: 'Страховая сумма',
            subtitle:
                '${numberFormat(contract?.insuranceAmount?.toInt())} сум'),
      ],
    );
  }
}
