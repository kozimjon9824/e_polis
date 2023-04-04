import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:e_polis/src/presentation/components/custom_text_field.dart';
import 'package:e_polis/src/presentation/cubits/add_product/add_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injector.dart';
import '../../components/custom_button.dart';
import '../../components/custom_mask.dart';
import '../../components/drop_down_button.dart';
import '../../components/snackbars.dart';
import '../../cubits/my_current_products/current_products_cubit.dart';
import '../../cubits/my_product_tab_controller/product_tab_manager_cubit.dart';

class AddPolisPage extends StatefulWidget {
  const AddPolisPage({Key? key}) : super(key: key);

  @override
  State<AddPolisPage> createState() => _AddPolisPageState();
}

class _AddPolisPageState extends State<AddPolisPage> {
  final insuranceController = TextEditingController();
  final carController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final focusNodeVehicleNum = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<AddProductCubit>(),
      child: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context).addPolis)),
        body: Form(
          key: formKey,
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            children: [
              Text(
                AppLocalizations.of(context).youCanAddPolis,
                style: AppTextStyles.styleW700S18Grey9
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 22),
              DropDownButton<String>(
                label: AppLocalizations.of(context).typePolis,
                value: 'ОСАГО',
                items: ['ОСАГО']
                    .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child:
                            Text(item, style: AppTextStyles.styleW400S14Grey6)))
                    .toList(),
              ),
              const SizedBox(height: 14),
              CustomTextField(
                label: AppLocalizations.of(context).seriesNumberPolis,
                hintText: 'ААА 1234ABCD',
                textInputAction: TextInputAction.next,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z\d ]')),
                ],
                textEditingController: insuranceController,
                textCapitalization: TextCapitalization.characters,
                validator: (value) => value!.isEmpty
                    ? AppLocalizations.of(context).notDoEmpty
                    : null,
              ),
              const SizedBox(height: 14),
              CustomTextField(
                label: AppLocalizations.of(context).vehicleNumber,
                hintText: '01 A 000 AA or 01 777 AAA',
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.visiblePassword,
                textCapitalization: TextCapitalization.characters,
                textEditingController: carController,
                focusNode: focusNodeVehicleNum,
                onFieldSubmitted: (_) => focusNodeVehicleNum.unfocus(),
                validator: (value) => (value!.length < 7)
                    ? AppLocalizations.of(context).invalidLength
                    : null,
                // validator: (value) => (value!.length < 10 ||
                //         (value.length == 10 &&
                //             !RegExp('[0-9]').hasMatch(value.substring(3, 4))))
                //     ? AppLocalizations.of(context).invalidLength
                //     : null,
                inputFormatters: [
                  // SpecialMaskTextInputFormatter(),
                  UpperCaseTextFormatter(),
                ],
                onChange: (value) {
                  if (value.length == 10) {
                    if (RegExp('[0-9]').hasMatch(value.substring(3, 4))) {
                      focusNodeVehicleNum.unfocus();
                    }
                  }
                  if (value.length == 11) {
                    focusNodeVehicleNum.unfocus();
                  }
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BlocConsumer<AddProductCubit, AddProductState>(
          listener: (context, state) {
            state.whenOrNull(
                error: (failure) => showErrorMessage(
                    context, failure.getLocalizedMessage(context)),
                loaded: () {
                  Navigator.pop(context);
                  context.read<CurrentProductsCubit>().loadData();
                  context.read<ProductTabManagerCubit>().changeTab(0);
                  showSuccessMessage(
                      context, AppLocalizations.of(context).successfullyAdded);
                });
          },
          builder: (context, state) {
            return SafeArea(
              minimum: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: CustomButton(
                text: AppLocalizations.of(context).addPolis,
                isLoading: state == const AddProductState.loading(),
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    context.read<AddProductCubit>().addProduct(
                          insuranceNumber: insuranceController.text,
                          carNumber: carController.text.replaceAll(' ', ''),
                        );
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    insuranceController.dispose();
    carController.dispose();
    focusNodeVehicleNum.dispose();
  }
}
