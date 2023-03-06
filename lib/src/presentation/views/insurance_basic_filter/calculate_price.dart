import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/presentation/components/loading.dart';
import 'package:e_polis/src/presentation/components/snackbars.dart';
import 'package:e_polis/src/presentation/cubits/drop_down_values/drop_down_values_cubit.dart';
import 'package:e_polis/src/presentation/cubits/insurance_basic_filter/insurance_basic_filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/main/main.dart';
import '../../components/custom_button.dart';
import '../../components/drop_down_button.dart';
import 'widget/container_switch.dart';
import 'widget/three_button.dart';
import 'widget/widgets.dart';

class InsuranceBasicFilterPage extends StatefulWidget {
  const InsuranceBasicFilterPage({Key? key}) : super(key: key);

  @override
  State<InsuranceBasicFilterPage> createState() =>
      _InsuranceBasicFilterPageState();
}

class _InsuranceBasicFilterPageState extends State<InsuranceBasicFilterPage> {
  @override
  void initState() {
    super.initState();
    context.read<DropDownValuesCubit>().loadValues();
  }

  @override
  Widget build(BuildContext context) {
    final productData =
        ModalRoute.of(context)!.settings.arguments as ProductData;
    return BlocBuilder<InsuranceBasicFilterCubit, InsuranceBasicFilterState>(
      builder: (context, state) {
        var cubit = context.read<InsuranceBasicFilterCubit>();
        return WillPopScope(
          onWillPop: () {
            cubit.clearData();
            return Future.value(true);
          },
          child: Scaffold(
            appBar: AppBar(title: Text(productData.name ?? '')),
            body: BlocBuilder<DropDownValuesCubit, DropDownValuesState>(
              builder: (context, dropDownState) {
                var dropDownCubit = context.read<DropDownValuesCubit>();
                if (dropDownState.status == StateStatus.loading) {
                  return const LoadingWidget();
                }
                return ListView(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 16),
                    children: [
                      Description(text: productData.description ?? ''),
                      const SizedBox(height: 22),
                      DropDownButton<String>(
                        label: AppLocalizations.of(context)
                            .vehicleRegistrationRegion,
                        hint: AppLocalizations.of(context).selectRegion,
                        items: dropDownState.regionsList
                            .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(item,
                                    style: AppTextStyles.styleW400S14Grey6)))
                            .toList(),
                        onChanged: (value) {
                          int key = dropDownCubit.getRegionKey(value ?? '');
                          cubit.selectRegion(key);
                        },
                      ),
                      const SizedBox(height: 22),
                      DropDownButton<String>(
                          label: AppLocalizations.of(context).typeVehicle,
                          hint: AppLocalizations.of(context).selectTypeVehicle,
                          items: dropDownState.vehiclesList
                              .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item,
                                      style: AppTextStyles.styleW400S14Grey6)))
                              .toList(),
                          onChanged: (value) {
                            int key =
                                dropDownCubit.getVehicleTypeKey(value ?? '');
                            cubit.selectVehicleType(key);
                          }),
                      const SizedBox(height: 22),
                      const ContainerSwitch(),
                      const SizedBox(height: 22),
                      const ThreeButton()
                    ]);
              },
            ),
            bottomNavigationBar: SafeArea(
              minimum: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: CustomButton(
                text: AppLocalizations.of(context).priceCalculation,
                onTap: () {
                  if (cubit.isValid()) {
                    Navigator.pushNamed(context, AppRoutes.basicFilterResult);
                  } else {
                    showErrorMessage(context,
                        AppLocalizations.of(context).selectBasicFields);
                  }
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
