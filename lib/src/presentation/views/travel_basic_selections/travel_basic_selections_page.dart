import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/utils/helper_models.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/presentation/components/snackbars.dart';
import 'package:e_polis/src/presentation/cubits/travel_attributes/travel_attributes_cubit.dart';
import 'package:e_polis/src/presentation/views/travel_basic_selections/widgets/country_select_widget.dart';
import 'package:e_polis/src/presentation/views/travel_basic_selections/widgets/traveller_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../../generated/l10n.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../data/models/multi_days/multi_days.dart';
import '../../../data/models/policy_type/policy_type.dart';
import '../../../data/models/programms/programms.dart';
import '../../../data/models/travelers_type/travelers_type.dart';
import '../../../data/models/trip_purpose/trip_purpose.dart';
import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';
import '../../components/drop_down_button.dart';
import '../../components/loading.dart';

class TravelBasicSelectionPage extends StatefulWidget {
  const TravelBasicSelectionPage({Key? key}) : super(key: key);

  @override
  State<TravelBasicSelectionPage> createState() =>
      _TravelBasicSelectionPageState();
}

class _TravelBasicSelectionPageState extends State<TravelBasicSelectionPage> {
  final formKey = GlobalKey<FormState>();

  final dateController1 = TextEditingController();
  final dateController2 = TextEditingController();

