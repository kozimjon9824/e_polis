import 'package:flutter/material.dart';
import '../../../../components/custom_button.dart';
import 'widgets/car_info.dart';
import 'widgets/driver_info.dart';

class GeneralInfoView extends StatelessWidget {
  const GeneralInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: const [
          CarInformationWidget(),
          SizedBox(height: 16),
          DriverInformationWidget(),
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
        child: CustomButton(
          text: 'Продолжить',
          onTap: () {},
        ),
      ),
    );
  }
}
