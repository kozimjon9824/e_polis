import 'package:flutter/material.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import 'widgets.dart';

class ContainerSwitch extends StatefulWidget {
  const ContainerSwitch({Key? key}) : super(key: key);

  @override
  State<ContainerSwitch> createState() => _ContainerSwitchState();
}

class _ContainerSwitchState extends State<ContainerSwitch> {
  bool? leftActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        const Text('Количество водителей',
            style: AppTextStyles.styleW600S14Grey9),
        const SizedBox(height: 7),
        Row(
          children: [
            SwitchBtn(
                title: 'До 5 человек',
                onTap: () {
                  leftActive = true;
                  setState(() {});
                },
                bgColor: leftActive == true ? AppColors.green : null,
                borderRadius:
                    const BorderRadius.horizontal(left: Radius.circular(8))),
            SwitchBtn(
                title: 'Не ограничен',
                onTap: () {
                  leftActive = false;
                  setState(() {});
                },
                bgColor: leftActive == false ? AppColors.green : null,
                borderRadius:
                    const BorderRadius.horizontal(right: Radius.circular(8))),
          ],
        ),
      ],
    );
  }
}
