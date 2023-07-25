import 'package:e_polis/src/presentation/cubits/travel_booking/travel_booking_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../components/custom_button.dart';
import '../../../../cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';
import '../../../insurance_register/widgets/animated_container.dart';
import 'widgets/travellers_children.dart';

class TravellersInputView extends StatefulWidget {
  const TravellersInputView({Key? key}) : super(key: key);

  @override
  State<TravellersInputView> createState() => _TravellersInputViewState();
}

class _TravellersInputViewState extends State<TravellersInputView> {
  // final seriesController = TextEditingController();
  // final numberController = TextEditingController();
  // final dateController = TextEditingController();
  // final innController = TextEditingController();
  // final fioController = TextEditingController();
  //
  // final seriesFocus = FocusNode();
  // final numberFocus = FocusNode();
  // final dateFocus = FocusNode();
  // final innFocus = FocusNode();
  // final fioFocus = FocusNode();

  // final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TravelBookingCubit, TravelBookingState>(
      builder: (context, state) {
        var cubit = context.read<TravelBookingCubit>();
        return Scaffold(
          body: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: AnimatedRoundContainer(
                  title: '${index + 1}-${AppLocalizations.of(context).singleTraveller}',
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 10,
                  ),
                  padding2: const EdgeInsets.fromLTRB(10, 0, 10, 16),
                  showChildren2: false,
                  clearText: AppLocalizations.of(context).delete,
                  onClear: () {
                    // seriesController.text = '';
                    // numberController.text = '';
                    // dateController.text = '';
                    // innController.text = '';
                    // fioController.text = '';
                    cubit.onClear(index: index);
                  },
                  children: [
                    TravellerInputs(
                      // seriesController: seriesController,
                      // numberController: numberController,
                      // dateController: dateController,
                      // innController: innController,
                      // fioController: fioController,
                      // dateFocus: dateFocus,
                      // seriesFocus: seriesFocus,
                      // numberFocus: numberFocus,
                      // innFocus: innFocus,
                      // fioFocus: fioFocus,
                      onRequest: () {
                        // if (formKey.currentState!.validate()) {}
                      },
                      initialValueBD: state.listOfTravellers?[index].birth,
                      initialValueIDSeries:
                          state.listOfTravellers?[index].idSeries,
                      initialValueIDNumber:
                          state.listOfTravellers?[index].idNumber,
                      initialValueINN: state.listOfTravellers?[index].inn,
                      initialValueFirstName:
                          state.listOfTravellers?[index].firstName,
                      initialValueLastName:
                          state.listOfTravellers?[index].lastName,
                      onChange1: (String value) {
                        cubit.onChangeBD(index: index, text: value);
                      },
                      onChange2: (String value) {
                        cubit.onIDSeries(index: index, text: value);
                      },
                      onChange3: (String value) {
                        cubit.onIDNumber(index: index, text: value);
                      },
                      onChange4: (String value) {
                        cubit.onINN(index: index, text: value);
                      },
                      onChange5: (String value) {
                        cubit.onFirstName(index: index, text: value.trim());
                      },
                      onChange6: (String value) {
                        cubit.onLastName(index: index, text: value.trim());
                      },
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (_, index) => const SizedBox(),
            itemCount: state.listOfTravellers?.length ?? 0,
          ),
          bottomNavigationBar: SafeArea(
            minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
            child: CustomButton(
              text: AppLocalizations.of(context).next,
              onTap: () {
                if (cubit.isNext()) {
                  context.read<ManageInsuranceStackViewsCubit>().changeIndex(1);
                }
              },
            ),
          ),
        );
      },
    );
  }

  // CustomOutlineButton(
  // text: 'Добавить путешественника',
  // onTap: () {},
  // )

  @override
  void dispose() {
    super.dispose();
    // seriesController.dispose();
    // numberController.dispose();
    // dateController.dispose();
    // innController.dispose();
    // fioController.dispose();
    // seriesFocus.dispose();
    // numberFocus.dispose();
    // dateFocus.dispose();
    // innFocus.dispose();
    // fioFocus.dispose();
  }
}
