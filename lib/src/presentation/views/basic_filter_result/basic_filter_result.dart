import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/presentation/components/loading.dart';
import 'package:e_polis/src/presentation/cubits/insurance_basic_filter/insurance_basic_filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import '../../components/search_bar.dart';
import '../../components/snackbars.dart';
import 'widgets/body_widget.dart';

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
      child: BlocConsumer<InsuranceBasicFilterCubit, InsuranceBasicFilterState>(
        listener: (context, state) {
          if (state.status == StateStatus.error) {
            showErrorMessage(
                context, state.failure.getLocalizedMessage(context));
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context).calculationResults),
              bottom: SearchBar(
                  onCancel: () {
                    controller.text = '';
                    _focusNode.unfocus();
                    context.read<InsuranceBasicFilterCubit>().clearSearch();
                  },
                  focus: _focusNode,
                  autoFocus: false,
                  hasWord: controller.text.isNotEmpty,
                  onChange: (word) {
                    context.read<InsuranceBasicFilterCubit>().searchData(word);
                  },
                  onClear: () {
                    controller.text = '';
                    // context.read<InsuranceBasicFilterCubit>().clearSearch();
                  },
                  controller: controller),
            ),
            body: (state.status == StateStatus.loading)
                ? const LoadingWidget()
                : (state.searchResult != null && keyboardController.isVisible)
                    ? const SearchResults()
                    : const InsurancesResults(),
          );
        },
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
