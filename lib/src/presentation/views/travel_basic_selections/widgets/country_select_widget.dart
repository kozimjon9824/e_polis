import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../generated/l10n.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../cubits/travel_attributes/travel_attributes_cubit.dart';
import 'countries_bottom_sheet.dart';

class CountrySelectWidget extends StatelessWidget {
  const CountrySelectWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TravelAttributesCubit, TravelAttributesState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            showCountriesBottomSheet(context);
          },
          child: Container(
            height: 58,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              border: Border.all(color: AppColors.grey400, width: 1),
            ),
            child: (state.travelAttModel?.countries?.isEmpty ?? true)
                ?  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(width: 16),
                      Text(
                        AppLocalizations.of(context).travelCountry,
                        style: AppTextStyles.styleW500S14Grey3,
                      )
                    ],
                  )
                : SizedBox(
                    height: 40,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        var country = state.travelAttModel?.countries?[index];
                        return CountryItem(
                          country: country?.name2 ?? '',
                          onTap: () {
                            context
                                .read<TravelAttributesCubit>()
                                .removeCountry(country!);
                          },
                        );
                      },
                      separatorBuilder: (_, index) => const SizedBox(width: 8),
                      itemCount: state.travelAttModel?.countries?.length ?? 0,
                    ),
                  ),
          ),
        );
      },
    );
  }
}

class CountryItem extends StatelessWidget {
  const CountryItem({
    super.key,
    required this.country,
    required this.onTap,
  });

  final String country;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          width: 1,
          color: AppColors.primaryColor,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 160),
            child: Text(
              country,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: const Row(
              children: [
                SizedBox(width: 6),
                Icon(
                  Icons.highlight_remove,
                  color: AppColors.grey600,
                  size: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
