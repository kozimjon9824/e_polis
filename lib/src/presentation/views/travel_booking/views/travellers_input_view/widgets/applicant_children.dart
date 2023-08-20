import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../../../../../../../generated/l10n.dart';
import '../../../../../../core/themes/app_icons.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../../components/custom_mask.dart';
import '../../../../../components/custom_text_field.dart';

class ApplicantInputs extends StatelessWidget {
  const ApplicantInputs({
    Key? key,
    this.onRequest,
    required this.addressController,
    required this.phoneController,
    required this.firstNameController,
    required this.lastNameController,
    required this.dateController,
    required this.licenseSeries,
    required this.licenseNumber,
    required this.innController,
    required this.addressFocus,
    required this.phoneFocus,
    required this.firstNameFocus,
    required this.lastNameFocus,
    required this.dateFocus,
    required this.licenseSeriesNode,
    required this.licenseNumberNode,
    required this.innFocusNode,
    this.isDisable = false,
    this.readOnlyBirthDate = false,
  }) : super(key: key);

  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController addressController;
  final TextEditingController phoneController;
  final TextEditingController dateController;
  final TextEditingController licenseSeries;
  final TextEditingController licenseNumber;
  final TextEditingController innController;

  final FocusNode? firstNameFocus;
  final FocusNode? lastNameFocus;
  final FocusNode? addressFocus;
  final FocusNode? phoneFocus;
  final FocusNode? dateFocus;
  final FocusNode? licenseSeriesNode;
  final FocusNode? licenseNumberNode;
  final FocusNode? innFocusNode;
  final bool isDisable;
  final bool readOnlyBirthDate;

  final Function()? onRequest;

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
          textInputAction: TextInputAction.next,
          focusNode: dateFocus,
          readOnly: readOnlyBirthDate,
          onFieldSubmitted: (_) => licenseSeriesNode?.requestFocus(),
          validator: (value) => value!.isEmpty
              ? AppLocalizations.of(context).invalidLength
              : null,
          dateFormat: 'dd.MM.yyyy',
          inputFormatters: [
            MaskTextInputFormatter(
              mask: '##.##.####',
              type: MaskAutoCompletionType.eager,
              filter: {"#": RegExp(r'\d')},
            )
          ],
          onChange: (value) {
            if (value.length == 10) {
              licenseSeriesNode?.requestFocus();
              onRequest!();
            }
          },
          onDate: (value) {
            licenseSeriesNode?.requestFocus();
            onRequest!();
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
                textEditingController: licenseSeries,
                focusNode: licenseSeriesNode,
                textCapitalization: TextCapitalization.characters,
                onFieldSubmitted: (_) => licenseNumberNode!.requestFocus(),
                // readOnly: data != null,
                validator: (value) => value!.length < 2
                    ? AppLocalizations.of(context).invalidLength
                    : null,
                inputFormatters: [
                  MaskTextInputFormatter(
                    mask: '##',
                    initialText: licenseSeries.text,
                    filter: {"#": RegExp(r"[a-zA-Z]")},
                  ),
                  UpperCaseTextFormatter(),
                ],
                onChange: (value) {
                  if (value.length == 2) {
                    licenseNumberNode!.requestFocus();
                    if (licenseNumber.text.length == 7) {
                      onRequest!();
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
                textEditingController: licenseNumber,
                focusNode: licenseNumberNode,
                onFieldSubmitted: (_) => innFocusNode!.requestFocus(),
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
                    innFocusNode!.requestFocus();
                    onRequest!();
                  }
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        CustomTextField(
          hintText: '12345678901234',
          keyboardType: TextInputType.number,
          label: AppLocalizations.of(context).jshshr,
          textInputAction: TextInputAction.next,
          textEditingController: innController,
          focusNode: innFocusNode,
          readOnly: isDisable,
          onFieldSubmitted: (_) => firstNameFocus?.requestFocus(),
          validator: (value) => value!.length < 14
              ? AppLocalizations.of(context).invalidLength
              : null,
          inputFormatters: [
            MaskTextInputFormatter(
              mask: '##############',
              initialText: innController.text,
              filter: {"#": RegExp(r'\d')},
            )
          ],
          onChange: (value) {
            if (value.length == 14) {
              firstNameFocus?.requestFocus();
            }
          },
        ),
        const SizedBox(height: 16),
        CustomTextField(
          hintText: AppLocalizations.of(context).firstName,
          keyboardType: TextInputType.name,
          label: AppLocalizations.of(context).firstName,
          textInputAction: TextInputAction.next,
          textEditingController: firstNameController,
          focusNode: firstNameFocus,
          readOnly: isDisable,
          onFieldSubmitted: (_) => lastNameFocus?.requestFocus(),
          validator: (value) => value!.isEmpty
              ? AppLocalizations.of(context).invalidLength
              : null,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z ]')),
            UpperCaseTextFormatter(),
          ],
        ),
        const SizedBox(height: 16),
        CustomTextField(
          hintText: AppLocalizations.of(context).lastName,
          keyboardType: TextInputType.name,
          label: AppLocalizations.of(context).lastName,
          textInputAction: TextInputAction.next,
          textEditingController: lastNameController,
          focusNode: lastNameFocus,
          readOnly: isDisable,
          onFieldSubmitted: (_) => addressFocus?.requestFocus(),
          validator: (value) => value!.isEmpty
              ? AppLocalizations.of(context).invalidLength
              : null,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z ]')),
            UpperCaseTextFormatter(),
          ],
        ),
        const SizedBox(height: 16),
        CustomTextField(
          hintText: AppLocalizations.of(context).addressHint,
          keyboardType: TextInputType.streetAddress,
          label: AppLocalizations.of(context).address,
          textInputAction: TextInputAction.next,
          textEditingController: addressController,
          focusNode: addressFocus,
          onFieldSubmitted: (_) => phoneFocus?.requestFocus(),
          validator: (value) => value!.isEmpty
              ? AppLocalizations.of(context).invalidLength
              : null,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[\dA-Za-z ]')),
            UpperCaseTextFormatter(),
          ],
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
