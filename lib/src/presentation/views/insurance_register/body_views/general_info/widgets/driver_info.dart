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
      this.focusNodePhone})
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
          crossAxisAlignment: CrossAxisAlignment.end,
          textBaseline: TextBaseline.ideographic,
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
                  inputFormatters: [
                    MaskTextInputFormatter(
                        mask: '##', filter: {"#": RegExp(r'[A-Z]')})
                  ],
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
                inputFormatters: [
                  MaskTextInputFormatter(
                      mask: '#######', filter: {"#": RegExp(r'[0-9]')})
                ],
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
      inputFormatters: [
        MaskTextInputFormatter(
            mask: '(##) ### ## ##', filter: {"#": RegExp(r'[0-9]')})
      ],
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
