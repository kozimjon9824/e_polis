import 'package:e_polis/injector.dart';
import 'package:e_polis/src/presentation/cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
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
    return KeyboardDismisser(
      child: BlocProvider(
        create: (context) => inject<ManageInsuranceStackViewsCubit>(),
        child: BlocBuilder<ManageInsuranceStackViewsCubit,
            ManageInsuranceStackViewsState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Оформление страховки'),
                bottom: CustomStepper(currentIndex: state.index),
              ),
              body: IndexedStack(index: state.index, children: const [
                GeneralInfoView(),
                DriverInfoView(),
                ContactInfoView(),
                PaymentView()
              ]),
            );
          },
        ),
      ),
    );
  }
}