import 'package:e_polis/src/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../components/custom_button.dart';
import '../../../../cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';
import '../../../../cubits/travel_booking/travel_booking_cubit.dart';
import '../../../insurance_register/widgets/animated_container.dart';
import 'widgets/applicant_children.dart';

class ApplicantInputsView extends StatefulWidget {
  const ApplicantInputsView({Key? key}) : super(key: key);

  @override
  State<ApplicantInputsView> createState() => _ApplicantInputsViewState();
}

class _ApplicantInputsViewState extends State<ApplicantInputsView> {
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  final TextEditingController dateController = TextEditingController();
  final TextEditingController licenseSeries = TextEditingController();
  final TextEditingController licenseNumber = TextEditingController();
  final TextEditingController innController = TextEditingController();

  final FocusNode firstNameFocus = FocusNode();
  final FocusNode lastNameFocus = FocusNode();
  final FocusNode addressFocus = FocusNode();
  final FocusNode phoneFocus = FocusNode();

  final FocusNode dateFocus = FocusNode();
  final FocusNode licenseSeriesNode = FocusNode();
  final FocusNode licenseNumberNode = FocusNode();
  final FocusNode innFocusNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TravelBookingCubit, TravelBookingState>(
      listener: (context, state) {
        if (state.status == StateStatus.success) {
          context.read<ManageInsuranceStackViewsCubit>().changeIndex(2);
        }
      },
      builder: (context, state) {
        var cubit = context.read<TravelBookingCubit>();
        return Scaffold(
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            children: [
              AnimatedRoundContainer(
                title: AppLocalizations.of(context).travelApplicant,
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
                      addressController: addressController,
                      phoneController: phoneController,
                      firstNameController: firstNameController,
                      lastNameController: lastNameController,
                      dateController: dateController,
                      licenseSeries: licenseSeries,
                      licenseNumber: licenseNumber,
                      innController: innController,
                      addressFocus: addressFocus,
                      phoneFocus: phoneFocus,
                      firstNameFocus: firstNameFocus,
                      lastNameFocus: lastNameFocus,
                      dateFocus: dateFocus,
                      licenseNumberNode: licenseNumberNode,
                      licenseSeriesNode: licenseSeriesNode,
                      innFocusNode: innFocusNode,
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
                if (formKey.currentState!.validate()) {
                  var phone = MaskTextInputFormatter(
                    mask: '(##) ### ## ##',
                    filter: {"#": RegExp(r'\d')},
                  ).unmaskText(phoneController.text);

                  cubit.onApplicantData(
                    fName: firstNameController.text,
                    lName: lastNameController.text,
                    address: addressController.text,
                    phone: '998$phone',
                    bDate: dateController.text,
                    passportSeries: licenseSeries.text,
                    passportNumber: licenseNumber.text,
                    inn: innController.text,
                  );
                }
              },
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    addressController.dispose();
    phoneController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    dateController.dispose();
    licenseSeries.dispose();
    licenseNumber.dispose();
    innController.dispose();

    firstNameFocus.dispose();
    lastNameFocus.dispose();
    addressFocus.dispose();
    phoneFocus.dispose();
    dateFocus.dispose();
    licenseSeriesNode.dispose();
    licenseNumberNode.dispose();
    innFocusNode.dispose();
  }
}
