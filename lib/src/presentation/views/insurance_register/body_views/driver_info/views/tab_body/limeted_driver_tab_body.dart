import 'package:e_polis/injector.dart';
import 'package:e_polis/src/presentation/components/snackbars.dart';
import 'package:e_polis/src/presentation/cubits/add_driver/add_driver_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/utils/utils.dart';
import '../../../../../../components/custom_button.dart';
import '../../../../../../cubits/limited_driver_tabbar/limited_driver_tab_bar_cubit.dart';
import '../../../../widgets/animated_container.dart';
import 'children/children.dart';

class DriverInputDetailsBody extends StatefulWidget {
  const DriverInputDetailsBody({Key? key, required this.index})
      : super(key: key);
  final int index;

  @override
  State<DriverInputDetailsBody> createState() => _DriverInputDetailsBodyState();
}

class _DriverInputDetailsBodyState extends State<DriverInputDetailsBody> {
  final seriesController = TextEditingController();
  final numberController = TextEditingController();
  final dateController = TextEditingController();
  final licenseSeries = TextEditingController();
  final licenseNumber = TextEditingController();
  final licenseDate = TextEditingController();
  final seriesFocus = FocusNode();
  final numberFocus = FocusNode();
  final dateFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<AddDriverCubit>(),
      child: BlocConsumer<AddDriverCubit, AddDriverState>(
        listener: (context, state) {
          if (state.status == StateStatus.error) {
            showErrorMessage(
                context, state.failure.getLocalizedMessage(context));
          }
        },
        builder: (context, state) {
          var cubit = context.read<AddDriverCubit>();
          if (state.driverData != null) {
            licenseDate.text = state.driverData?.driverLicense?.startDate ?? '';
            licenseNumber.text = state.driverData?.driverLicense?.number ?? '';
            licenseSeries.text = state.driverData?.driverLicense?.series ?? '';
          }
          return Scaffold(
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              children: [
                AnimatedRoundContainer(
                  title: '${widget.index}-Водитель',
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                  padding2: const EdgeInsets.fromLTRB(10, 0, 10, 16),
                  showChildren2: state.driverData != null,
                  clearText: state.driverData != null ? 'Удалить' : null,
                  onClear: () {
                    context
                        .read<LimitedDriverTabBarCubit>()
                        .removeTab(widget.index - 1);
                  },
                  children2: [
                    Child2Body(
                        data: state.driverData,
                        licenseSeries: licenseSeries,
                        licenseNumber: licenseNumber,
                        licenseDate: licenseDate)
                  ],
                  children: [
                    Child1Body(
                        seriesController: seriesController,
                        numberController: numberController,
                        dateController: dateController,
                        dateFocus: dateFocus,
                        seriesFocus: seriesFocus,
                        numberFocus: numberFocus)
                  ],
                ),
                const SizedBox(height: 20),
                CustomOutlineButton(
                    text: 'Добавить водителя',
                    onTap: () {
                      context.read<LimitedDriverTabBarCubit>().addTab();
                    }),
                const SizedBox(height: 24),
              ],
            ),
            bottomNavigationBar: SafeArea(
              minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
              child: CustomButton(
                text: 'Продолжить',
                isLoading: state.status == StateStatus.loading,
                onTap: () {
                  dateFocus.unfocus();
                  seriesFocus.unfocus();
                  numberFocus.unfocus();
                  if (state.driverData == null) {
                    cubit.addDriver(
                        birth: dateController.text,
                        series: seriesController.text,
                        number: numberController.text);
                  }
                },
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    seriesController.dispose();
    numberController.dispose();
    dateController.dispose();
    licenseNumber.dispose();
    licenseDate.dispose();
    licenseSeries.dispose();
    dateFocus.dispose();
    seriesFocus.dispose();
    numberFocus.dispose();
  }
}
