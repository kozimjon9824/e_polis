import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/presentation/cubits/book/book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../components/custom_button.dart';
import '../../../../components/snackbars.dart';
import '../../../insurcance_details/insurance_details.dart';
import '../../../payment_success/payment_success.dart';
import 'widgets/insurance_prices.dart';
import 'widgets/payment_types.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key? key, required this.arguments}) : super(key: key);
  final InsurancePageArguments arguments;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookCubit, BookState>(
      listener: (context, bookState) {
        if (bookState.status == StateStatus.error) {
          showErrorMessage(
              context, bookState.failure.getLocalizedMessage(context));
        }
        if (bookState.status == StateStatus.success) {
          showSuccessMessage(context, AppLocalizations.of(context).success);

          Navigator.pushNamed(
            context,
            AppRoutes.paymentSuccess,
            arguments: SuccessPageArgs(
              name: bookState.paymentHolder ?? '',
              amount: numberFormat(((bookState.contract?.policyAmount ?? 0) +
                  (bookState.contract?.insuranceAmount ?? 0))),
            ),
          );
        }
      },
      builder: (context, state) {
        var bookCubit = context.read<BookCubit>();
        return Scaffold(
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            children: [
              ContractPrice(contract: state.contract),
              const SizedBox(height: 24),
              const PaymentTypes(),
            ],
          ),
          bottomNavigationBar: SafeArea(
            minimum: const EdgeInsets.fromLTRB(20, 0, 20, 16),
            child: CustomButton(
              isLoading: state.status == StateStatus.loading,
              text: AppLocalizations.of(context).next,
              onTap: () {
                // Navigator.pushNamed(context, AppRoutes.paymentSuccess);
                bookCubit.onPaymentType("CLICK");
                bookCubit.bookInsurance(id: arguments.id);
              },
            ),
          ),
        );
      },
    );
  }
}
