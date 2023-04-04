import 'package:e_polis/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/themes/app_icons.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../../../data/models/vehicle_information/response/vehicle_info_response.dart';
import '../../../../../components/custom_text_field.dart';
import '../../../widgets/animated_container.dart';
import '../../../widgets/widgets.dart';

class DriverInformationWidget extends StatelessWidget {
  const DriverInformationWidget(
      {Key? key,
      this.ownerData,
      required this.seriesID,
      required this.numberID,
      required this.phoneController,
      this.onClear,
      this.isValidated,
      this.focusNodeSeriesID,
      this.focusNodeNumberID,
      this.focusNodePhone,
      required this.onRequest})
      : super(key: key);
  final OwnerData? ownerData;
  final TextEditingController seriesID;
  final TextEditingController numberID;
  final TextEditingController phoneController;
  final Function()? onClear;
  final bool? isValidated;
  final FocusNode? focusNodeSeriesID;
  final FocusNode? focusNodeNumberID;
  final FocusNode? focusNodePhone;
  final Function() onRequest;

  @override
  Widget build(BuildContext context) {
    return AnimatedRoundContainer(
      title: AppLocalizations.of(context).driverInfo,
      padding: const EdgeInsets.fromLTRB(10, 8, 10, 16),
      padding2: const EdgeInsets.fromLTRB(10, 0, 10, 16),
      clearText:
          isValidated == true ? AppLocalizations.of(context).clearData : null,
      showChildren2: isValidated == true,
      onClear: onClear,
      children2: [
        phoneCustomTextField(context),
      ],
      children: [
        TitleSubtitle(
            title: AppLocalizations.of(context).fio,
            subtitle: ownerData?.fullName ?? ''),
        TitleSubtitle(
            title: AppLocalizations.of(context).pinFl,
            subtitle: ownerData?.pinfl ?? ''),
        const Divider(height: 16, color: AppColors.divider, thickness: 1),
        const SizedBox(height: 8),
        Text(AppLocalizations.of(context).passport,
            style: AppTextStyles.styleW600S14Grey9),
        const SizedBox(height: 6),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: CustomTextField(
                  hintText: 'AA',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  textEditingController: seriesID,
                  textCapitalization: TextCapitalization.characters,
                  focusNode: focusNodeSeriesID,
                  readOnly: isValidated,
                  validator: (value) => value!.length < 2
                      ? AppLocalizations.of(context).invalidLength
                      : null,
                  onFieldSubmitted: (_) => focusNodeNumberID!.requestFocus(),
                  inputFormatters: [
                    MaskTextInputFormatter(
                      mask: '##',
                      initialText: seriesID.text,
                      filter: {"#": RegExp(r'[A-Z]')},
                    )
                  ],
                  onChange: (value) {
                    if (value.length == 2) {
                      focusNodeNumberID!.requestFocus();
                    }
                  },
                )),
            const SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: CustomTextField(
                hintText: '1234567',
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                textEditingController: numberID,
                focusNode: focusNodeNumberID,
                readOnly: isValidated,
                validator: (value) => value!.length < 6
                    ? AppLocalizations.of(context).invalidLength
                    : null,
                inputFormatters: [
                  MaskTextInputFormatter(
                    mask: '#######',
                    initialText: numberID.text,
                    filter: {"#": RegExp(r'\d')},
                  )
                ],
                onChange: (value) {
                  if (value.length == 7) {
                    focusNodeNumberID!.unfocus();
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

  Widget phoneCustomTextField(BuildContext context) {
    return CustomPrefixTextField(
      label: AppLocalizations.of(context).phoneNumber,
      hintText: '(--) --- -- --',
      textInputAction: TextInputAction.done,
      textEditingController: phoneController,
      textInputType: TextInputType.phone,
      focusNode: focusNodePhone,
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
          focusNodePhone!.unfocus();
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
