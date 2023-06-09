import 'package:flutter/material.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../components/custom_button.dart';
import '../../../payment_success/payment_success.dart';
import 'widgets/insurance_prices.dart';
import 'widgets/payment_types.dart';

class TravellerPaymentView extends StatelessWidget {
  const TravellerPaymentView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: const [
          TravelContractPrice(),
          SizedBox(height: 24),
          TravelPaymentTypes(),
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
        child: CustomButton(
          text: AppLocalizations.of(context).next,
          onTap: () {
            Navigator.pushNamed(
              context,
              AppRoutes.paymentSuccess,
              arguments: SuccessPageArgs(
                name: 'Name',
                amount: numberFormat(0),
              ),
            );

            // bookCubit.onPaymentType("CLICK");
            // bookCubit.bookInsurance(id: arguments.id);
          },
        ),
      ),
    );
  }
}
