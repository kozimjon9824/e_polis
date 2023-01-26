import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/presentation/components/snackbars.dart';
import 'package:e_polis/src/presentation/cubits/check_vehicle_info/check_vehicle_info_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import '../../../../components/custom_button.dart';
import '../../../../cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';
import 'widgets/car_info.dart';
import 'widgets/driver_info.dart';

class GeneralInfoView extends StatefulWidget {
  const GeneralInfoView({Key? key}) : super(key: key);

  @override
  State<GeneralInfoView> createState() => _GeneralInfoViewState();
}

class _GeneralInfoViewState extends State<GeneralInfoView> {
  final vehicleController = TextEditingController();
  final series = TextEditingController();
  final number = TextEditingController();
  final numberID = TextEditingController();
  final seriesID = TextEditingController();
  final phoneController = TextEditingController();
  final focusNodeSeriesID = FocusNode();
  final focusNodeNumberID = FocusNode();
  final focusNodePhone = FocusNode();
  final focusNodeTechSeries = FocusNode();
  final focusNodeTechNumber = FocusNode();
  final focusNodeVehicleNumber = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<CheckVehicleInfoCubit>(),
      child: BlocConsumer<CheckVehicleInfoCubit, CheckVehicleInfoState>(
        listener: (context, state) {
          if (state.status == StateStatus.error) {
            showErrorMessage(
                context, state.failure.getLocalizedMessage(context));
          }
        },
        builder: (context, state) {
          var cubit = context.read<CheckVehicleInfoCubit>();
          return KeyboardDismisser(
            child: Scaffold(
              body: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                children: [
                  CarInformationWidget(
                    vehicleController: vehicleController,
                    seriesController: series,
                    numberController: number,
                    vehicleInfo: state.vehicleInfo,
                    focusNodeTechNumber: focusNodeTechNumber,
                    focusNodeTechSeries: focusNodeTechSeries,
                    focusNodeVehicleNumber: focusNodeVehicleNumber,
                    onClear: () => cubit.onClearVehicleData(),
                  ),
                  if (state.vehicleInfo != null) const SizedBox(height: 16),
                  if (state.vehicleInfo != null)
                    DriverInformationWidget(
                      seriesID: seriesID,
                      numberID: numberID,
                      phoneController: phoneController,
                      ownerData: state.vehicleInfo?.owner,
                      isValidated: state.isPassportValidated,
                      focusNodeNumberID: focusNodeNumberID,
                      focusNodeSeriesID: focusNodeSeriesID,
                      focusNodePhone: focusNodePhone,
                      onClear: () {},
                    ),
                ],
              ),
              bottomNavigationBar: SafeArea(
                minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                child: CustomButton(
                  isLoading: state.status == StateStatus.loading,
                  text: 'Продолжить',
                  onTap: () {
                    focusNodeSeriesID.unfocus();
                    focusNodeNumberID.unfocus();
                    focusNodePhone.unfocus();
                    focusNodeVehicleNumber.unfocus();
                    focusNodeTechSeries.unfocus();
                    focusNodeTechNumber.unfocus();
                    if (state.vehicleInfo == null) {
                      cubit.checkVehicleData(
                          vehicleNum: vehicleController.text,
                          techPasSer: series.text,
                          techPasNum: number.text);
                    } else if (!state.isPassportValidated) {
                      cubit.validatePassport(
                          series: seriesID.text, number: numberID.text);
                    } else {
                      context
                          .read<ManageInsuranceStackViewsCubit>()
                          .changeIndex(1);
                    }
                  },
                ),
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
    vehicleController.dispose();
    series.dispose();
    number.dispose();
    focusNodeSeriesID.dispose();
    focusNodeNumberID.dispose();
    focusNodePhone.dispose();
    focusNodeVehicleNumber.dispose();
    focusNodeTechSeries.dispose();
    focusNodeTechNumber.dispose();
  }
}