  final focusNodeDate1 = FocusNode();
  final focusNodeDate2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final local = AppLocalizations.of(context);
    return BlocProvider(
      create: (context) => inject<TravelAttributesCubit>()..loadAtt(),
      child: BlocConsumer<TravelAttributesCubit, TravelAttributesState>(
        listener: (context, state) {
          if (state.status == StateStatus.success) {
            var travelAtt = state.travelAttModel;
            var newTravelAtt = travelAtt?.copyWith(productId: productId);
            Navigator.pushNamed(
              context,
              AppRoutes.travelInsDetails,
              arguments: newTravelAtt,
            );
          }
          if (state.status == StateStatus.error) {
            showErrorMessage(
                context, state.failure.getLocalizedMessage(context));
          }
          if(state.status == StateStatus.initial){
            dateController2.text = state.travelAttModel?.endDate??'';
          }
        },
        builder: (context, state) {
          final cubit = context.read<TravelAttributesCubit>();
          if (state.status == StateStatus.loading) {
            return const LoadingWidget();
          }
          return Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context).onlineInsuranceTravel),
            ),
            body: SafeArea(
              child: Form(
                key: formKey,
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    //  Desc(
                    //   desc:AppLocalizations.of(context).travelInsDesc
                    // ),
                    // const SizedBox(height: 20),
                    DropDownButton<PolicyTypeModel>(
                      label: AppLocalizations.of(context).typePolis,
                      value: state.travelAttModel?.policyType,
                      items: (state.policyType?.items ?? [])
                          .map((item) => DropdownMenuItem<PolicyTypeModel>(
                              value: item,
                              child: Text(
                                item.name ?? '',
                                style: AppTextStyles.styleW400S14Grey6,
                              )))
                          .toList(),
                      onChanged: (value) {
                        cubit.selectPolicyType(value!);
                      },
                      errorText: local.mustNotEmptyFailure,
                    ),
                    if (state.travelAttModel?.policyType?.id == 1)
                      const SizedBox(height: 20),
                    if (state.travelAttModel?.policyType?.id == 1)
                      DropDownButton<MultiDayModel>(
                        value: state.travelAttModel?.multiDays,
                        label: AppLocalizations.of(context).travelDays,
                        items: (state.multiDays?.items ?? [])
                            .map((item) => DropdownMenuItem<MultiDayModel>(
                                value: item,
                                child: Text(
                                  item.name ?? '',
                                  style: AppTextStyles.styleW400S14Grey6,
                                )))
                            .toList(),
                        onChanged: (value) {
                          cubit.selectMultiDays(value!);
                        },
                        errorText: local.mustNotEmptyFailure,
                      ),
                    const SizedBox(height: 20),
                    CustomDatePickTextField(
                      label: AppLocalizations.of(context).travelStartDate,
                      hintText: '30.12.2022',
                      keyboardType: TextInputType.datetime,
                      textEditingController: dateController1,
                      textInputAction: TextInputAction.done,
                      onFieldSubmitted: (_) => focusNodeDate2.requestFocus(),
                      focusNode: focusNodeDate1,
                      validator: (value) => (value!.length < 10)
                          ? AppLocalizations.of(context).enterDate
                          : null,
                      dateFormat: 'dd.MM.yyyy',
                      onChange: (value) {
                        if (value.length == 10) {
                          cubit.selectStartDate(value);
                          focusNodeDate1.unfocus();
                        }
                      },
                      inputFormatters: [
                        MaskTextInputFormatter(
                          mask: '##.##.####',
                          initialText: dateController1.text.replaceAll('.', ''),
                          type: MaskAutoCompletionType.eager,
                          filter: {"#": RegExp(r'\d')},
                        )
                      ],
                      onDate: (v) {
                        cubit.selectStartDate(dateController1.text);
                        focusNodeDate1.unfocus();
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomDatePickTextField(
                      label: AppLocalizations.of(context).travelEndDate,
                      hintText: '30.12.2022',
                      keyboardType: TextInputType.datetime,
                      textEditingController: dateController2,
                      textInputAction: TextInputAction.done,
                      onFieldSubmitted: (_) => focusNodeDate2.unfocus(),
                      focusNode: focusNodeDate2,
                      readOnly: (state.travelAttModel?.policyType?.id == 1),
                      hideCalendar: (state.travelAttModel?.policyType?.id == 1),
                      validator: (value) => (value!.length < 10)
                          ? AppLocalizations.of(context).enterDate
                          : null,
                      dateFormat: 'dd.MM.yyyy',
                      onChange: (value) {
                        if (value.length == 10) {
                          cubit.selectEndDate(value);
                          focusNodeDate2.unfocus();
                        }
                      },
                      inputFormatters: [
                        MaskTextInputFormatter(
                          mask: '##.##.####',
                          initialText: dateController2.text.replaceAll('.', ''),
                          type: MaskAutoCompletionType.eager,
                          filter: {"#": RegExp(r'\d')},
                        )
                      ],
                      onDate: (v) {
                        focusNodeDate2.unfocus();
                        cubit.selectEndDate(dateController2.text);
                      },
                    ),

                    const SizedBox(height: 20),
                    Text(
                      AppLocalizations.of(context).travelCountry,
                      style: AppTextStyles.styleW600S14Grey9,
                    ),
                    const SizedBox(height: 6),
                    const CountrySelectWidget(),
                    const SizedBox(height: 20),
                    DropDownButton<ProgramModel>(
                      value: state.travelAttModel?.programs,
                      label: AppLocalizations.of(context).travelProgram,
                      items: (state.isShengen
                              ? (state.programs?.items
                                      ?.where((element) =>
                                          shengenPrograms.contains(element.id!))
                                      .toList() ??
                                  [])
                              : state.programs?.items ?? [])
                          .map((item) => DropdownMenuItem<ProgramModel>(
                              value: item,
                              child: Text(
                                item.name ?? '',
                                style: AppTextStyles.styleW400S14Grey6,
                              )))
                          .toList(),
                      onChanged: (value) {
                        cubit.selectProgram(value!);
                      },
                      errorText: local.mustNotEmptyFailure,
                    ),
                    const SizedBox(height: 20),
                    DropDownButton<TripModel>(
                      value: state.travelAttModel?.tripPurpose,
                      label: AppLocalizations.of(context).travelPurpose,
                      items: (state.tripPurpose?.items ?? [])
                          .map((item) => DropdownMenuItem<TripModel>(
                              value: item,
                              child: Text(
                                item.name ?? '',
                                style: AppTextStyles.styleW400S14Grey6,
                              )))
                          .toList(),
                      onChanged: (value) {
                        cubit.selectTripPurpose(value!);
                      },
                      errorText: local.mustNotEmptyFailure,
                    ),
                    const SizedBox(height: 20),
                    DropDownButton<TravelTypeModel>(
                      value: state.travelAttModel?.travelersType,
                      label: AppLocalizations.of(context).traveller,
                      items: (state.travelersType?.items ?? [])
                          .map((item) => DropdownMenuItem<TravelTypeModel>(
                              value: item,
                              child: Text(
                                item.name ?? '',
                                style: AppTextStyles.styleW400S14Grey6,
                              )))
                          .toList(),
                      onChanged: (value) {
                        cubit.selectTravellersType(value!);
                      },
                      errorText: local.mustNotEmptyFailure,
                    ),
                    const SizedBox(height: 20),
                    DropDownButton<int>(
                      value: (state.travelAttModel?.travellers.length ?? 0),
                      label: AppLocalizations.of(context).travellers_count,
                      items: ([1, 2, 3, 4, 5, 6])
                          .map((item) => DropdownMenuItem<int>(
                              value: item,
                              child: Text(
                                item.toString() ?? '',
                                style: AppTextStyles.styleW400S14Grey6,
                              )))
                          .toList(),
                      onChanged: (value) {
                        cubit.selectCountOfTravellers(value!);
                      },
                      errorText: local.mustNotEmptyFailure,
                    ),
                    const SizedBox(height: 20),
                    for (int index = 0;
                        index < (state.travelAttModel?.travellers.length ?? 0);
                        index++)
                      TravellerInput(
                        index: index + 1,
                        value: state.travelAttModel?.travellers[index],
                        onClear: () {
                          cubit.removeTravellers(index);
                        },
                        dateController:
                            state.travelAttModel?.textControllers?[index],
                        onChange: (value) {
                          cubit.onBirthDateTraveller(
                              index: index, text: value!);
                        },
                        selectedTraveller:
                            state.travelAttModel?.selectedTraveller,
                        onChangeValue: (int? index) {
                          cubit.onChangeApplicant(index: index ?? 0);
                        },
                      ),
                    const SizedBox(height: 20),
                    // CustomOutlineButton(
                    //   text: AppLocalizations.of(context).addTraveller,
                    //   onTap: () {
                    //     cubit.addTravellers();
                    //   },
                    // ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: SafeArea(
              minimum: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: CustomButton(
                text: AppLocalizations.of(context).priceCalculation,
                onTap: () {
                  if (!formKey.currentState!.validate()) {
                    return;
                  } else {
                    cubit.validSelection();
                  }
                },
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    dateController1.dispose();
    dateController2.dispose();
    focusNodeDate1.dispose();
    focusNodeDate2.dispose();
  }
}
