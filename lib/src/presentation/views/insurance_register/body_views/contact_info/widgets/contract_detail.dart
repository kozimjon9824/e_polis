import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../components/custom_mask.dart';
import '../../../../../components/custom_text_field.dart';
import '../../../widgets/animated_container.dart';
import '../../../widgets/widgets.dart';

class ContractDetails extends StatelessWidget {
  const ContractDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedRoundContainer(
      title: 'Информация о контракте',
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      clearText: 'Очистить информацию',
      showChildren2: true,
      children: [
        const SizedBox(height: 8),
        CustomTextField(
          label: 'Дата начало контракта',
          hintText: '',
          keyboardType: TextInputType.datetime,
          textInputAction: TextInputAction.done,
          inputFormatters: [
            MaskTextInputFormatter(
                mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')})
          ],
        ),
        const SizedBox(height: 8),
        const Divider(height: 16, color: AppColors.divider, thickness: 1),
        const TitleSubtitle(
            title: 'Дата окончания срока действия контракта',
            subtitle: '02.12.2023'),
        const TitleSubtitle(
            title: 'Иметь привилегию', subtitle: 'Не привилегированный'),
        const Divider(height: 16, color: AppColors.divider, thickness: 1),
        const TitleSubtitle(title: 'Цена полиса', subtitle: '168 000 сум'),
        const TitleSubtitle(
            title: 'Страховая сумма', subtitle: '40 000 000 сум'),
      ],
    );
  }
}
