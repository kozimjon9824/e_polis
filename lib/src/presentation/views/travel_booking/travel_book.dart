import 'package:e_polis/src/presentation/views/travel_booking/widgets/stepper_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../generated/l10n.dart';
import '../../../../injector.dart';
import '../../cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';
import 'views/payment/payment_view.dart';
import 'views/travellers_input_view/applicant_input.dart';
import 'views/travellers_input_view/contract_info.dart';
import 'views/travellers_input_view/travellers_input.dart';

class TravelBookingPage extends StatelessWidget {
  const TravelBookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => inject<ManageInsuranceStackViewsCubit>(),
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
                bottom: TravelCustomStepper(currentIndex: state.index),
              ),
              body: IndexedStack(
                index: state.index,
                children: const [
                  TravellersInputView(),
                  ApplicantInputsView(),
                  ContractInfoView(),
                  TravellerPaymentView(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
