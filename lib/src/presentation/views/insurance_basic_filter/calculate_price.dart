import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:e_polis/src/data/models/product/product_details.dart';
import 'package:e_polis/src/presentation/cubits/product_details/product_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../components/custom_button.dart';
import '../../components/drop_down_button.dart';
import '../../components/loading.dart';
import '../../components/snackbars.dart';
import 'widget/container_switch.dart';
import 'widget/three_button.dart';
import 'widget/widgets.dart';

class InsuranceBasicFilterPage extends StatelessWidget {
  const InsuranceBasicFilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as String;
    return BlocProvider(
      create: (context) => inject<ProductDetailsCubit>()..loadData(arguments),
      child: BlocConsumer<ProductDetailsCubit, ProductDetailsState>(
        listener: (context, state) {
          state.whenOrNull(
              error: (failure) => showErrorMessage(
                  context, failure.getLocalizedMessage(context)));
        },
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => const LoadingWidget(),
              loading: () => const LoadingWidget(),
              loaded: (product) => buildScaffold(product, context));
        },
      ),
    );
  }

  Scaffold buildScaffold(
      ProductDetailsResponse? productDetails, BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(productDetails?.name ?? '')),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          children: [
            Description(text: productDetails?.description ?? ''),
            const SizedBox(height: 22),
            DropDownButton<String>(
              label: 'Регион регистрации автомобиля',
              hint: 'Выберите регион',
              items: ['Город Ташкент', 'Andijon']
                  .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: AppTextStyles.styleW400S14Grey6,
                      )))
                  .toList(),
              onChanged: (value) {},
              onSaved: (value) {},
            ),
            const SizedBox(height: 22),
            DropDownButton<String>(
              label: 'Тип автомобиля',
              hint: 'Легковые автомобили',
              items: ['Легковые автомобили', 'Yuk mashinasi']
                  .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: AppTextStyles.styleW400S14Grey6,
                      )))
                  .toList(),
              onChanged: (value) {},
              onSaved: (value) {},
            ),
            const SizedBox(height: 22),
            const ContainerSwitch(),
            const SizedBox(height: 22),
            const ThreeButton()
          ]),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomButton(
          text: 'Расчет цены',
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.basicFilterResult);
          },
        ),
      ),
    );
  }
}
