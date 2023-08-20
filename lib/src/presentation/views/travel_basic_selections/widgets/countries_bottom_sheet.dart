import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import '../../../../../generated/l10n.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../data/models/countries/countries.dart';
import '../../../components/custom_button.dart';
import '../../../components/search_bar.dart';
import '../../../cubits/travel_attributes/travel_attributes_cubit.dart';

void showCountriesBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    backgroundColor: Colors.white,
    constraints:
        BoxConstraints(maxHeight: MediaQuery.of(context).size.height - 100),
    builder: (_) {
      return BlocProvider.value(
        value: context.read<TravelAttributesCubit>(),
        child: const CountriesBottomSheetBody(),
      );
    },
  );
}

class CountriesBottomSheetBody extends StatefulWidget {
  const CountriesBottomSheetBody({
    Key? key,
  }) : super(key: key);

  @override
  State<CountriesBottomSheetBody> createState() =>
      _CountriesBottomSheetBodyState();
}

class _CountriesBottomSheetBodyState extends State<CountriesBottomSheetBody> {
  final _focusNode = FocusNode();
  final controller = TextEditingController();
  final keyboardController = KeyboardVisibilityController();

  @override
  void dispose() {
    _focusNode.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityProvider(
      controller: keyboardController,
      child: BlocBuilder<TravelAttributesCubit, TravelAttributesState>(
        builder: (context, state) {
          return Container(
            decoration: const BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Scaffold(
                backgroundColor: AppColors.white,
                appBar: AppBar(
                  title: CustomSearchBar(
                    onCancel: () {
                      controller.text = '';
                      _focusNode.unfocus();
                      Navigator.pop(context);
                    },
                    focus: _focusNode,
                    autoFocus: false,
                    hasWord: controller.text.isNotEmpty,
                    onChange: (word) {
                      if (word.trim().isNotEmpty) {
                        context
                            .read<TravelAttributesCubit>()
                            .searchCountry(word);
                      }
                    },
                    onClear: () {
                      controller.text = '';
                    },
                    controller: controller,
                  ),
                  toolbarHeight: AppBar().preferredSize.height + 4,
                  backgroundColor: AppColors.white,
                  automaticallyImplyLeading: false,
                ),
                body:
                    (controller.text.isNotEmpty && keyboardController.isVisible)
                        ? const SearchResultBody()
                        : const CountryListBody(),
                bottomNavigationBar:  SafeArea(
                  minimum: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: CustomButton(
                    text: AppLocalizations.of(context).select,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CountryListBody extends StatelessWidget {
  const CountryListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TravelAttributesCubit, TravelAttributesState>(
      builder: (context, state) {
        return ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 2),
          itemBuilder: (_, index) {
            final country = state.countries?.items?[index];
            final isSelected =
                state.travelAttModel?.countries?.contains(country) ?? false;
            return ItemWidget(
              data: country!,
              isSelected: isSelected,
            );
          },
          separatorBuilder: (_, __) => buildDivider(),
          itemCount: state.countries?.items?.length ?? 0,
        );
      },
    );
  }

  Padding buildDivider() => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Divider(height: 0, color: AppColors.divider),
      );
}

class SearchResultBody extends StatelessWidget {
  const SearchResultBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TravelAttributesCubit, TravelAttributesState>(
      builder: (context, state) {
        return ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 2),
          itemBuilder: (_, index) {
            final country = state.searchResult?[index];
            final isSelected =
                state.travelAttModel?.countries?.contains(country) ?? false;
            return ItemWidget(
              data: country!,
              isSelected: isSelected,
            );
          },
          separatorBuilder: (_, __) => buildDivider(),
          itemCount: state.searchResult?.length ?? 0,
        );
      },
    );
  }

  Padding buildDivider() => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Divider(height: 0, color: AppColors.divider),
      );
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.data,
    required this.isSelected,
  }) : super(key: key);

  final CountryModel data;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isSelected) {
          context.read<TravelAttributesCubit>().removeCountry(data);
        } else {
          context.read<TravelAttributesCubit>().addCountry(data);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Expanded(
              child: Text(
                '${data.ename??''} (${data.name2 ??''})',
                style: AppTextStyles.styleW400S14Black,
              ),
            ),
            if (isSelected)
              const Icon(
                Icons.check_circle,
                color: AppColors.primaryColor,
                size: 20,
              )
          ],
        ),
      ),
    );
  }
}
