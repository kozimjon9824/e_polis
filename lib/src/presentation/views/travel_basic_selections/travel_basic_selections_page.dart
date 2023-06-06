import 'package:e_polis/src/presentation/views/travel_basic_selections/widgets/traveller_input.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../../generated/l10n.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';
import '../../components/drop_down_button.dart';
import '../../components/snackbars.dart';
import '../insurance_register/body_views/general_info/widgets/driver_info.dart';
import 'widgets/desc.dart';

class TravelBasicSelectionPage extends StatefulWidget {
  const TravelBasicSelectionPage({Key? key}) : super(key: key);

  @override
  State<TravelBasicSelectionPage> createState() =>
      _TravelBasicSelectionPageState();
}

class _TravelBasicSelectionPageState extends State<TravelBasicSelectionPage> {
  final formKey = GlobalKey<FormState>();
  final dateController = TextEditingController(
      text: DateFormat('dd.MM.yyyy').format(DateTime.now()));
  final focusNodeDate = FocusNode();

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Онлайн туристическая страховка'),
      ),
      body: SafeArea(
        child: Form(
          key: formKey,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Desc(
                desc:
                    'Перед использованием Решения (см. определение ниже) внимательно ознакомьтесь с условиями данного Лицензионного соглашения с конечным пользователем (далее — «Соглашение»). Данный текст является юридически обязывающим договором. Давая согласие в электронной форме, устанавливая Решение или используя Решение, вы принимаете все условия настоящего Соглашения от своего лица и любой организации и физического лица, которое вы представляете или для чьего Устройства вы приобретаете Решение (в совокупности «вы»). ',
              ),
              const SizedBox(height: 20),
              DropDownButton<String>(
                hint: '',
                label: 'Тип полиса',
                items: ['Однократное путешествие', 'value2']
                    .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child:
                            Text(item, style: AppTextStyles.styleW400S14Grey6)))
                    .toList(),
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              DropDownButton<String>(
                hint: '',
                label: 'Дни прибытия',
                items: [
                  '30 дней пребывания в течении 92 дней',
                  'WORKER',
                  'STUDENT',
                ]
                    .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child:
                            Text(item, style: AppTextStyles.styleW400S14Grey6)))
                    .toList(),
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              CustomDatePickTextField(
                label: 'Дата начала путешествия',
                hintText: '30.12.2022',
                keyboardType: TextInputType.datetime,
                textEditingController: dateController,
                textInputAction: TextInputAction.done,
                onFieldSubmitted: (_) => focusNodeDate.unfocus(),
                focusNode: focusNodeDate,
                validator: (value) => (value!.length < 10)
                    ? AppLocalizations.of(context).enterDate
                    : null,
                dateFormat: 'dd.MM.yyyy',
                onChange: (value) {
                  if (value.length == 10) {
                    focusNodeDate.unfocus();
                  }
                },
                inputFormatters: [
                  MaskTextInputFormatter(
                    mask: '##.##.####',
                    initialText: dateController.text.replaceAll('.', ''),
                    type: MaskAutoCompletionType.eager,
                    filter: {"#": RegExp(r'\d')},
                  )
                ],
                onDate: () {
                  focusNodeDate.unfocus();
                },
              ),
              const SizedBox(height: 20),
              CustomDatePickTextField(
                label: 'Дата окончания путешествия',
                hintText: '30.12.2022',
                keyboardType: TextInputType.datetime,
                textEditingController: dateController,
                textInputAction: TextInputAction.done,
                onFieldSubmitted: (_) => focusNodeDate.unfocus(),
                focusNode: focusNodeDate,
                validator: (value) => (value!.length < 10)
                    ? AppLocalizations.of(context).enterDate
                    : null,
                dateFormat: 'dd.MM.yyyy',
                onChange: (value) {
                  if (value.length == 10) {
                    focusNodeDate.unfocus();
                  }
                },
                inputFormatters: [
                  MaskTextInputFormatter(
                    mask: '##.##.####',
                    initialText: dateController.text.replaceAll('.', ''),
                    type: MaskAutoCompletionType.eager,
                    filter: {"#": RegExp(r'\d')},
                  )
                ],
                onDate: () {
                  focusNodeDate.unfocus();
                },
              ),
              const SizedBox(height: 20),
              DropDownButton<String>(
                hint: '',
                label: 'Где вы хотите путешествовать?',
                items: ['США', 'UK']
                    .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child:
                            Text(item, style: AppTextStyles.styleW400S14Grey6)))
                    .toList(),
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              DropDownButton<String>(
                hint: '',
                label: 'Программа',
                items: ['STANDART']
                    .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child:
                            Text(item, style: AppTextStyles.styleW400S14Grey6)))
                    .toList(),
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              DropDownButton<String>(
                hint: '',
                label: 'Цель поездки',
                items: ['Туризм/Служебная командировка']
                    .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child:
                            Text(item, style: AppTextStyles.styleW400S14Grey6)))
                    .toList(),
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              DropDownButton<String>(
                hint: '',
                label: 'Путешественники',
                items: ['Индивидуальный']
                    .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child:
                            Text(item, style: AppTextStyles.styleW400S14Grey6)))
                    .toList(),
                onChanged: (value) {},
              ),
              const SizedBox(height: 20),
              TravellerInput(dateController: TextEditingController()),
              const SizedBox(height: 20),
              CustomOutlineButton(
                  text: 'Добавить путешественника', onTap: () {}),
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
            }
            if (true) {
              Navigator.pushNamed(context, AppRoutes.travelInsDetails);
            } else {
              showErrorMessage(
                  context, AppLocalizations.of(context).selectBasicFields);
            }
          },
        ),
      ),
    );
  }
}
