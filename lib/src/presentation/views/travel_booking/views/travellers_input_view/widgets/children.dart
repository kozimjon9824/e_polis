import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../../../../../../../generated/l10n.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../../components/custom_mask.dart';
import '../../../../../components/custom_text_field.dart';

class TravellerInputs extends StatelessWidget {
  const TravellerInputs({
    Key? key,
    required this.seriesController,
    required this.numberController,
    required this.dateController,
    required this.innController,
    required this.fioController,
    this.seriesFocus,
    this.numberFocus,
    this.dateFocus,
    this.innFocus,
    this.fioFocus,
    required this.onRequest,
    required this.readOnly,
  }) : super(key: key);

  final TextEditingController seriesController;
  final TextEditingController numberController;
  final TextEditingController dateController;
  final TextEditingController innController;
  final TextEditingController fioController;
  final FocusNode? seriesFocus;
  final FocusNode? numberFocus;
  final FocusNode? dateFocus;
  final FocusNode? innFocus;
  final FocusNode? fioFocus;

  final Function() onRequest;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomDatePickTextField(
          label: AppLocalizations.of(context).dateOfBirth,
          hintText: AppLocalizations.of(context).ddMMYY,
          keyboardType: TextInputType.datetime,
          textEditingController: dateController,
          textInputAction: TextInputAction.done,
          focusNode: dateFocus,
          onFieldSubmitted: (_) => seriesFocus?.requestFocus(),
          readOnly: readOnly,
          validator: (value) => value!.isEmpty
              ? AppLocalizations.of(context).invalidLength
              : null,
          dateFormat: 'dd.MM.yyyy',
          inputFormatters: [
            MaskTextInputFormatter(
              mask: '##.##.####',
              initialText: dateController.text.replaceAll('', ''),
              type: MaskAutoCompletionType.eager,
              filter: {"#": RegExp(r'\d')},
            )
          ],
          onChange: (value) {
            if (value.length == 10) {
              seriesFocus?.requestFocus();
              // onRequest();
            }
          },
          onDate: () {
            seriesFocus?.requestFocus();
            // onRequest();
          },
        ),
        const SizedBox(height: 16),
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
                onFieldSubmitted: (_) => numberFocus?.requestFocus(),
                readOnly: readOnly,
                validator: (value) => value!.length < 2
                    ? AppLocalizations.of(context).invalidLength
                    : null,
                inputFormatters: [
                  MaskTextInputFormatter(
                    mask: '##',
                    initialText: seriesController.text,
                    filter: {"#": RegExp(r'[a-zA-Z]')},
                  ),
                  UpperCaseTextFormatter(),
                ],
                onChange: (value) {
                  if (value.length == 2) {
                    numberFocus?.requestFocus();
                    if (dateController.text.length == 10 &&
                        numberController.text.length == 2) {
                      onRequest();
                    }
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
                onFieldSubmitted: (_) => dateFocus?.requestFocus(),
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
                    dateFocus?.requestFocus();
                    if (dateController.text.length == 10 &&
                        seriesController.text.length == 2) {
                      onRequest();
                    }
                  }
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        CustomTextField(
          hintText: 'ЖШШИР',
          keyboardType: TextInputType.number,
          label: 'ЖШШИР',
          textInputAction: TextInputAction.next,
          textEditingController: innController,
          focusNode: innFocus,
          onFieldSubmitted: (_) => fioFocus?.requestFocus(),
          readOnly: readOnly,
          validator: (value) => value!.length < 13
              ? AppLocalizations.of(context).invalidLength
              : null,
          inputFormatters: [
            MaskTextInputFormatter(
              mask: '#############',
              initialText: numberController.text,
              filter: {"#": RegExp(r'\d')},
            )
          ],
          onChange: (value) {
            if (value.length == 13) {
              fioFocus?.requestFocus();
              if (dateController.text.length == 10 &&
                  seriesController.text.length == 2) {
                // onRequest();
              }
            }
          },
        ),
        const SizedBox(height: 16),
        CustomTextField(
          hintText: 'Ф.И.О',
          keyboardType: TextInputType.number,
          label: 'Ф.И.О',
          textInputAction: TextInputAction.next,
          textEditingController: fioController,
          focusNode: fioFocus,
          onFieldSubmitted: (_) => fioFocus?.unfocus(),
          readOnly: readOnly,
          validator: (value) => value!.length < 6
              ? AppLocalizations.of(context).invalidLength
              : null,
          inputFormatters: [
            MaskTextInputFormatter(
              mask: '#############',
              initialText: numberController.text,
              filter: {"#": RegExp(r'\d')},
            )
          ],
          onChange: (value) {
            if (value.length == 13) {
              fioFocus?.unfocus();
              if (dateController.text.length == 10 &&
                  seriesController.text.length == 2) {
                onRequest();
              }
            }
          },
        ),
      ],
    );
  }
}
