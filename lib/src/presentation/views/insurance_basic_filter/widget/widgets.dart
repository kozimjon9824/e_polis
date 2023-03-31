import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/presentation/cubits/product_details/product_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readmore/readmore.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const SizedBox.shrink(),
          error: (err) => const SizedBox.shrink(),
          loaded: (data) => ReadMoreText(
            data.description ?? '',
            trimLines: 3,
            colorClickableText: AppColors.primaryColor,
            trimMode: TrimMode.Line,
            trimCollapsedText: AppLocalizations.of(context).inDetail,
            trimExpandedText: AppLocalizations.of(context).hide,
            style: AppTextStyles.styleW400S14Grey6
                .copyWith(color: AppColors.grey900, height: 1.5),
            moreStyle: AppTextStyles.styleW600S14Primary,
            lessStyle: AppTextStyles.styleW600S14Primary,
          ),
        );
      },
    );
  }
}

class SwitchBtn extends StatelessWidget {
  const SwitchBtn({
    Key? key,
    this.bgColor,
    required this.title,
    required this.onTap,
    this.borderRadius,
  }) : super(key: key);
  final Color? bgColor;
  final String title;
  final Function() onTap;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        borderRadius: borderRadius,
        color: bgColor,
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius,
          child: Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: borderRadius,
                border: Border.all(
                    color:
                        bgColor != null ? AppColors.green : AppColors.grey400)),
            child: Center(
              child: Text(title,
                  style: AppTextStyles.styleW500S14White.copyWith(
                      color:
                          bgColor == null ? AppColors.black : AppColors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
