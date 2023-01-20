import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../components/search_bar.dart';
import 'widgets/insurance_details.dart';
import 'widgets/nothing_found.dart';

class BasicFilterResultPage extends StatefulWidget {
  const BasicFilterResultPage({Key? key}) : super(key: key);

  @override
  State<BasicFilterResultPage> createState() => _BasicFilterResultPageState();
}

class _BasicFilterResultPageState extends State<BasicFilterResultPage> {
  final _focusNode = FocusNode();
  final controller = TextEditingController();
  final keyboardController = KeyboardVisibilityController();

  @override
  Widget build(BuildContext context) {
    // final arguments = ModalRoute.of(context)!.settings.arguments as String;
    return KeyboardVisibilityProvider(
      controller: keyboardController,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Результаты расчета'),
          bottom: SearchBar(
              onCancel: () {
                controller.text = '';
                _focusNode.unfocus();
              },
              focus: _focusNode,
              autoFocus: false,
              hasWord: false,
              onChange: (word) {},
              onClear: () {
                controller.text = '';
              },
              controller: controller),
        ),
        body: false
            ? const NothingFound()
            : ListView(
                shrinkWrap: true,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                children: [
                  const Text(
                    'Мы нашли несколько предложений от страховых компаний',
                    style: AppTextStyles.styleW400S14Grey6,
                  ),
                  const SizedBox(height: 24),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index) => InsuranceDetail(
                            onDetailTap: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.insuranceDetails,
                                  arguments: '123');
                            },
                          ),
                      separatorBuilder: (_, __) => const SizedBox(height: 16),
                      itemCount: 5)
                ],
              ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
    controller.dispose();
  }
}
