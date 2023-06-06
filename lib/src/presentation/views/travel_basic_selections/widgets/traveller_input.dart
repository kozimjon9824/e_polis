import 'package:e_polis/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../components/custom_text_field.dart';
import '../../insurance_register/widgets/animated_container.dart';

class TravellerInput extends StatelessWidget {
  const TravellerInput({
    Key? key,
    this.onClear,
    required this.dateController,
    this.dateFocus,
  }) : super(key: key);

  final TextEditingController dateController;
  final FocusNode? dateFocus;
  final Function()? onClear;

  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context);
    return AnimatedRoundContainer(
      title: '1-Путешественник',
      padding: const EdgeInsets.fromLTRB(10, 8, 10, 16),
      padding2: const EdgeInsets.fromLTRB(10, 0, 10, 16),
      clearText: local.delete,
      onClear: onClear,
      children: [
        CustomDatePickTextField(
          label: AppLocalizations.of(context).dateOfBirth,
          hintText: AppLocalizations.of(context).ddMMYY,
          keyboardType: TextInputType.datetime,
          textEditingController: dateController,
          textInputAction: TextInputAction.done,
          focusNode: dateFocus,
          onFieldSubmitted: (_) => dateFocus?.unfocus(),
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
              dateFocus?.unfocus();
            }
          },
          onDate: () {
            dateFocus?.unfocus();
          },
        ),
      ],
    );
  }
}
