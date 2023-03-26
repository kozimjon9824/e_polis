import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/data/models/book/book_model.dart';
import 'package:e_polis/src/presentation/components/snackbars.dart';
import 'package:e_polis/src/presentation/cubits/book/book_cubit.dart';
import 'package:e_polis/src/presentation/cubits/contract_information/contract_information_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../../data/models/contract_information/request/contract_info_request.dart';
import '../../../../components/custom_button.dart';
import '../../../../cubits/insurance_basic_filter/insurance_basic_filter_cubit.dart';
import '../../../../cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';
import '../../../insurance_basic_filter/widget/three_button.dart';
import '../../../insurcance_details/insurance_details.dart';
import 'widgets/contract_detail.dart';

class ContactInfoView extends StatefulWidget {
  const ContactInfoView({Key? key, required this.arguments}) : super(key: key);
  final InsurancePageArguments arguments;

  @override
  State<ContactInfoView> createState() => _ContactInfoViewState();
}

class _ContactInfoViewState extends State<ContactInfoView> {
  final dateController = TextEditingController(
      text: DateFormat('dd.MM.yyyy').format(DateTime.now()));
  final formKey = GlobalKey<FormState>();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<ContractInformationCubit>()
        ..loadContractInfo(
            productId: widget.arguments.id,
            request: ContractInfoRequest(
                region: widget.arguments.request.region,
                period: widget.arguments.request.period,
                isVip: widget.arguments.request.isVip,
                vehicleType: widget.arguments.request.vehicleType,
                startDate: DateFormat('yyyy-MM-dd').format(DateTime.now()))),
      child: BlocConsumer<ContractInformationCubit, ContractInformationState>(
        listenWhen: (pre, cur) => cur.status == StateStatus.error,
        listener: (context, contractState) {
          if (contractState.status == StateStatus.error) {
            showErrorMessage(
                context, contractState.failure.getLocalizedMessage(context));
          }
        },
        builder: (context, contractState) {
          final contractCubit = context.read<ContractInformationCubit>();
          return BlocConsumer<InsuranceBasicFilterCubit,
              InsuranceBasicFilterState>(
            listenWhen: (pre, curr) =>
                pre.basicFilterRequest.period != curr.basicFilterRequest.period,
            listener: (context, filterState) {
              var filterData = filterState.basicFilterRequest;
              if (formKey.currentState!.validate()) {
                var date = dateConverter(
                    date: dateController.text,
                    inFormat: 'dd.MM.yyyy',
                    outFormat: 'yyyy-MM-dd');

                var contract = ContractInfoRequest(
                    region: filterData.region,
                    period: filterData.period,
                    isVip: filterData.isVip,
                    vehicleType: filterData.vehicleType,
                    startDate: date);
                contractCubit.loadContractInfo(
                    productId: widget.arguments.id, request: contract);
              }
            },
            builder: (context, filterState) {
              var filterData = filterState.basicFilterRequest;
              return Scaffold(
                body: ListView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  children: [
                    const ThreeButton(),
                    const SizedBox(height: 20),
                    Form(
                      key: formKey,
                      child: ContractDetails(
                        dateController: dateController,
                        contract: contractState.contract,
                        focusNode: focusNode,
                        onClear: () {
                          contractCubit.onClear();
                        },
                        onRequest: () {
                          if (formKey.currentState!.validate()) {
                            focusNode.unfocus();
                            var date = dateConverter(
                                date: dateController.text,
                                inFormat: 'dd.MM.yyyy',
                                outFormat: 'yyyy-MM-dd');
                            var contract = ContractInfoRequest(
                                region: filterData.region,
                                period: filterData.period,
                                isVip: filterData.isVip,
                                vehicleType: filterData.vehicleType,
                                startDate: date);
                            contractCubit.loadContractInfo(
                                productId: widget.arguments.id,
                                request: contract);
                          }
                        },
                      ),
                    )
                  ],
                ),
                bottomNavigationBar: SafeArea(
                  minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                  child: BlocConsumer<BookCubit, BookState>(
                    listenWhen: (pre, cur) =>
                        cur.status == StateStatus.error ||
                        cur.status == StateStatus.success,
                    listener: (context, bookState) {
                      if (bookState.status == StateStatus.error) {
                        showErrorMessage(context,
                            bookState.failure.getLocalizedMessage(context));
                      }
                      // if (bookState.status == StateStatus.success) {
                      //   showSuccessMessage(
                      //       context, AppLocalizations.of(context).success);
                      //   context
                      //       .read<ManageInsuranceStackViewsCubit>()
                      //       .changeIndex(3);
                      // }
                    },
                    builder: (context, bookState) {
                      final bookCubit = context.read<BookCubit>();
                      return CustomButton(
                        text: AppLocalizations.of(context).next,
                        isLoading: (bookState.status == StateStatus.loading) ||
                            (contractState.status == StateStatus.loading),
                        onTap: () {
                          focusNode.unfocus();
                          if (!formKey.currentState!.validate()) {
                            return;
                          }
                          var date = dateConverter(
                              date: dateController.text,
                              inFormat: 'dd.MM.yyyy',
                              outFormat: 'yyyy-MM-dd');
                          if (contractState.contract == null) {
                            var contract = ContractInfoRequest(
                                region: filterData.region,
                                period: filterData.period,
                                isVip: filterData.isVip,
                                vehicleType: filterData.vehicleType,
                                startDate: date);
                            contractCubit.loadContractInfo(
                                productId: widget.arguments.id,
                                request: contract);
                          } else {
                            var calculation = CalculationModel(
                              region: filterData.region,
                              period: filterData.period,
                              isVip: filterData.isVip,
                              vehicleType: filterData.vehicleType,
                            );
                            bookCubit.onCalculationData(calculation);
                            bookCubit.onStartDate(date);
                            bookCubit.contractInfoData(contractState.contract);
                            context
                                .read<ManageInsuranceStackViewsCubit>()
                                .changeIndex(3);
                            // bookCubit.bookInsurance(id: widget.arguments.id);
                          }
                        },
                      );
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    dateController.dispose();
    focusNode.dispose();
  }
}
