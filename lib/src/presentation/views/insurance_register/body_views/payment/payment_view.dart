import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../components/custom_button.dart';
import 'widgets/insurance_prices.dart';
import 'widgets/payment_types.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: const [
          ContractPrice(),
          SizedBox(height: 24),
          PaymentTypes(),
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
        child: CustomButton(
          text: AppLocalizations.of(context).next,
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.cardInput);
          },
        ),
      ),
    );
  }
}
