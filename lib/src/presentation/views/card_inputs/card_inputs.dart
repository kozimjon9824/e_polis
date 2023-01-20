import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';

class CardInputsPage extends StatelessWidget {
  const CardInputsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Оплата')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: [
          const Text('Пожалуйста, введите данные карты для оплаты',
              style: AppTextStyles.styleW600S16Grey9),
          const SizedBox(height: 22),
          CustomTextField(
            label: 'Номер карты',
            hintText: '1234567890123',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,
            inputFormatters: [
              MaskTextInputFormatter(
                  mask: '#### #### #### ####', filter: {"#": RegExp(r'[0-9]')})
            ],
          ),
          const SizedBox(height: 16),
          CustomTextField(
            label: 'Срок действия карты',
            hintText: 'ММ/ГГ',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.datetime,
            inputFormatters: [
              MaskTextInputFormatter(
                  mask: '##/##', filter: {"#": RegExp(r'[0-9]')})
            ],
          ),
          const SizedBox(height: 16),
          const CustomTextField(
            label: 'Имя владельца',
            hintText: 'Абдулла Абдуллаев',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 16),
          CustomTextField(
            label: 'Сумма оплаты',
            hintText: '',
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,
            inputFormatters: [
              MaskTextInputFormatter(
                  mask: '########', filter: {"#": RegExp(r'[0-9]')})
            ],
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
        child: CustomButton(
          text: 'ОПЛАТИТЬ',
          onTap: () {},
        ),
      ),
    );
  }
}
