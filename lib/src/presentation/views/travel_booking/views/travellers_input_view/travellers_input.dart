import 'package:flutter/material.dart';
import '../../../../../../generated/l10n.dart';
import '../../../insurance_register/widgets/animated_container.dart';
import 'widgets/children.dart';

class TravellersInputView extends StatefulWidget {
  const TravellersInputView({Key? key}) : super(key: key);

  @override
  State<TravellersInputView> createState() => _TravellersInputViewState();
}

class _TravellersInputViewState extends State<TravellersInputView> {
  final seriesController = TextEditingController();
  final numberController = TextEditingController();
  final dateController = TextEditingController();
  final innController = TextEditingController();
  final fioController = TextEditingController();

  final seriesFocus = FocusNode();
  final numberFocus = FocusNode();
  final dateFocus = FocusNode();
  final innFocus = FocusNode();
  final fioFocus = FocusNode();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: [
          AnimatedRoundContainer(
            title: '1-Путешетвенник',
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 10,
            ),
            padding2: const EdgeInsets.fromLTRB(10, 0, 10, 16),
            showChildren2: false,
            clearText: AppLocalizations.of(context).delete,
            onClear: () {
              seriesController.text = '';
              numberController.text = '';
              dateController.text = '';
              innController.text = '';
              fioController.text = '';
            },
            children: [
              Form(
                key: formKey,
                child: TravellerInputs(
                  seriesController: seriesController,
                  numberController: numberController,
                  dateController: dateController,
                  innController: innController,
                  fioController: fioController,
                  dateFocus: dateFocus,
                  seriesFocus: seriesFocus,
                  numberFocus: numberFocus,
                  innFocus: innFocus,
                  fioFocus: fioFocus,
                  readOnly: false,
                  onRequest: () {
                    if (formKey.currentState!.validate()) {}
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
