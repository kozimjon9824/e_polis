import 'package:flutter/material.dart';
import '../../../insurance_basic_filter/widget/container_switch.dart';
import 'views/limeted_driver.dart';

class DriverInfoView extends StatelessWidget {
  const DriverInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 78,
        automaticallyImplyLeading: false,
        title: const ContainerSwitch(),
      ),
      body: IndexedStack(
        index: 0,
        children: const [LimitedDriverView(), Text('data')],
      ),
    );
  }
}
