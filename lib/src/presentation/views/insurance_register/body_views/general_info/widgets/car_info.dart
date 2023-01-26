import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../../../core/themes/app_colors.dart';
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
  }) : super(key: key);

  final VehicleInfoResponse? vehicleInfo;
  final TextEditingController vehicleController;
  final TextEditingController seriesController;
  final TextEditingController numberController;
  final Function() onClear;
  final FocusNode? focusNodeTechSeries;
  final FocusNode? focusNodeTechNumber;
  final FocusNode? focusNodeVehicleNumber;

  @override
  Widget build(BuildContext context) {
    return AnimatedRoundContainer(
      title: 'Информация об автомобиле',
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      padding2: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      clearText: vehicleInfo != null ? 'Очистить информацию' : null,
      showChildren2: vehicleInfo != null,
      onClear: onClear,
      children2: [
        VehicleInfoWidget(data: vehicleInfo?.vehicle),
      ],
      children: [
        CustomTextField(
          label: 'Номер авто',
          hintText: '01 М 001 ХА',
          textEditingController: vehicleController,
          keyboardType: TextInputType.text,
          inputFormatters: [SpecialMaskTextInputFormatter()],
          textCapitalization: TextCapitalization.characters,
          textInputAction: TextInputAction.next,
          focusNode: focusNodeVehicleNumber,
        ),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                flex: 1,
                child: CustomTextField(
                  label: 'Техпаспорт',
                  hintText: 'Серия',
                  textEditingController: seriesController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  textCapitalization: TextCapitalization.characters,
                  focusNode: focusNodeTechSeries,
                  inputFormatters: [
                    MaskTextInputFormatter(
                        mask: '###', filter: {"#": RegExp(r'[A-Z]')})
                  ],
                )),
            const SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: CustomTextField(
                hintText: 'Номер',
                focusNode: focusNodeTechNumber,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                textEditingController: numberController,
                inputFormatters: [
                  MaskTextInputFormatter(
                      mask: '######', filter: {"#": RegExp(r'[0-9]')})
                ],
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
        TitleSubtitle(title: 'Марка и модель', subtitle: data?.model ?? ''),
        TitleSubtitle(
            title: 'Год выпуска автомобиля',
            subtitle: data?.issueYear.toString() ?? ''),
        TitleSubtitle(
            title: 'Тип автомобиля', subtitle: data?.type.toString() ?? ''),
        TitleSubtitle(
            title: 'Регион регистрации автомобиля',
            subtitle: data?.address ?? ''),
        const SizedBox(height: 8),
      ],
    );
  }
}
