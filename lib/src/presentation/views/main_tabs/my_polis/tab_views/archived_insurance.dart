import 'package:e_polis/src/presentation/cubits/my_archived_product/archived_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../components/error_view.dart';
import '../../../../components/loading.dart';
import '../widgets/insurance_details.dart';
import '../widgets/unauth_polis.dart';

class ArchivedInsuranceView extends StatelessWidget {
  const ArchivedInsuranceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArchivedProductsCubit, ArchivedProductsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const UnAuthPolis(),
          loading: () => const LoadingWidget(),
          loaded: (data) => RefreshIndicator(
            onRefresh: () async {
              await context.read<ArchivedProductsCubit>().loadData(true);
            },
            child: ArchivedSingleProduct(productList: data),
          ),
          error: (failure) => ErrorView(
            errorText: failure.getLocalizedMessage(context),
            onTap: () {
              context.read<ArchivedProductsCubit>().loadData();
            },
          ),
        );
      },
    );
  }
}
