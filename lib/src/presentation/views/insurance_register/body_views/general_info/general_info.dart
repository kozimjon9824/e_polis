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
import '../../../../../core/constants/constants.dart';
import '../../../../components/custom_button.dart';
import '../../../../cubits/insurance_basic_filter/insurance_basic_filter_cubit.dart';
import '../../../../cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';
import '../../../insurcance_details/insurance_details.dart';
import 'widgets/car_info.dart';
import 'widgets/driver_info.dart';

class GeneralInfoView extends StatefulWidget {
  const GeneralInfoView({
    Key? key,
    required this.arguments,
  }) : super(key: key);
  final InsurancePageArguments arguments;

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
                    onClear: () {
                      vehicleController.text = '';
                      series.text = '';
                      number.text = '';
                      cubit.onClearVehicleData();
                      // for clear bottom fields
                      phoneController.text = '';
                      seriesID.text = '';
                      numberID.text = '';
                      cubit.unValidatePassport();
                      context.read<InsuranceBasicFilterCubit>().clearList(true);
                    },
                    onRequest: () {
                      if (formKey.currentState!.validate()) {
                        if (state.vehicleInfo == null) {
                          cubit.checkVehicleData(
                            vehicleNum:
                                vehicleController.text.replaceAll(' ', ''),
                            techPasSer: series.text,
                            techPasNum: number.text,
                          );
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
                      hidePassportFields: state.vehicleInfo?.owner?.inn != null
                          ? true
                          : state.vehicleInfo?.isPassportOK ?? false,
                      seriesID: seriesID,
                      numberID: numberID,
                      phoneController: phoneController,
                      ownerData: state.vehicleInfo?.owner,
                      isValidated: state.vehicleInfo?.owner?.inn != null
                          ? true
                          : state.isPassportValidated,
                      focusNodeNumberID: focusNodeNumberID,
                      focusNodeSeriesID: focusNodeSeriesID,
                      focusNodePhone: focusNodePhone,
                      onClear: () {
                        phoneController.text = '';
                        seriesID.text = '';
                        numberID.text = '';
                        context
                            .read<InsuranceBasicFilterCubit>()
                            .clearList(true);
                        if (!(state.vehicleInfo?.isPassportOK ?? false)) {
                          cubit.unValidatePassport();
                        }
                      },
                      onRequest: () {
                        if (!state.isPassportValidated &&
                            formKey2.currentState!.validate()) {
                          cubit.validatePassport(
                            series: seriesID.text,
                            number: numberID.text,
                          );
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
                      vehicleNum: vehicleController.text.replaceAll(' ', ''),
                      techPasSer: series.text,
                      techPasNum: number.text,
                    );
                  } else if (!state.isPassportValidated &&
                      (state.vehicleInfo?.owner?.inn == null)) {
                    if (!formKey2.currentState!.validate()) {
                      return;
                    }
                    cubit.validatePassport(
                      series: seriesID.text,
                      number: numberID.text,
                    );
                    context.read<InsuranceBasicFilterCubit>().clearList(true);
                  } else {
                    if (!formKey2.currentState!.validate()) {
                      return;
                    }
                    var owner = state.vehicleInfo?.owner;
                    var phone = MaskTextInputFormatter(
                      mask: '(##) ### ## ##',
                      filter: {"#": RegExp(r'\d')},
                    ).unmaskText(phoneController.text);
                    ApplicantModel applicant = ApplicantModel(
                      phone: "998$phone",
                      passport: ApplicantPassport(
                        pinfl: owner?.pinfl,
                        series: seriesID.text.isEmpty ? null : seriesID.text,
                        number: numberID.text.isEmpty ? null : numberID.text,
                      ),
                    );
                    context.read<BookCubit>().onApplicantData(applicant);
                    context.read<BookCubit>().onVehicleNumberData(
                          vehicleNumber:
                              vehicleController.text.replaceAll(' ', ''),
                          series: series.text,
                          number: number.text,
                        );
                    context
                        .read<BookCubit>()
                        .onPaymentHolder(owner?.fullName ?? '');
                    context.read<BookCubit>().onInn(owner?.inn);
                    if (vehicleController.text.substring(0, 2) == '01') {
                      context
                          .read<InsuranceBasicFilterCubit>()
                          .selectPeriod(PERIOD_YEAR);
                      context
                          .read<InsuranceBasicFilterCubit>()
                          .selectDriversCount(true);
                      context
                          .read<InsuranceBasicFilterCubit>()
                          .setRestrictionValue(true);
                    } else {
                      context
                          .read<InsuranceBasicFilterCubit>()
                          .selectDriversCount(false);
                      context
                          .read<InsuranceBasicFilterCubit>()
                          .setRestrictionValue(false);
                    }

                    context
                        .read<ManageInsuranceStackViewsCubit>()
                        .changeIndex(1);
                    // context.read<ContractInformationCubit>().loadContractInfo(
                    //       productId: widget.arguments.id,
                    //       request: ContractInfoRequest(
                    //         region: state.vehicleInfo?.region ??
                    //             widget.arguments.request.region,
                    //         period: widget.arguments.request.period,
                    //         isVip: widget.arguments.request.isVip,
                    //         vehicleType: widget.arguments.request.vehicleType,
                    //         startDate:
                    //             DateFormat('yyyy-MM-dd').format(DateTime.now()),
                    //       ),
                    //     );

                    context
                        .read<InsuranceBasicFilterCubit>()
                        .selectRegion(state.vehicleInfo?.region);
                    context.read<InsuranceBasicFilterCubit>().selectVehicleType(
                        state.vehicleInfo?.vehicle?.type?.value ?? 0);
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
