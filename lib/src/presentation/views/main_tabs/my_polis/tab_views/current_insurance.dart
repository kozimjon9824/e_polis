import 'package:e_polis/src/presentation/components/error_view.dart';
import 'package:e_polis/src/presentation/cubits/my_current_products/current_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../components/loading.dart';
import '../widgets/insurance_details.dart';
import '../widgets/unauth_polis.dart';

class CurrentInsuranceView extends StatelessWidget {
  const CurrentInsuranceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentProductsCubit, CurrentProductsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const UnAuthPolis(),
          loading: () => const LoadingWidget(),
          loaded: (data) => RefreshIndicator(
              onRefresh: () async {
                await context.read<CurrentProductsCubit>().loadData(true);
              },
              child: CurrentSingleProduct(productList: data)),
          error: (failure) => ErrorView(
              errorText: failure.getLocalizedMessage(context),
              onTap: () {
                context.read<CurrentProductsCubit>().loadData();
              }),
        );
      },
    );
  }
}
