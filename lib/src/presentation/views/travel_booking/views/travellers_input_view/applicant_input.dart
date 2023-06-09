import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../components/custom_button.dart';
import '../../../../cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';
import '../../../insurance_register/widgets/animated_container.dart';
import 'widgets/applicant_children.dart';

class ApplicantInputsView extends StatefulWidget {
  const ApplicantInputsView({Key? key}) : super(key: key);

  @override
  State<ApplicantInputsView> createState() => _ApplicantInputsViewState();
}

class _ApplicantInputsViewState extends State<ApplicantInputsView> {
  final TextEditingController fioController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();
  final FocusNode fioFocus = FocusNode();
  final FocusNode addressFocus = FocusNode();
  final FocusNode phoneFocus = FocusNode();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: [
          AnimatedRoundContainer(
            title: 'Информация о заявителе',
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 10,
            ),
            padding2: const EdgeInsets.fromLTRB(10, 0, 10, 16),
            showChildren2: false,
            clearText: AppLocalizations.of(context).clearData,
            onClear: () {},
            children: [
              Form(
                key: formKey,
                child: ApplicantInputs(
                  fioController: fioController,
                  addressController: addressController,
                  phoneController: phoneController,
                  fioFocus: fioFocus,
                  addressFocus: addressFocus,
                  phoneFocus: phoneFocus,
                ),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
        child: CustomButton(
          text: AppLocalizations.of(context).next,
          onTap: () {
            context.read<ManageInsuranceStackViewsCubit>().changeIndex(2);
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    fioController.dispose();
    addressController.dispose();
    phoneController.dispose();
    fioFocus.dispose();
    addressFocus.dispose();
    phoneFocus.dispose();
  }
}
