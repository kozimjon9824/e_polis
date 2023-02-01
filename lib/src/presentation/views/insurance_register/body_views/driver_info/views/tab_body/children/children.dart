import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../../../../../../../generated/l10n.dart';
import '../../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../../core/themes/app_text_styles.dart';
import '../../../../../../../../data/models/input_driver/response/driver_passport_response.dart';
import '../../../../../../../components/custom_text_field.dart';
import '../../../../../../../components/drop_down_button.dart';
import '../../../../../widgets/widgets.dart';

class Child1Body extends StatelessWidget {
  const Child1Body(
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
        Text(AppLocalizations.of(context).passport,
            style: AppTextStyles.styleW600S14Grey9),
        const SizedBox(height: 6),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                flex: 1,
                child: CustomTextField(
                  hintText: AppLocalizations.of(context).series,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  textCapitalization: TextCapitalization.characters,
                  textEditingController: seriesController,
                  focusNode: seriesFocus,
                  onFieldSubmitted: (_) => numberFocus?.requestFocus(),
                  validator: (value) => value!.isEmpty
                      ? AppLocalizations.of(context).notDoEmpty
                      : null,
                  inputFormatters: [
                    MaskTextInputFormatter(
                        mask: '##', filter: {"#": RegExp(r'[A-Z]')})
                  ],
                )),
            const SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: CustomTextField(
                hintText: AppLocalizations.of(context).number,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                textEditingController: numberController,
                focusNode: numberFocus,
                onFieldSubmitted: (_) => dateFocus?.requestFocus(),
                validator: (value) => value!.isEmpty
                    ? AppLocalizations.of(context).notDoEmpty
                    : null,
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
          label: AppLocalizations.of(context).dateOfBirth,
          hintText: AppLocalizations.of(context).ddMMYY,
          keyboardType: TextInputType.datetime,
          textEditingController: dateController,
          textInputAction: TextInputAction.done,
          focusNode: dateFocus,
          onFieldSubmitted: (_) => dateFocus?.unfocus(),
          validator: (value) =>
              value!.isEmpty ? AppLocalizations.of(context).notDoEmpty : null,
          inputFormatters: [
            MaskTextInputFormatter(
                mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')})
          ],
        ),
      ],
    );
  }
}

class Child2Body extends StatelessWidget {
  const Child2Body(
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
        TitleSubtitle(
            title: AppLocalizations.of(context).fio,
            subtitle: data?.fullName ?? ''),
        const SizedBox(height: 8),
        DropDownButton<String>(
            label: AppLocalizations.of(context).relationShip,
            items: dropDownValues
                .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(item, style: AppTextStyles.styleW400S14Grey6)))
                .toList(),
            onChanged: onChange),
        const SizedBox(height: 16),
        Text(AppLocalizations.of(context).driverLicense,
            style: AppTextStyles.styleW600S14Grey9),
        const SizedBox(height: 6),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                flex: 1,
                child: CustomTextField(
                  hintText: AppLocalizations.of(context).series,
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
                hintText: AppLocalizations.of(context).number,
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
          label: AppLocalizations.of(context).date,
          hintText: AppLocalizations.of(context).ddMMYY,
          keyboardType: TextInputType.datetime,
          textEditingController: licenseDate,
          inputFormatters: [
            MaskTextInputFormatter(
                mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')})
          ],
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }
}
