import 'package:flutter/material.dart';
import '../../../../../../../generated/l10n.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../insurance_register/widgets/animated_container.dart';
import '../../../../insurance_register/widgets/widgets.dart';

class ContractInfo extends StatelessWidget {
  const ContractInfo({
    Key? key,
    this.onClear,
  }) : super(key: key);
  final Function()? onClear;

  @override
  Widget build(BuildContext context) {
    return AnimatedRoundContainer(
      title: AppLocalizations.of(context).contractInfo,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      clearText: AppLocalizations.of(context).clearData,
      showChildren2: false,
      onClear: onClear,
      children: const [
        TitleSubtitle(
          title: 'Дата начало контракта',
          subtitle: '02.12.2022',
        ),
        TitleSubtitle(
          title: 'Дата окончания срока действия контракта',
          subtitle: '02.12.2022',
        ),
        Divider(height: 16, color: AppColors.divider, thickness: 1),
        TitleSubtitle(
          title: 'Цена полиса на USD',
          subtitle: '\$ 14,61',
        ),
        TitleSubtitle(
          title: 'Цена полиса',
          subtitle: '168 000 сум',
        ),
        TitleSubtitle(
          title: 'Страховая сумма',
          subtitle: '40 000 000 сум',
        ),
      ],
    );
  }
}
