import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../components/custom_mask.dart';
import '../../../../../components/custom_text_field.dart';
import '../../../widgets/animated_container.dart';
import '../../../widgets/widgets.dart';

class CarInformationWidget extends StatelessWidget {
  const CarInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedRoundContainer(
      title: 'Информация об автомобиле',
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      padding2: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      clearText: 'Очистить информацию',
      showChildren2: true,
      children2: const [
        Divider(height: 0, color: AppColors.divider, thickness: 1),
        SizedBox(height: 8),
        TitleSubtitle(title: 'Марка и модель', subtitle: 'CHEVROLET , COBALT'),
        TitleSubtitle(title: 'Год выпуска автомобиля', subtitle: '2014'),
        TitleSubtitle(title: 'Тип автомобиля', subtitle: 'Легковые'),
        TitleSubtitle(
            title: 'Регион регистрации автомобиля', subtitle: 'Город Ташкент'),
        SizedBox(height: 8),
      ],
      children: [
        CustomTextField(
          label: 'Номер авто',
          hintText: '01 М 001 ХА',
          inputFormatters: [SpecialMaskTextInputFormatter()],
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                flex: 1,
                child: CustomTextField(
                  label: 'Техпаспорт',
                  hintText: 'Серия',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  inputFormatters: [
                    MaskTextInputFormatter(
                        mask: '###', filter: {"#": RegExp(r'[A-Z]')})
                  ],
                )),
            const SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: CustomTextField(
                hintText: 'Номер',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                inputFormatters: [
                  MaskTextInputFormatter(
                      mask: '######', filter: {"#": RegExp(r'[0-9]')})
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
