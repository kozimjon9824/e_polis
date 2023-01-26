import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../cubits/insurance_basic_filter/insurance_basic_filter_cubit.dart';
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
      body: BlocBuilder<InsuranceBasicFilterCubit, InsuranceBasicFilterState>(
        builder: (context, state) {
          bool status = state.basicFilterRequest.isVip ?? false;
          return IndexedStack(
            index: status ? 1 : 0,
            children: const [LimitedDriverView(), Center(child: Text('data'))],
          );
        },
      ),
    );
  }
}
