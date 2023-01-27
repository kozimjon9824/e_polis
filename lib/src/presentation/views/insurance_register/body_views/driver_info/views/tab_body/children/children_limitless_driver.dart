import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../../core/themes/app_text_styles.dart';
import '../../../../../../../../data/models/input_driver/response/driver_passport_response.dart';
import '../../../../../../../components/custom_text_field.dart';
import '../../../../../../../components/drop_down_button.dart';
import '../../../../../widgets/widgets.dart';

class LimitlessDriverChild1Body extends StatelessWidget {
  const LimitlessDriverChild1Body(
      {Key? key,
      required this.seriesController,
      required this.numberController,
      required this.dateController,
      this.seriesFocus,
      this.numberFocus,
      this.dateFocus})
      : super(key: key);
  final TextEditingController seriesController;
  final TextEditingController numberController;
  final TextEditingController dateController;
  final FocusNode? seriesFocus;
  final FocusNode? numberFocus;
  final FocusNode? dateFocus;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Паспорта/ID карта', style: AppTextStyles.styleW600S14Grey9),
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
                  textCapitalization: TextCapitalization.characters,
                  textEditingController: seriesController,
                  focusNode: seriesFocus,
                  onFieldSubmitted: (_) => numberFocus!.requestFocus(),
                  validator: (value) =>
                      value!.isEmpty ? 'Must not be empty' : null,
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
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                textEditingController: numberController,
                focusNode: numberFocus,
                onFieldSubmitted: (_) => dateFocus!.requestFocus(),
                validator: (value) =>
                    value!.isEmpty ? 'Must not be empty' : null,
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
          keyboardType: TextInputType.datetime,
          textEditingController: dateController,
          textInputAction: TextInputAction.done,
          focusNode: dateFocus,
          validator: (value) => value!.isEmpty ? 'Must not be empty' : null,
          inputFormatters: [
            MaskTextInputFormatter(
                mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')})
          ],
        ),
      ],
    );
  }
}

class LimitlessDriverChild2Body extends StatelessWidget {
  const LimitlessDriverChild2Body(
      {Key? key,
      this.data,
      required this.licenseSeries,
      required this.licenseNumber,
      required this.licenseDate,
      this.dropDownValues = const [],
      this.onChange})
      : super(key: key);

  final DriverPassportInputResponse? data;
  final TextEditingController licenseSeries;
  final TextEditingController licenseNumber;
  final TextEditingController licenseDate;
  final List<String> dropDownValues;
  final Function(String? value)? onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(height: 16, color: AppColors.divider, thickness: 1),
        const SizedBox(height: 8),
        DropDownButton<String>(
            label: 'Родство',
            items: dropDownValues
                .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(item, style: AppTextStyles.styleW400S14Grey6)))
                .toList(),
            onChanged: onChange),
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
                  textEditingController: licenseSeries,
                  textCapitalization: TextCapitalization.characters,
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
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                textEditingController: licenseNumber,
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
          keyboardType: TextInputType.datetime,
          textEditingController: licenseDate,
          inputFormatters: [
            MaskTextInputFormatter(
                mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')})
          ],
          textInputAction: TextInputAction.done,
        ),
        const SizedBox(height: 8),
        TitleSubtitle(title: 'Ф.И.О', subtitle: data?.fullName ?? ''),
      ],
    );
  }
}
