import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/injector.dart';
import 'package:e_polis/src/data/models/book/book_model.dart';
import 'package:e_polis/src/presentation/components/snackbars.dart';
import 'package:e_polis/src/presentation/cubits/add_driver/add_driver_cubit.dart';
import 'package:e_polis/src/presentation/cubits/book/book_cubit.dart';
import 'package:e_polis/src/presentation/cubits/drop_down_values/drop_down_values_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/utils/helper_models.dart';
import '../../../../../../../core/utils/utils.dart';
import '../../../../../../components/custom_button.dart';
import '../../../../../../cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';
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
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<AddDriverCubit>(),
      child: BlocConsumer<AddDriverCubit, AddDriverState>(
        listener: (context, state) {
          if (state.status == StateStatus.error) {
            context.read<LimitedDriverTabBarCubit>().addDriverData(
                index: widget.index - 1,
                model: IndexedDriverModel(isSuccess: false));
            showErrorMessage(
                context, state.failure.getLocalizedMessage(context));
          }
          if (state.status == StateStatus.success) {
            context.read<LimitedDriverTabBarCubit>().addDriverData(
                index: widget.index - 1,
                model: IndexedDriverModel(
                    isSuccess: true,
                    driverModel: DriverModel(
                        birthDate: dateConverter(
                            date: dateController.text,
                            inFormat: 'dd/MM/yyyy',
                            outFormat: 'yyyy-MM-dd'),
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
            body: Form(
              key: formKey,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                children: [
                  AnimatedRoundContainer(
                    title:
                        '${widget.index}-${AppLocalizations.of(context).driver}',
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 10),
                    padding2: const EdgeInsets.fromLTRB(10, 0, 10, 16),
                    showChildren2: state.driverData != null,
                    clearText: state.driverData != null
                        ? AppLocalizations.of(context).delete
                        : null,
                    onClear: () {
                      cubit.clearDriverData();
                      context
                          .read<LimitedDriverTabBarCubit>()
                          .removeTab(widget.index - 1);
                    },
                    children2: [
                      BlocBuilder<DropDownValuesCubit, DropDownValuesState>(
                        builder: (context, dropDownState) {
                          return Child2Body(
                              onChange: (value) {
                                int key = context
                                    .read<DropDownValuesCubit>()
                                    .getRelativeKey(value ?? '');
                                context
                                    .read<LimitedDriverTabBarCubit>()
                                    .selectDriverRelationShip(
                                        index: widget.index - 1,
                                        relativeKey: key);
                              },
                              dropDownValues: dropDownState.relativeList,
                              data: state.driverData,
                              licenseSeries: licenseSeries,
                              licenseNumber: licenseNumber,
                              licenseDate: licenseDate);
                        },
                      )
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
                  if (widget.index != 5)
                    CustomOutlineButton(
                        text: AppLocalizations.of(context).addDriver,
                        onTap: () {
                          context.read<LimitedDriverTabBarCubit>().addTab();
                        }),
                  if (widget.index != 5) const SizedBox(height: 24),
                ],
              ),
            ),
            bottomNavigationBar: SafeArea(
              minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
              child: CustomButton(
                text: AppLocalizations.of(context).next,
                isLoading: state.status == StateStatus.loading,
                onTap: () {
                  if (!formKey.currentState!.validate()) {
                    return;
                  }
                  dateFocus.unfocus();
                  seriesFocus.unfocus();
                  numberFocus.unfocus();
                  if (state.driverData == null) {
                    String date = dateConverter(
                        date: dateController.text,
                        inFormat: 'dd/MM/yyyy',
                        outFormat: 'yyyy-MM-dd');
                    cubit.addDriver(
                        birth: date,
                        series: seriesController.text,
                        number: numberController.text);
                  } else if (context
                      .read<LimitedDriverTabBarCubit>()
                      .isAllCompleted()) {
                    List<IndexedDriverModel> driverList =
                        context.read<LimitedDriverTabBarCubit>().state.drivers;
                    context.read<BookCubit>().onDriverListData(
                        driverList.map((e) => e.driverModel!).toList());
                    context
                        .read<ManageInsuranceStackViewsCubit>()
                        .changeIndex(2);
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
