import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../components/custom_mask.dart';
import '../../../../../components/custom_text_field.dart';
import '../../../widgets/animated_container.dart';
import '../../../widgets/widgets.dart';

class ContractPrice extends StatelessWidget {
  const ContractPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AnimatedRoundContainer(
      title: 'Сумма оплаты',
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      children: [
        TitleSubtitle(title: 'Цена полиса', subtitle: '168 000 сум'),
        TitleSubtitle(title: 'Страховая сумма', subtitle: '40 000 000 сум'),
      ],
    );
  }
}
