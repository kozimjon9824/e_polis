import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:e_polis/src/presentation/components/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../components/custom_button.dart';
import '../../components/custom_mask.dart';
import '../../components/drop_down_button.dart';

class AddPolisPage extends StatelessWidget {
  const AddPolisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Добавить полис')),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        children: [
          Text('Вы можете добавить полис ',
              style: AppTextStyles.styleW700S18Grey9
                  .copyWith(fontWeight: FontWeight.w600)),
          const SizedBox(height: 22),
          DropDownButton<String>(
            label: 'Тип полиса',
            hint: 'Выберите тип полиса',
            items: ['one', 'two']
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
          const SizedBox(height: 14),
          CustomTextField(
            label: 'Номер транспорта',
            hintText: '01 A 000 AA or 01 777 AAA',
            textInputAction: TextInputAction.next,
            inputFormatters: [SpecialMaskTextInputFormatter()],
          ),
          const SizedBox(height: 14),
          CustomTextField(
            label: 'Дата окончания',
            hintText: 'дд/мм/гггг',
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.datetime,
            inputFormatters: [
              MaskTextInputFormatter(
                  mask: '##/##/####',
                  filter: {"#": RegExp(r'[0-9]'), "&": RegExp(r'[A-Z]')})
            ],
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomButton(
          text: 'Добавить полис',
          onTap: () {},
        ),
      ),
    );
  }
}
