import 'package:e_polis/src/presentation/cubits/limitless_driver_tabbar/limitless_driver_tab_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../../generated/l10n.dart';
import '../../../../../../../../injector.dart';
import '../../../../../../../core/utils/helper_models.dart';
import '../../../../../../../core/utils/utils.dart';
import '../../../../../../../data/models/book/book_model.dart';
import '../../../../../../components/custom_button.dart';
import '../../../../../../components/snackbars.dart';
import '../../../../../../cubits/add_driver/add_driver_cubit.dart';
import '../../../../../../cubits/book/book_cubit.dart';
import '../../../../../../cubits/drop_down_values/drop_down_values_cubit.dart';
import '../../../../../../cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';
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
  final licenseSeriesNode = FocusNode();
  final licenseNumberNode = FocusNode();
  final licenseDateNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<AddDriverCubit>(),
      child: BlocConsumer<AddDriverCubit, AddDriverState>(
        listenWhen: (pre, cur) =>
            cur.status == StateStatus.success ||
            cur.status == StateStatus.error,
        listener: (context, state) {
          var driverCubit = context.read<LimitlessDriverTabBarCubit>();
          if (state.status == StateStatus.error) {
            driverCubit.addDriverData(
              index: widget.index - 1,
              model: IndexedDriverModel(isSuccess: false),
            );
            showErrorMessage(
                context, state.failure.getLocalizedMessage(context));
          }
          if (state.status == StateStatus.success) {
            driverCubit.addDriverData(
              index: widget.index - 1,
              model: IndexedDriverModel(
                isSuccess: true,
                driverModel: DriverModel(
                  birthDate: dateConverter(
                    date: dateController.text,
                    inFormat: 'dd.MM.yyyy',
                    outFormat: 'yyyy-MM-dd',
                  ),
                  passport: DriverPassport(
                    series: seriesController.text,
                    number: numberController.text,
                  ),
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          var cubit = context.read<AddDriverCubit>();
          var driverCubit = context.read<LimitlessDriverTabBarCubit>();
          var driverData = state.driverData;
          if (driverData != null) {
            licenseDate.text = dateConverter(
              date: driverData.driverLicense?.startDate ?? '',
              inFormat: 'dd.MM.yyyy',
              outFormat: 'dd.MM.yyyy',
            );
            licenseNumber.text = driverData.driverLicense?.number ?? '';
            licenseSeries.text = driverData.driverLicense?.series ?? '';
          }
          return Scaffold(
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              children: [
                AnimatedRoundContainer(
                  title:
                      '${widget.index}-${AppLocalizations.of(context).driver}',
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                  padding2: const EdgeInsets.fromLTRB(10, 0, 10, 16),
                  showChildren2: state.driverData != null || state.fillByHand,
                  clearText: state.driverData == null
                      ? AppLocalizations.of(context).delete
                      : AppLocalizations.of(context).clearData,
                  onClear: () {
                    seriesController.text = '';
                    numberController.text = '';
                    dateController.text = '';
                    licenseSeries.text = '';
                    licenseNumber.text = '';
                    licenseDate.text = '';
                    if (state.driverData != null || state.fillByHand) {
                      cubit.clearDriverData();
                      driverCubit.addDriverData(
                        index: widget.index - 1,
                        model: IndexedDriverModel(isSuccess: null),
                      );
                    } else {
                      driverCubit.removeTab(widget.index - 1);
                    }
                  },
                  children2: [
                    BlocBuilder<DropDownValuesCubit, DropDownValuesState>(
                      builder: (context, dropDownState) {
                        return Form(
                          key: formKey2,
                          child: LimitlessDriverChild2Body(
                            onChange: (value) {
                              int key = context
                                  .read<DropDownValuesCubit>()
                                  .getRelativeKey(value ?? '');
                              driverCubit.selectDriverRelationShip(
                                index: widget.index - 1,
                                relativeKey: key,
                              );
                            },
                            dropDownValues: List.of(dropDownState.relativeList)
                              ..removeAt(0),
                            data: state.driverData,
                            licenseSeries: licenseSeries,
                            licenseNumber: licenseNumber,
                            licenseDate: licenseDate,
                            licenseSeriesNode: licenseSeriesNode,
                            licenseNumberNode: licenseNumberNode,
                            licenseDateNode: licenseDateNode,
                          ),
                        );
                      },
                    )
                  ],
                  children: [
                    Form(
                      key: formKey,
                      child: LimitlessDriverChild1Body(
                        seriesController: seriesController,
                        numberController: numberController,
                        dateController: dateController,
                        dateFocus: dateFocus,
                        seriesFocus: seriesFocus,
                        numberFocus: numberFocus,
                        readOnly: state.driverData != null,
                        onRequest: () {
                          if (formKey.currentState!.validate()) {
                            if (state.driverData == null) {
                              String date = dateConverter(
                                date: dateController.text,
                                inFormat: 'dd.MM.yyyy',
                                outFormat: 'yyyy-MM-dd',
                              );
                              cubit.addDriver(
                                birth: date,
                                series: seriesController.text,
                                number: numberController.text,
                              );
                            }
                          }
                        },
                      ),
                    )
                  ],
                ),
                Visibility(
                  visible: driverCubit.isAllCompleted(),
                  child: const SizedBox(height: 20),
                ),
                Visibility(
                  visible: driverCubit.isAllCompleted(),
                  child: CustomOutlineButton(
                    text: AppLocalizations.of(context).addDriver,
                    onTap: () => driverCubit.addTab(),
                  ),
                ),
                const SizedBox(height: 24),
              ],
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
                  if (state.driverData == null && !state.fillByHand) {
                    String date = dateConverter(
                      date: dateController.text,
                      inFormat: 'dd.MM.yyyy',
                      outFormat: 'yyyy-MM-dd',
                    );
                    cubit.addDriver(
                      birth: date,
                      series: seriesController.text,
                      number: numberController.text,
                    );
                  } else if (driverCubit.isAllCompleted()) {
                    if (!formKey2.currentState!.validate()) {
                      return;
                    }
                    List<IndexedDriverModel> driverList =
                        driverCubit.state.drivers;
                    context.read<BookCubit>().onDriverListData(driverList
                        .where((element) => element.driverModel != null)
                        .map((e) => e.driverModel!)
                        .toList());
                    context
                        .read<ManageInsuranceStackViewsCubit>()
                        .changeIndex(2);
                  } else if (state.fillByHand) {
                    if (!formKey2.currentState!.validate()) {
                      return;
                    }
                    var model = IndexedDriverModel(
                      isSuccess: true,
                      driverModel: DriverModel(
                        birthDate: dateConverter(
                            date: dateController.text,
                            inFormat: 'dd.MM.yyyy',
                            outFormat: 'yyyy-MM-dd'),
                        passport: DriverPassport(
                            series: seriesController.text,
                            number: numberController.text),
                      ),
                    );
                    driverCubit.addDriverData(
                      index: widget.index - 1,
                      model: model,
                    );
                  } else {
                    showErrorMessage(context,
                        AppLocalizations.of(context).enterAllDriversInputs);
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
    licenseNumberNode.dispose();
    licenseSeriesNode.dispose();
    licenseDateNode.dispose();
  }
}
