import 'package:e_polis/src/presentation/cubits/my_current_products/current_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../components/loading.dart';
import '../widgets/insurance_details.dart';

class CurrentInsuranceView extends StatelessWidget {
  const CurrentInsuranceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentProductsCubit, CurrentProductsState>(
      builder: (context, state) {
        return state.when(
            loading: () => const LoadingWidget(),
            loaded: (data) => SingleProduct(productList: data),
            error: (failure) => const LoadingWidget());
      },
    );
  }
}