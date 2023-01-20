import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../core/themes/app_text_styles.dart';
import '../../../../../../components/custom_button.dart';
import '../../../../../../components/custom_text_field.dart';
import '../../../../../../components/drop_down_button.dart';
import '../../../../widgets/animated_container.dart';
import '../../../../widgets/widgets.dart';

class DriverInputDetailsBody extends StatelessWidget {
  const DriverInputDetailsBody({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        children: [
          AnimatedRoundContainer(
            title: '$index-Водитель',
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            padding2: const EdgeInsets.fromLTRB(10, 0, 10, 16),
            showChildren2: true,
            clearText: 'Удалить',
            children2: [
              const Divider(height: 16, color: AppColors.divider, thickness: 1),
              const TitleSubtitle(
                  title: 'Ф.И.О', subtitle: 'Мамажанов Илхомжон Комилович'),
              const SizedBox(height: 8),
              DropDownButton<String>(
                label: 'Родство',
                hint: '',
                items: ['Брат', 'sestra']
                    .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: AppTextStyles.styleW400S14Grey6,
                        )))
                    .toList(),
                onChanged: (value) {},
                onSaved: (value) {},
              ),
              const SizedBox(height: 16),
              const Text('Водительские права',
                  style: AppTextStyles.styleW600S14Grey9),
              const SizedBox(height: 6),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                      flex: 1,
                      child: CustomTextField(
                        hintText: 'Серия',
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        inputFormatters: [
                          MaskTextInputFormatter(
                              mask: '##', filter: {"#": RegExp(r'[A-Z]')})
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
                            mask: '#######', filter: {"#": RegExp(r'[0-9]')})
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              CustomTextField(
                label: 'Дата',
                hintText: 'ДД/ММ/ГГГГ',
                inputFormatters: [
                  MaskTextInputFormatter(
                      mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')})
                ],
                textInputAction: TextInputAction.next,
              ),
            ],
            children: [
              const Text('Паспорта/ID карта',
                  style: AppTextStyles.styleW600S14Grey9),
              const SizedBox(height: 6),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                      flex: 1,
                      child: CustomTextField(
                        hintText: 'Серия',
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        inputFormatters: [
                          MaskTextInputFormatter(
                              mask: '##', filter: {"#": RegExp(r'[A-Z]')})
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
                            mask: '#######', filter: {"#": RegExp(r'[0-9]')})
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              CustomTextField(
                label: 'Дата рождения',
                hintText: 'ДД/ММ/ГГГГ',
                inputFormatters: [
                  MaskTextInputFormatter(
                      mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')})
                ],
                textInputAction: TextInputAction.next,
              ),
            ],
          ),
          const SizedBox(height: 20),
          CustomOutlineButton(text: 'Добавить водителя', onTap: () {}),
          const SizedBox(height: 24),
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
        child: CustomButton(
          text: 'Продолжить',
          onTap: () {},
        ),
      ),
    );
  }
}
