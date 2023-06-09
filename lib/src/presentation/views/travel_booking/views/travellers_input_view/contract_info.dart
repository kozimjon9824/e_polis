import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../generated/l10n.dart';
import '../../../../components/custom_button.dart';
import '../../../../cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';
import 'widgets/contract_info.dart';

class ContractInfoView extends StatelessWidget {
  const ContractInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: const [
          ContractInfo(),
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
    );
  }
}
