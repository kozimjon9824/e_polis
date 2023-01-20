import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/themes/app_icons.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../../components/custom_mask.dart';
import '../../../../../components/custom_text_field.dart';
import '../../../widgets/animated_container.dart';
import '../../../widgets/widgets.dart';

class DriverInformationWidget extends StatelessWidget {
  const DriverInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedRoundContainer(
      title: 'Информация о владельце',
      padding: const EdgeInsets.fromLTRB(10, 8, 10, 16),
      padding2: const EdgeInsets.fromLTRB(10, 0, 10, 16),
      clearText: 'Очистить информацию',
      showChildren2: true,
      children2: [
        phoneCustomTextField(),
        // const SizedBox(height: 16),
      ],
      children: [
        const TitleSubtitle(title: 'Ф.И.О', subtitle: 'Kozimjon kh'),
        const TitleSubtitle(title: 'ЖШШИР', subtitle: '1234567890123'),
        const Divider(height: 16, color: AppColors.divider, thickness: 1),
        const SizedBox(height: 8),
        const Text('Паспорта/ID карта', style: AppTextStyles.styleW600S14Grey9),
        const SizedBox(height: 6),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                flex: 1,
                child: CustomTextField(
                  hintText: 'AA',
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
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
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
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

  Widget phoneCustomTextField() {
    return CustomPrefixTextField(
      label: 'Номер телефона',
      hintText: '(--) --- -- --',
      autoFocus: true,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.phone,
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
