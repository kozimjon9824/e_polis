import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/presentation/components/snackbars.dart';
import 'package:e_polis/src/presentation/cubits/travel_booking/travel_booking_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
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

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TravelBookingCubit, TravelBookingState>(
      listener: (context, state) {
        if (state.status == StateStatus.error) {
          showErrorMessage(context, state.failure.getLocalizedMessage(context));
        }
      },
      builder: (context, state) {
        var cubit = context.read<TravelBookingCubit>();
        return KeyboardDismisser(
          child: Scaffold(
            body: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: AnimatedRoundContainer(
                    title:
                        '${index + 1}-${AppLocalizations.of(context).singleTraveller}',
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 10,
                    ),
                    padding2: const EdgeInsets.fromLTRB(10, 0, 10, 16),
                    showChildren2:  state.listOfTravellers?[index].isHide??true,
                    clearText: AppLocalizations.of(context).delete,
                    onClear: () {
                      cubit.onClear(index: index);
                    },
                    children2: [
                      TravellerInputs2(
                        onRequest: () {
                          cubit.loadInfoByPassport(index);
                        },
                        initialValueINN: state.listOfTravellers?[index].inn,
                        initialValueFirstName:
                            state.listOfTravellers?[index].firstName,
                        initialValueLastName:
                            state.listOfTravellers?[index].lastName,
                        onChange4: (String value) {
                          cubit.onINN(index: index, text: value);
                        },
                        onChange5: (String value) {
                          cubit.onFirstName(index: index, text: value.trim());
                        },
                        onChange6: (String value) {
                          cubit.onLastName(index: index, text: value.trim());
                        },
                        isDisable:
                            state.listOfTravellers?[index].isDisable ?? false,
                      )
                    ],
                    children: [
                      TravellerInputs(
                        onRequest: () {
                          cubit.loadInfoByPassport(index);
                        },
                        initialValueBD: state.listOfTravellers?[index].birth,
                        initialValueIDSeries:
                            state.listOfTravellers?[index].idSeries,
                        initialValueIDNumber:
                            state.listOfTravellers?[index].idNumber,
                        onChange1: (String value) {
                          cubit.onChangeBD(index: index, text: value);
                        },
                        onChange2: (String value) {
                          cubit.onIDSeries(index: index, text: value);
                        },
                        onChange3: (String value) {
                          cubit.onIDNumber(index: index, text: value);
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
                isLoading: state.status == StateStatus.loading,
                onTap: () {
                  if (cubit.isNext()) {
                    context.read<ManageInsuranceStackViewsCubit>().changeIndex(2);
                  }
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
