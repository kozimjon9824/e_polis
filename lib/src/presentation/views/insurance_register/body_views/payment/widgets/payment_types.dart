import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:e_polis/src/presentation/cubits/book/book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../../../core/utils/helper_models.dart';

class PaymentTypes extends StatefulWidget {
  const PaymentTypes({Key? key}) : super(key: key);

  @override
  State<PaymentTypes> createState() => _PaymentTypesState();
}

class _PaymentTypesState extends State<PaymentTypes> {
  PaymentType? paymentTypes;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookCubit, BookState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context).paymentType,
              style: AppTextStyles.styleW600S14Grey9,
            ),
            const SizedBox(height: 8),
            PaymentItem(
              icon: AppIcons.click,
              onTap: () {
                context.read<BookCubit>().onPaymentType("CLICK");
              },
              isActive: true,
            ),
            // ListView.separated(
            //   shrinkWrap: true,
            //   physics: const NeverScrollableScrollPhysics(),
            //   itemBuilder: (_, index) {
            //     var data = paymentTypeList[index];
            //     return PaymentItem(
            //       icon: data.icon,
            //       onTap: () {
            //         paymentTypes = data.paymentType;
            //         context.read<BookCubit>().onPaymentType(data.name);
            //       },
            //       isActive: paymentTypes == data.paymentType,
            //     );
            //   },
            //   separatorBuilder: (_, __) => const SizedBox(height: 8),
            //   itemCount: 4,
            // ),
          ],
        );
      },
    );
  }
}

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    Key? key,
    this.onTap,
    this.widget,
    this.isActive = false,
    required this.icon,
  }) : super(key: key);
  final Function()? onTap;
  final Widget? widget;
  final bool isActive;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      color: AppColors.grey50,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              SvgPicture.asset(icon, height: 24, width: 100),
              if (widget != null) widget!,
              const Spacer(),
              Icon(
                isActive
                    ? Icons.radio_button_checked
                    : Icons.radio_button_unchecked,
                color: isActive ? AppColors.primaryColor : AppColors.grey400,
              )
            ],
          ),
        ),
      ),
    );
  }
}
