import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../../../../../../../generated/l10n.dart';
import '../../../../../../core/themes/app_icons.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../../components/custom_text_field.dart';

class ApplicantInputs extends StatelessWidget {
  const ApplicantInputs({
    Key? key,
    required this.fioController,
    this.fioFocus,
    this.onRequest,
    required this.addressController,
    required this.phoneController,
    this.addressFocus,
    this.phoneFocus,
  }) : super(key: key);

  final TextEditingController fioController;
  final TextEditingController addressController;
  final TextEditingController phoneController;
  final FocusNode? fioFocus;
  final FocusNode? addressFocus;
  final FocusNode? phoneFocus;

  final Function()? onRequest;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          hintText: 'Ф.И.О',
          keyboardType: TextInputType.name,
          label: 'Ф.И.О',
          textInputAction: TextInputAction.next,
          textEditingController: fioController,
          focusNode: fioFocus,
          onFieldSubmitted: (_) => addressFocus?.requestFocus(),
          validator: (value) => value!.isEmpty
              ? AppLocalizations.of(context).invalidLength
              : null,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z ]')),
            // MaskTextInputFormatter(
            //   mask: '#############',
            //   initialText: numberController.text,
            //   filter: {"#": RegExp(r'\d')},
            // )
          ],
          // onChange: (value) {
          //   if (value.length == 13) {
          //     fioFocus?.unfocus();
          //     if (dateController.text.length == 10 &&
          //         seriesController.text.length == 2) {
          //       onRequest();
          //     }
          //   }
          // },
        ),
        const SizedBox(height: 16),
        CustomTextField(
          hintText: 'Ул. Амира темура, Ташкент',
          keyboardType: TextInputType.text,
          label: 'Адрес',
          textInputAction: TextInputAction.next,
          textEditingController: addressController,
          focusNode: addressFocus,
          onFieldSubmitted: (_) => phoneFocus?.requestFocus(),
          validator: (value) => value!.isEmpty
              ? AppLocalizations.of(context).invalidLength
              : null,
          // inputFormatters: [
          //   MaskTextInputFormatter(
          //     mask: '#############',
          //     initialText: numberController.text,
          //     filter: {"#": RegExp(r'\d')},
          //   )
          // ],
          onChange: (value) {
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
        phoneCustomTextField(context),
      ],
    );
  }

  Widget phoneCustomTextField(BuildContext context) {
    return CustomPrefixTextField(
      label: AppLocalizations.of(context).phoneNumber,
      hintText: '(--) --- -- --',
      textInputAction: TextInputAction.done,
      textEditingController: phoneController,
      textInputType: TextInputType.phone,
      focusNode: phoneFocus,
      validator: (value) => value!.length != 14
          ? AppLocalizations.of(context).invalidLength
          : null,
      inputFormatters: [
        MaskTextInputFormatter(
          mask: '(##) ### ## ##',
          type: MaskAutoCompletionType.eager,
          filter: {"#": RegExp(r'\d')},
        )
      ],
      onChange: (value) {
        if (value.length == 14) {
          phoneFocus!.unfocus();
        }
      },
      prefixIcon: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 30),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(AppIcons.uz, height: 16, width: 22),
            const SizedBox(width: 4),
            const Text('+998', style: AppTextStyles.styleW500S14Grey9)
          ],
        ),
      ),
    );
  }
}
