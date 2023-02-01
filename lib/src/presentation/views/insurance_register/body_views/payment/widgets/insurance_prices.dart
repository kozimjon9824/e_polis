import 'package:e_polis/src/core/utils/utils.dart';
import 'package:flutter/material.dart';
import '../../../widgets/animated_container.dart';
import '../../../widgets/widgets.dart';

class ContractPrice extends StatelessWidget {
  const ContractPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedRoundContainer(
      title: 'Сумма оплаты',
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      children: [
        TitleSubtitle(
            title: 'Цена полиса', subtitle: '${numberFormat(160000)} сум'),
        TitleSubtitle(
            title: 'Страховая сумма', subtitle: '${numberFormat(190000)} сум'),
      ],
    );
  }
}
