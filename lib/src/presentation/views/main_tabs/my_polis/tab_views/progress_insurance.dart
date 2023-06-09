import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/presentation/cubits/my_progress_products/progress_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../components/error_view.dart';
import '../../../../components/loading.dart';
import '../widgets/insurance_details.dart';
import '../widgets/unauth_polis.dart';

class ProgressInsuranceView extends StatelessWidget {
  const ProgressInsuranceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgressProductsCubit, ProgressProductsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const UnAuthPolis(),
          loading: () => const LoadingWidget(),
          loaded: (data) => RefreshIndicator(
            onRefresh: () async {
              await context.read<ProgressProductsCubit>().loadData(true);
            },
            color: AppColors.primaryColor,
            backgroundColor: AppColors.white,
            child: ProgressSingleProduct(productList: data),
          ),
          error: (failure) => ErrorView(
            errorText: failure.getLocalizedMessage(context),
            onTap: () {
              context.read<ProgressProductsCubit>().loadData();
            },
          ),
        );
      },
    );
  }
}
