import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../../../../../../../generated/l10n.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../../components/custom_mask.dart';
import '../../../../../components/custom_text_field.dart';

class TravellerInputs extends StatelessWidget {
  const TravellerInputs({
    Key? key,
    required this.onRequest,
    required this.initialValueBD,
    required this.initialValueIDSeries,
    required this.initialValueIDNumber,
    required this.onChange1,
    required this.onChange2,
    required this.onChange3,
  }) : super(key: key);

  final String? initialValueBD;
  final String? initialValueIDSeries;
  final String? initialValueIDNumber;

  final Function(String value) onChange1;
  final Function(String value) onChange2;
  final Function(String value) onChange3;

  final Function() onRequest;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomDatePickTextField(
          readOnly: true,
          label: AppLocalizations.of(context).dateOfBirth,
          hintText: AppLocalizations.of(context).ddMMYY,
          hideCalendar: true,
          keyboardType: TextInputType.datetime,
          // textEditingController: dateController,
          textInputAction: TextInputAction.next,
          // focusNode: dateFocus,
          // onFieldSubmitted: (_) => seriesFocus?.requestFocus(),

          validator: (value) => value!.isEmpty
              ? AppLocalizations.of(context).invalidLength
              : null,
          dateFormat: 'dd.MM.yyyy',
          initialValue: initialValueBD,
          inputFormatters: [
            MaskTextInputFormatter(
              mask: '##.##.####',
              initialText: initialValueBD?.replaceAll('', ''),
              type: MaskAutoCompletionType.eager,
              filter: {"#": RegExp(r'\d')},
            )
          ],
          onChange: (value) {
            if (value.length == 10) {
              // seriesFocus?.requestFocus();
              // onRequest();
            }
            onChange1(value);
          },
          onDate: (value) {
            onChange1(value);
            // seriesFocus?.requestFocus();
            // onRequest();
          },
        ),
        const SizedBox(height: 16),
        Text(
          AppLocalizations.of(context).worldPassport,
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
                // textEditingController: seriesController,
                // focusNode: seriesFocus,
                // onFieldSubmitted: (_) => numberFocus?.requestFocus(),
                validator: (value) => value!.length < 2
                    ? AppLocalizations.of(context).invalidLength
                    : null,
                initialValue: initialValueIDSeries,
                inputFormatters: [
                  MaskTextInputFormatter(
                    mask: '##',
                    initialText: initialValueIDSeries,
                    filter: {"#": RegExp(r'[a-zA-Z]')},
                  ),
                  UpperCaseTextFormatter(),
                ],
                onChange: (value) {
                  onChange2(value);
                  if (value.length == 2) {
                    onRequest();
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
                // textEditingController: numberController,
                // focusNode: numberFocus,
                // onFieldSubmitted: (_) => dateFocus?.requestFocus(),
                initialValue: initialValueIDNumber,
                validator: (value) => value!.length < 6
                    ? AppLocalizations.of(context).invalidLength
                    : null,
                inputFormatters: [
                  MaskTextInputFormatter(
                    mask: '#######',
                    initialText: initialValueIDNumber,
                    filter: {"#": RegExp(r'\d')},
                  ),
                ],
                onChange: (value) {
                  onChange3(value);
                  if (value.length == 7) {
                    onRequest();
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TravellerInputs2 extends StatelessWidget {
  const TravellerInputs2(
      {Key? key,
      required this.onRequest,
      required this.initialValueINN,
      required this.initialValueFirstName,
      required this.initialValueLastName,
      required this.onChange4,
      required this.onChange5,
      required this.onChange6,
      this.isDisable = false})
      : super(key: key);

  final String? initialValueINN;
  final String? initialValueFirstName;
  final String? initialValueLastName;
  final bool isDisable;

  final Function(String value) onChange4;
  final Function(String value) onChange5;
  final Function(String value) onChange6;
  final Function() onRequest;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: !isDisable,
          child: CustomTextField(
            hintText: '12345678901234',
            keyboardType: TextInputType.number,
            label: AppLocalizations.of(context).jshshr,
            textInputAction: TextInputAction.next,
            readOnly: isDisable,
            // textEditingController: innController,
            // focusNode: innFocus,
            // onFieldSubmitted: (_) => fioFocus?.requestFocus(),
            initialValue: initialValueINN,
            validator: (value) => value!.length < 14
                ? AppLocalizations.of(context).invalidLength
                : null,
            inputFormatters: [
              MaskTextInputFormatter(
                mask: '##############',
                // initialText: numberController.text,
                initialText: initialValueINN,
                filter: {"#": RegExp(r'\d')},
              )
            ],
            onChange: (value) {
              onChange4(value);
              // if (value.length == 13) {
              //   fioFocus?.requestFocus();
              //   if (dateController.text.length == 10 &&
              //       seriesController.text.length == 2) {
              //     // onRequest();
              //   }
              // }
            },
          ),
        ),
        Visibility(visible: !isDisable, child: const SizedBox(height: 16)),
        CustomTextField(
          hintText: AppLocalizations.of(context).firstName,
          keyboardType: TextInputType.name,
          label: AppLocalizations.of(context).firstName,
          textInputAction: TextInputAction.next,
          readOnly: isDisable,

          initialValue: initialValueFirstName,
          // textEditingController: fioController,
          // focusNode: fioFocus,
          // onFieldSubmitted: (_) => fioFocus?.unfocus(),
          validator: (value) => value!.isEmpty
              ? AppLocalizations.of(context).invalidLength
              : null,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z ]')),
            UpperCaseTextFormatter(),
            // MaskTextInputFormatter(
            //   mask: '#############',
            //   initialText: numberController.text,
            //   filter: {"#": RegExp(r'\d')},
            // )
          ],
          onChange: (value) {
            onChange5(value);
            // if (value.length == 13) {
            //   fioFocus?.unfocus();
            //   if (dateController.text.length == 10 &&
            //       seriesController.text.length == 2) {
            //     onRequest();
            //   }
            // }
          },
        ),
        const SizedBox(height: 16),
        CustomTextField(
          hintText: AppLocalizations.of(context).lastName,
          keyboardType: TextInputType.name,
          label: AppLocalizations.of(context).lastName,
          textInputAction: TextInputAction.done,
          initialValue: initialValueLastName,
          readOnly: isDisable,

          // textEditingController: fioController,
          // focusNode: fioFocus,
          // onFieldSubmitted: (_) => fioFocus?.unfocus(),
          validator: (value) => value!.isEmpty
              ? AppLocalizations.of(context).invalidLength
              : null,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z ]')),
            UpperCaseTextFormatter(),

            // MaskTextInputFormatter(
            //   mask: '#############',
            //   initialText: numberController.text,
            //   filter: {"#": RegExp(r'\d')},
            // )
          ],
          onChange: (value) {
            onChange6(value);
            // if (value.length == 13) {
            //   fioFocus?.unfocus();
            //   if (dateController.text.length == 10 &&
            //       seriesController.text.length == 2) {
            //     onRequest();
            //   }
            // }
          },
        ),
      ],
    );
  }
}
