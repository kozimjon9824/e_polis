import 'package:e_polis/src/presentation/cubits/limitless_driver_tabbar/limitless_driver_tab_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../injector.dart';
import '../../../../../../../core/utils/helper_models.dart';
import '../../../../../../../core/utils/utils.dart';
import '../../../../../../../data/models/book/book_model.dart';
import '../../../../../../components/custom_button.dart';
import '../../../../../../components/snackbars.dart';
import '../../../../../../cubits/add_driver/add_driver_cubit.dart';
import '../../../../widgets/animated_container.dart';
import 'children/children_limitless_driver.dart';

class LimitlessDriverInputs extends StatefulWidget {
  const LimitlessDriverInputs({Key? key, required this.index})
      : super(key: key);
  final int index;

  @override
  State<LimitlessDriverInputs> createState() => _LimitlessDriverInputsState();
}

class _LimitlessDriverInputsState extends State<LimitlessDriverInputs> {
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
            context.read<LimitlessDriverTabBarCubit>().addDriverData(
                index: widget.index - 1,
                model: const IndexedDriverModel(isSuccess: false));
            showErrorMessage(
                context, state.failure.getLocalizedMessage(context));
          }
          if (state.status == StateStatus.success) {
            context.read<LimitlessDriverTabBarCubit>().addDriverData(
                index: widget.index - 1,
                model: IndexedDriverModel(
                    isSuccess: true,
                    driverModel: DriverModel(
                        birthDate: dateController.text,
                        relative: 'Брат',
                        passport: DriverPassport(
                            series: seriesController.text,
                            number: numberController.text))));
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
                  clearText: state.driverData == null
                      ? 'Удалить'
                      : 'Очистить информацию',
                  onClear: () {
                    context
                        .read<LimitlessDriverTabBarCubit>()
                        .removeTab(widget.index - 1);
                  },
                  children2: [
                    LimitlessDriverChild2Body(
                        data: state.driverData,
                        licenseSeries: licenseSeries,
                        licenseNumber: licenseNumber,
                        licenseDate: licenseDate)
                  ],
                  children: [
                    LimitlessDriverChild1Body(
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
                      context.read<LimitlessDriverTabBarCubit>().addTab();
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
