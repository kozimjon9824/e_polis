import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../../../../../../../generated/l10n.dart';
import '../../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../../core/themes/app_text_styles.dart';
import '../../../../../../../../data/models/input_driver/response/driver_passport_response.dart';
import '../../../../../../../components/custom_text_field.dart';
import '../../../../../../../components/drop_down_button.dart';
import '../../../../../widgets/widgets.dart';

class LimitlessDriverChild1Body extends StatelessWidget {
  const LimitlessDriverChild1Body({
    Key? key,
    required this.seriesController,
    required this.numberController,
    required this.dateController,
    this.seriesFocus,
    this.numberFocus,
    this.dateFocus,
    required this.onRequest,
    required this.readOnly,
  }) : super(key: key);
  final TextEditingController seriesController;
  final TextEditingController numberController;
  final TextEditingController dateController;
  final FocusNode? seriesFocus;
  final FocusNode? numberFocus;
  final FocusNode? dateFocus;
  final Function() onRequest;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context).passport,
          style: AppTextStyles.styleW600S14Grey9,
        ),
        const SizedBox(height: 6),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                onFieldSubmitted: (_) => numberFocus!.requestFocus(),
                readOnly: readOnly,
                validator: (value) => value!.length < 2
                    ? AppLocalizations.of(context).invalidLength
                    : null,
                inputFormatters: [
                  MaskTextInputFormatter(
                    mask: '##',
                    initialText: seriesController.text,
                    filter: {"#": RegExp(r'[A-Z]')},
                  )
                ],
                onChange: (value) {
                  if (value.length == 2) {
                    numberFocus!.requestFocus();
                  }
                },
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: CustomTextField(
                hintText: AppLocalizations.of(context).number,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                textEditingController: numberController,
                focusNode: numberFocus,
                onFieldSubmitted: (_) => dateFocus!.requestFocus(),
                readOnly: readOnly,
                validator: (value) => value!.length < 6
                    ? AppLocalizations.of(context).invalidLength
                    : null,
                inputFormatters: [
                  MaskTextInputFormatter(
                    mask: '#######',
                    initialText: numberController.text,
                    filter: {"#": RegExp(r'\d')},
                  )
                ],
                onChange: (value) {
                  if (value.length == 7) {
                    dateFocus!.requestFocus();
                  }
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        CustomDatePickTextField(
          label: AppLocalizations.of(context).dateOfBirth,
          hintText: AppLocalizations.of(context).ddMMYY,
          keyboardType: TextInputType.datetime,
          textEditingController: dateController,
          textInputAction: TextInputAction.done,
          focusNode: dateFocus,
          dateFormat: 'dd.MM.yyyy',
          readOnly: readOnly,
          validator: (value) => value!.length < 10
              ? AppLocalizations.of(context).invalidLength
              : null,
          inputFormatters: [
            MaskTextInputFormatter(
              mask: '##.##.####',
              initialText: dateController.text.replaceAll('.', ''),
              filter: {"#": RegExp(r'\d')},
            )
          ],
          onChange: (value) {
            if (value.length == 10) {
              dateFocus!.unfocus();
              onRequest();
            }
          },
          onDate: () {
            dateFocus!.unfocus();
            onRequest();
          },
        ),
      ],
    );
  }
}

class LimitlessDriverChild2Body extends StatelessWidget {
  const LimitlessDriverChild2Body({
    Key? key,
    this.data,
    required this.licenseSeries,
    required this.licenseNumber,
    required this.licenseDate,
    this.dropDownValues = const [],
    this.onChange,
    this.licenseSeriesNode,
    this.licenseNumberNode,
    this.licenseDateNode,
  }) : super(key: key);

  final DriverPassportInputResponse? data;
  final TextEditingController licenseSeries;
  final TextEditingController licenseNumber;
  final TextEditingController licenseDate;
  final List<String> dropDownValues;
  final Function(String? value)? onChange;
  final FocusNode? licenseSeriesNode;
  final FocusNode? licenseNumberNode;
  final FocusNode? licenseDateNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(height: 16, color: AppColors.divider, thickness: 1),
        const SizedBox(height: 8),
        DropDownButton<String>(
          label: AppLocalizations.of(context).relationShip,
          errorText: AppLocalizations.of(context).select,
          items: dropDownValues
              .map(
                (item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(item, style: AppTextStyles.styleW400S14Grey6)),
              )
              .toList(),
          onChanged: onChange,
        ),
        const SizedBox(height: 16),
        Text(
          AppLocalizations.of(context).driverLicense,
          style: AppTextStyles.styleW600S14Grey9,
        ),
        const SizedBox(height: 6),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: CustomTextField(
                hintText: AppLocalizations.of(context).series,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                focusNode: licenseSeriesNode,
                textEditingController: licenseSeries,
                textCapitalization: TextCapitalization.characters,
                onFieldSubmitted: (_) => licenseNumberNode!.requestFocus(),
                readOnly: data != null,
                validator: (value) => value!.length < 2
                    ? AppLocalizations.of(context).invalidLength
                    : null,
                inputFormatters: [
                  MaskTextInputFormatter(
                    mask: '##',
                    initialText: licenseSeries.text,
                    filter: {"#": RegExp(r'[A-Z]')},
                  )
                ],
                onChange: (value) {
                  if (value.length == 2) {
                    licenseNumberNode!.requestFocus();
                  }
                },
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: CustomTextField(
                hintText: AppLocalizations.of(context).number,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                textEditingController: licenseNumber,
                focusNode: licenseNumberNode,
                onFieldSubmitted: (_) => licenseDateNode!.requestFocus(),
                readOnly: data != null,
                validator: (value) => value!.length < 6
                    ? AppLocalizations.of(context).invalidLength
                    : null,
                inputFormatters: [
                  MaskTextInputFormatter(
                    mask: '#######',
                    initialText: licenseNumber.text,
                    filter: {"#": RegExp(r'\d')},
                  )
                ],
                onChange: (value) {
                  if (value.length == 7) {
                    licenseDateNode!.requestFocus();
                  }
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        CustomDatePickTextField(
          label: AppLocalizations.of(context).date,
          hintText: AppLocalizations.of(context).ddMMYY,
          keyboardType: TextInputType.datetime,
          textEditingController: licenseDate,
          focusNode: licenseDateNode,
          onFieldSubmitted: (_) => licenseDateNode!.unfocus(),
          readOnly: data != null,
          validator: (value) => value!.length < 10
              ? AppLocalizations.of(context).invalidLength
              : null,
          dateFormat: 'dd.MM.yyyy',
          inputFormatters: [
            MaskTextInputFormatter(
              mask: '##.##.####',
              initialText: licenseDate.text.replaceAll('.', ''),
              filter: {"#": RegExp(r'\d')},
            )
          ],
          onChange: (value) {
            if (value.length == 10) {
              licenseDateNode!.unfocus();
            }
          },
          textInputAction: TextInputAction.done,
          onDate: () {},
        ),
        const SizedBox(height: 8),
        TitleSubtitle(
          title: AppLocalizations.of(context).fio,
          subtitle: data?.fullName ?? '',
        ),
      ],
    );
  }
}
