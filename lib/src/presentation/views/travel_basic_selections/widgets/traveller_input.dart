import 'package:e_polis/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../components/custom_text_field.dart';
import '../../insurance_register/widgets/animated_container.dart';

class TravellerInput extends StatelessWidget {
  const TravellerInput({
    Key? key,
    this.onClear,
    this.dateController,
    this.dateFocus,
    required this.index,
    this.onChange,
    this.value,
  }) : super(key: key);

  final TextEditingController? dateController;
  final FocusNode? dateFocus;
  final Function()? onClear;
  final Function(String? value)? onChange;
  final String? value;
  final int index;

  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: AnimatedRoundContainer(
        title: '$index-${AppLocalizations.of(context).singleTraveller}',
        padding: const EdgeInsets.fromLTRB(10, 8, 10, 16),
        padding2: const EdgeInsets.fromLTRB(10, 0, 10, 16),
        clearText: local.delete,
        onClear: onClear,
        children: [
          CustomDatePickTextField(
            label: AppLocalizations.of(context).dateOfBirth,
            hintText: AppLocalizations.of(context).ddMMYY,
            keyboardType: TextInputType.datetime,
            textInputAction: TextInputAction.done,
            // initialValue: widget.value,
            textEditingController: dateController,
            // readOnly: true,
            focusNode: dateFocus,
            onFieldSubmitted: (_) => dateFocus?.unfocus(),
            validator: (value) => value!.isEmpty
                ? AppLocalizations.of(context).invalidLength
                : null,
            dateFormat: 'dd.MM.yyyy',
            inputFormatters: [
              MaskTextInputFormatter(
                mask: '##.##.####',
                initialText: value?.replaceAll('', ''),
                type: MaskAutoCompletionType.eager,
                filter: {"#": RegExp(r'\d')},
              )
            ],
            onChange: (value) {
              onChange!(value);
              if (value.length == 10) {
                dateFocus?.unfocus();
              }
            },
            onDate: (value) {
              onChange!(value);
              dateFocus?.unfocus();
            },
          ),
        ],
      ),
    );
  }
}
