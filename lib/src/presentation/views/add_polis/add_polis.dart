import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:e_polis/src/presentation/components/custom_text_field.dart';
import 'package:e_polis/src/presentation/cubits/add_product/add_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injector.dart';
import '../../components/custom_button.dart';
import '../../components/custom_mask.dart';
import '../../components/drop_down_button.dart';
import '../../components/snackbars.dart';

class AddPolisPage extends StatefulWidget {
  const AddPolisPage({Key? key}) : super(key: key);

  @override
  State<AddPolisPage> createState() => _AddPolisPageState();
}

class _AddPolisPageState extends State<AddPolisPage> {
  final insuranceController = TextEditingController();
  final carController = TextEditingController();
  final formKey = GlobalKey<FormState>();

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
              Text(AppLocalizations.of(context).youCanAddPolis,
                  style: AppTextStyles.styleW700S18Grey9
                      .copyWith(fontWeight: FontWeight.w600)),
              const SizedBox(height: 22),
              DropDownButton<String>(
                  label: AppLocalizations.of(context).typePolis,
                  // hint: 'Выберите тип полиса',
                  value: 'ОСАГО',
                  items: ['ОСАГО']
                      .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: AppTextStyles.styleW400S14Grey6,
                          )))
                      .toList(),
                  onChanged: (value) {}),
              const SizedBox(height: 14),
              CustomTextField(
                label: AppLocalizations.of(context).seriesNumberPolis,
                hintText: 'ААА 1234ABCD',
                textInputAction: TextInputAction.next,
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
                textCapitalization: TextCapitalization.characters,
                textEditingController: carController,
                validator: (value) => value!.isEmpty
                    ? AppLocalizations.of(context).notDoEmpty
                    : null,
                inputFormatters: [SpecialMaskTextInputFormatter()],
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
                        carNumber: carController.text);
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
  }
}
