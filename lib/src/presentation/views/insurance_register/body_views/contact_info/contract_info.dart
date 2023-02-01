import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/data/models/book/book_model.dart';
import 'package:e_polis/src/presentation/components/snackbars.dart';
import 'package:e_polis/src/presentation/cubits/book/book_cubit.dart';
import 'package:e_polis/src/presentation/cubits/contract_information/contract_information_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../data/models/contract_information/request/contract_info_request.dart';
import '../../../../components/custom_button.dart';
import '../../../../cubits/insurance_basic_filter/insurance_basic_filter_cubit.dart';
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
  final dateController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<ContractInformationCubit>(),
      child: BlocConsumer<ContractInformationCubit, ContractInformationState>(
        listener: (context, contractState) {
          if (contractState.status == StateStatus.error) {
            showErrorMessage(
                context, contractState.failure.getLocalizedMessage(context));
          }
        },
        builder: (context, contractState) {
          final contractCubit = context.read<ContractInformationCubit>();
          return BlocBuilder<InsuranceBasicFilterCubit,
              InsuranceBasicFilterState>(
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
                      ),
                    )
                  ],
                ),
                bottomNavigationBar: SafeArea(
                  minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                  child: BlocConsumer<BookCubit, BookState>(
                    listener: (context, bookState) {
                      if (bookState.status == StateStatus.error) {
                        showErrorMessage(context,
                            bookState.failure.getLocalizedMessage(context));
                      }
                      if (bookState.status == StateStatus.success) {
                        showSuccessMessage(
                            context, AppLocalizations.of(context).success);
                      }
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
                              inFormat: 'dd/MM/yyyy',
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
                            bookCubit.bookInsurance(id: widget.arguments.id);
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
