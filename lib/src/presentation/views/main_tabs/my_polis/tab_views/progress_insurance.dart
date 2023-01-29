import 'package:e_polis/src/presentation/cubits/my_current_products/current_products_cubit.dart';
import 'package:e_polis/src/presentation/cubits/my_progress_products/progress_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../components/error_view.dart';
import '../../../../components/loading.dart';
import '../widgets/insurance_details.dart';

class ProgressInsuranceView extends StatelessWidget {
  const ProgressInsuranceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgressProductsCubit, ProgressProductsState>(
      builder: (context, state) {
        return state.when(
            loading: () => const LoadingWidget(),
            loaded: (data) => SingleProduct(productList: data),
            error: (failure) => ErrorView(
                errorText: failure.getLocalizedMessage(context),
                onTap: () {
                  context.read<ProgressProductsCubit>().loadData();
                }));
      },
    );
  }
}
