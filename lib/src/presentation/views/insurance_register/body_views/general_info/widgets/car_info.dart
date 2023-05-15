import 'package:e_polis/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../../../data/models/vehicle_information/response/vehicle_info_response.dart';
import '../../../../../components/custom_mask.dart';
import '../../../../../components/custom_text_field.dart';
import '../../../widgets/animated_container.dart';
import '../../../widgets/widgets.dart';

class CarInformationWidget extends StatelessWidget {
  const CarInformationWidget({
    Key? key,
    this.vehicleInfo,
    required this.vehicleController,
    required this.seriesController,
    required this.numberController,
    required this.onClear,
    this.focusNodeTechSeries,
    this.focusNodeTechNumber,
    this.focusNodeVehicleNumber,
    required this.onRequest,
  }) : super(key: key);

  final VehicleInfoResponse? vehicleInfo;
  final TextEditingController vehicleController;
  final TextEditingController seriesController;
  final TextEditingController numberController;
  final Function() onClear;
  final FocusNode? focusNodeTechSeries;
  final FocusNode? focusNodeTechNumber;
  final FocusNode? focusNodeVehicleNumber;
  final Function() onRequest;

  @override
  Widget build(BuildContext context) {
    return AnimatedRoundContainer(
      title: AppLocalizations.of(context).infoAboutCar,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      padding2: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      clearText:
          vehicleInfo != null ? AppLocalizations.of(context).clearData : null,
      showChildren2: vehicleInfo != null,
      onClear: onClear,
      children2: [
        VehicleInfoWidget(data: vehicleInfo?.vehicle),
      ],
      children: [
        CustomTextField(
          label: AppLocalizations.of(context).vehicleNumber,
          hintText: '01 М 001 ХА',
          textEditingController: vehicleController,
          keyboardType: TextInputType.visiblePassword,
          inputFormatters: [
            // SpecialMaskTextInputFormatter(
            //     initialText: vehicleController.text.replaceAll(' ', '')),
            UpperCaseTextFormatter(),
          ],
          readOnly: vehicleInfo != null,
          textCapitalization: TextCapitalization.characters,
          textInputAction: TextInputAction.next,
          focusNode: focusNodeVehicleNumber,
          onFieldSubmitted: (_) => focusNodeTechSeries!.requestFocus(),
          validator: (value) => (value!.length < 8)
              ? AppLocalizations.of(context).invalidLength
              : null,
          // validator: (value) => (value!.length < 10 ||
          //     (value.length == 10 &&
          //         !RegExp('[0-9]').hasMatch(value.substring(3, 4))))
          //     ? AppLocalizations.of(context).invalidLength
          //     : null,
          onChange: (value) {
            if (value.length == 10) {
              if (RegExp('[0-9]').hasMatch(value.substring(3, 4))) {
                focusNodeTechSeries!.requestFocus();
              }
            }
            if (value.length == 11) {
              focusNodeTechSeries!.requestFocus();
            }
          },
        ),
        const SizedBox(height: 16),
        Text(
          AppLocalizations.of(context).techPassport,
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
                textEditingController: seriesController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                textCapitalization: TextCapitalization.characters,
                focusNode: focusNodeTechSeries,
                onFieldSubmitted: (_) => focusNodeTechNumber!.requestFocus(),
                readOnly: vehicleInfo != null,
                inputFormatters: [
                  MaskTextInputFormatter(
                    mask: '###',
                    initialText: seriesController.text,
                    filter: {"#": RegExp(r'[A-Za-z]')},
                  ),
                  UpperCaseTextFormatter(),
                ],
                validator: (value) => value!.length < 3
                    ? AppLocalizations.of(context).invalidLength
                    : null,
                onChange: (value) {
                  if (value.length == 3) {
                    focusNodeTechNumber!.requestFocus();
                  }
                },
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: CustomTextField(
                hintText: AppLocalizations.of(context).number,
                focusNode: focusNodeTechNumber,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                textEditingController: numberController,
                onFieldSubmitted: (_) => focusNodeTechNumber!.unfocus(),
                readOnly: vehicleInfo != null,
                validator: (value) => value!.length < 7
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
                    focusNodeTechNumber!.unfocus();
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

class VehicleInfoWidget extends StatelessWidget {
  const VehicleInfoWidget({Key? key, this.data}) : super(key: key);

  final VehicleData? data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(height: 0, color: AppColors.divider, thickness: 1),
        const SizedBox(height: 8),
        TitleSubtitle(
          title: AppLocalizations.of(context).model,
          subtitle: data?.model ?? '',
        ),
        TitleSubtitle(
          title: AppLocalizations.of(context).carMadeDate,
          subtitle: data?.issueYear.toString() ?? '',
        ),
        TitleSubtitle(
          title: AppLocalizations.of(context).typeVehicle,
          subtitle: data?.type?.name ?? '',
        ),
        TitleSubtitle(
          title: AppLocalizations.of(context).vehicleRegistrationRegion,
          subtitle: data?.address ?? '',
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
