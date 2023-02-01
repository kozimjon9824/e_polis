import 'package:e_polis/src/presentation/cubits/insurance_basic_filter/insurance_basic_filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import '../../components/search_bar.dart';
import 'widgets/body_widget.dart';
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
  void initState() {
    super.initState();
    context.read<InsuranceBasicFilterCubit>().loadData();
  }

  @override
  Widget build(BuildContext context) {
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
        body: false ? const NothingFound() : const InsurancesResults(),
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
