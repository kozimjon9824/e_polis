import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import '../../../../../../generated/l10n.dart';
import '../../../../../core/utils/helper_models.dart';
import '../../../../components/custom_button.dart';
import '../../../../cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';
import 'widgets/contract_info.dart';

class ContractInfoView extends StatelessWidget {
  const ContractInfoView({
    Key? key,
    required this.travelAttModel,
  }) : super(key: key);
  final TravelAttModel travelAttModel;

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          children: [
            ContractInfo(travelAttModel: travelAttModel),
          ],
        ),
        bottomNavigationBar: SafeArea(
          minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
          child: CustomButton(
            text: AppLocalizations.of(context).next,
            onTap: () {
              context.read<ManageInsuranceStackViewsCubit>().changeIndex(3);
            },
          ),
        ),
      ),
    );
  }
}
