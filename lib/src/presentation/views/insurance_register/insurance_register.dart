import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/injector.dart';
import 'package:e_polis/src/presentation/cubits/book/book_cubit.dart';
import 'package:e_polis/src/presentation/cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import '../../../data/models/contract_information/request/contract_info_request.dart';
import '../../cubits/contract_information/contract_information_cubit.dart';
import '../insurcance_details/insurance_details.dart';
import 'body_views/contact_info/contract_info.dart';
import 'body_views/driver_info/driver_info_view.dart';
import 'body_views/general_info/general_info.dart';
import 'body_views/payment/payment_view.dart';
import 'widgets/stepper_widget.dart';

class InsuranceRegistrationPage extends StatefulWidget {
  const InsuranceRegistrationPage({Key? key}) : super(key: key);

  @override
  State<InsuranceRegistrationPage> createState() =>
      _InsuranceRegistrationPageState();
}

class _InsuranceRegistrationPageState extends State<InsuranceRegistrationPage> {
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as InsurancePageArguments;

    return KeyboardDismisser(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => inject<ManageInsuranceStackViewsCubit>()),
          BlocProvider(create: (context) => inject<BookCubit>()),
          BlocProvider(
            create: (context) => inject<ContractInformationCubit>()
              ..loadContractInfo(
                productId: arguments.id,
                request: ContractInfoRequest(
                  region: arguments.request.region,
                  period: arguments.request.period,
                  isVip: arguments.request.isVip,
                  vehicleType: arguments.request.vehicleType,
                  startDate: DateFormat('yyyy-MM-dd').format(DateTime.now()),
                ),
              ),
          ),
        ],
        child: BlocBuilder<ManageInsuranceStackViewsCubit,
            ManageInsuranceStackViewsState>(
          builder: (context, state) {
            return WillPopScope(
              onWillPop: () async {
                if (state.index == 0) {
                  return true;
                } else {
                  context
                      .read<ManageInsuranceStackViewsCubit>()
                      .changeIndex(state.index - 1);
                  return false;
                }
              },
              child: Scaffold(
                appBar: AppBar(
                  title: Text(AppLocalizations.of(context).bookInsurance),
                  bottom: CustomStepper(currentIndex: state.index),
                ),
                body: IndexedStack(
                  index: state.index,
                  children: [
                    GeneralInfoView(arguments: arguments),
                    DriverInfoView(),
                    ContactInfoView(arguments: arguments),
                    PaymentView(arguments: arguments),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
