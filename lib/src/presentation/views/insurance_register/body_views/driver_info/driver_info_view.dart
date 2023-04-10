import 'package:e_polis/src/presentation/cubits/limitless_driver_tabbar/limitless_driver_tab_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../injector.dart';
import '../../../../cubits/insurance_basic_filter/insurance_basic_filter_cubit.dart';
import '../../../../cubits/limited_driver_tabbar/limited_driver_tab_bar_cubit.dart';
import '../../../insurance_basic_filter/widget/container_switch.dart';
import 'views/limeted_driver.dart';
import 'views/limetless_drivers.dart';

class DriverInfoView extends StatelessWidget {
  DriverInfoView({Key? key}) : super(key: key);

  final listOf = [
    const LimitedDriverView(),
    const LimitlessDriverView(),
  ];

  void clearList() {
    listOf.clear();
    listOf.add(const LimitedDriverView());
    listOf.add(const LimitlessDriverView());
  }

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
          if (state.clearList) {
            print('asaddsf');
            clearList();
            context.read<InsuranceBasicFilterCubit>().clearList(false);
          }
          bool status = state.basicFilterRequest.isVip ?? false;
          return IndexedStack(
            index: status ? 1 : 0,
            children: listOf,
          );
        },
      ),
    );
  }
}
