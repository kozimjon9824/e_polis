import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/data/models/book/book_model.dart';
import 'package:e_polis/src/presentation/components/snackbars.dart';
import 'package:e_polis/src/presentation/cubits/book/book_cubit.dart';
import 'package:e_polis/src/presentation/cubits/check_vehicle_info/check_vehicle_info_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../../../../generated/l10n.dart';
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
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();

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
          return Scaffold(
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              children: [
                Form(
                  key: formKey,
                  child: CarInformationWidget(
                    vehicleController: vehicleController,
                    seriesController: series,
                    numberController: number,
                    vehicleInfo: state.vehicleInfo,
                    focusNodeTechNumber: focusNodeTechNumber,
                    focusNodeTechSeries: focusNodeTechSeries,
                    focusNodeVehicleNumber: focusNodeVehicleNumber,
                    onClear: () => cubit.onClearVehicleData(),
                    onRequest: () {
                      if (formKey.currentState!.validate()) {
                        if (state.vehicleInfo == null) {
                          cubit.checkVehicleData(
                              vehicleNum: vehicleController.text,
                              techPasSer: series.text,
                              techPasNum: number.text);
                        }
                      }
                    },
                  ),
                ),
                if (state.vehicleInfo != null) const SizedBox(height: 16),
                if (state.vehicleInfo != null)
                  Form(
                    key: formKey2,
                    child: DriverInformationWidget(
                      seriesID: seriesID,
                      numberID: numberID,
                      phoneController: phoneController,
                      ownerData: state.vehicleInfo?.owner,
                      isValidated: state.isPassportValidated,
                      focusNodeNumberID: focusNodeNumberID,
                      focusNodeSeriesID: focusNodeSeriesID,
                      focusNodePhone: focusNodePhone,
                      onRequest: () {
                        if (!state.isPassportValidated &&
                            formKey2.currentState!.validate()) {
                          cubit.validatePassport(
                              series: seriesID.text, number: numberID.text);
                        }
                      },
                    ),
                  ),
              ],
            ),
            bottomNavigationBar: SafeArea(
              minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
              child: CustomButton(
                isLoading: state.status == StateStatus.loading,
                text: AppLocalizations.of(context).next,
                onTap: () {
                  if (!formKey.currentState!.validate()) {
                    return;
                  }
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
                    if (!formKey2.currentState!.validate()) {
                      return;
                    }
                    cubit.validatePassport(
                        series: seriesID.text, number: numberID.text);
                  } else {
                    if (!formKey2.currentState!.validate()) {
                      return;
                    }
                    var owner = state.vehicleInfo?.owner;
                    var phone = MaskTextInputFormatter(
                            mask: '(##) ### ## ##',
                            filter: {"#": RegExp(r'[0-9]')})
                        .unmaskText(phoneController.text);
                    ApplicantModel applicant = ApplicantModel(
                        phone: phone,
                        passport: ApplicantPassport(
                            pinfl: owner?.pinfl,
                            series: seriesID.text,
                            number: numberID.text));
                    context.read<BookCubit>().onApplicantData(applicant);
                    context
                        .read<BookCubit>()
                        .onVehicleNumberData(vehicleController.text);
                    context
                        .read<ManageInsuranceStackViewsCubit>()
                        .changeIndex(1);
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
    vehicleController.dispose();
    series.dispose();
    number.dispose();
    numberID.dispose();
    seriesID.dispose();
    phoneController.dispose();
    focusNodeSeriesID.dispose();
    focusNodeNumberID.dispose();
    focusNodePhone.dispose();
    focusNodeVehicleNumber.dispose();
    focusNodeTechSeries.dispose();
    focusNodeTechNumber.dispose();
  }
}
