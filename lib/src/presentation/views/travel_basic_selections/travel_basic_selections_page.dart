import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../components/drop_down_button.dart';
import 'widgets/desc.dart';

class TravelBasicSelectionPage extends StatefulWidget {
  const TravelBasicSelectionPage({Key? key}) : super(key: key);

  @override
  State<TravelBasicSelectionPage> createState() =>
      _TravelBasicSelectionPageState();
}

class _TravelBasicSelectionPageState extends State<TravelBasicSelectionPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Онлайн туристическая страховка'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Desc(desc: 'Kozimjon'),
          DropDownButton<String>(
            hint: '',
            label: '1',
            items: ['value1']
                .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(item, style: AppTextStyles.styleW400S14Grey6)))
                .toList(),
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
