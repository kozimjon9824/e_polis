import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_icons.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../data/models/my_products/product_data.dart';
import 'empty_polis.dart';

/// first tab body
class CurrentSingleProduct extends StatelessWidget {
  const CurrentSingleProduct({
    Key? key,
    required this.productList,
  }) : super(key: key);
  final List<ProductModel> productList;

  @override
  Widget build(BuildContext context) {
    if (productList.isEmpty) {
      return const EmptyPolis();
    }
    return ListView.separated(
      itemCount: productList.length,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      itemBuilder: (_, index) {
        var data = productList[index];
        double percent = (data.expirePercent ?? 0.1) / 100;
        final color = (percent > 50)
            ? AppColors.primaryColor
            : (percent > 20)
                ? AppColors.orange
                : AppColors.red;
        return InsuranceDetails(
          statusIcon: LinearPercentIndicator(
            width: 180.0,
            lineHeight: 8.0,
            percent: percent,
            barRadius: const Radius.circular(8),
            backgroundColor: Colors.white,
            padding: EdgeInsets.zero,
            progressColor: color,
          ),
          product: data,
          preDateText: AppLocalizations.of(context).toDate,
          statusText: AppLocalizations.of(context).expend,
        );
      },
      separatorBuilder: (_, __) => const SizedBox(height: 16),
    );
  }
}

/// 2 tab body
class ProgressSingleProduct extends StatelessWidget {
  const ProgressSingleProduct({
    Key? key,
    required this.productList,
  }) : super(key: key);
  final List<ProductModel> productList;

  @override
  Widget build(BuildContext context) {
    if (productList.isEmpty) {
      return const EmptyPolis();
    }
    return ListView.separated(
      itemCount: productList.length,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      itemBuilder: (_, index) {
        var data = productList[index];
        double percent = (data.expirePercent ?? 0.1) / 100;
        const color = AppColors.orange;
        // (percent > 50)
        //     ? AppColors.primaryColor
        //     : (percent > 20)
        //         ? AppColors.orange
        //         : AppColors.red;
        return InsuranceDetails(
          statusIcon: LinearPercentIndicator(
            width: MediaQuery.of(context).size.width - 76,
            lineHeight: 8.0,
            percent: percent,
            barRadius: const Radius.circular(8),
            backgroundColor: Colors.white,
            padding: EdgeInsets.zero,
            progressColor: color,
          ),
          product: data,
          preDateText: AppLocalizations.of(context).from,
          statusText: AppLocalizations.of(context).update,
        );
      },
      separatorBuilder: (_, __) => const SizedBox(height: 16),
    );
  }
}

/// 3 tab body
class ArchivedSingleProduct extends StatelessWidget {
  const ArchivedSingleProduct({
    Key? key,
    required this.productList,
  }) : super(key: key);
  final List<ProductModel> productList;

  @override
  Widget build(BuildContext context) {
    if (productList.isEmpty) {
      return const EmptyPolis();
    }
    return ListView.separated(
      itemCount: productList.length,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      itemBuilder: (_, index) => ArchivedInsuranceDetails(
        product: productList[index],
        statusIcon:
            SvgPicture.asset(AppIcons.archiveLiner, width: 180, height: 8),
        statusText: AppLocalizations.of(context).buyNow,
        preDateText: AppLocalizations.of(context).expired,
      ),
      separatorBuilder: (_, __) => const SizedBox(height: 16),
    );
  }
}

class InsuranceDetails extends StatelessWidget {
  const InsuranceDetails({
    Key? key,
    this.product,
    required this.statusText,
    required this.statusIcon,
    this.preDateText = '',
    this.toDateText = '',
  }) : super(key: key);

  final ProductModel? product;
  final String statusText;
  final Widget statusIcon;
  final String? preDateText;
  final String? toDateText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.polisDetails,
            arguments: product);
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.grey50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CachedNetworkImage(
                  imageUrl: product?.logo ?? '',
                  height: 30,
                  width: 130,
                  errorWidget: (_, __, ___) => const SizedBox.shrink(),
                ),
                const Spacer(),
                InkWell(
                  onTap: () async {},
                  child: Text(
                    statusText,
                    style: AppTextStyles.styleW600S14Primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            Text(product?.name ?? '', style: AppTextStyles.styleW700S16Grey9),
            const SizedBox(height: 5),
            Text(
              '№ ${product?.number ?? ''}',
              style: AppTextStyles.styleW500S14Grey5,
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  '$preDateText ${dateConverter(date: product?.startAt ?? '', inFormat: 'yyyy-MM-dd', outFormat: 'd MMM yyyy')}',
                  style: AppTextStyles.styleW500S14Grey5
                      .copyWith(color: AppColors.grey600),
                ),
                const Spacer(),
                Text(
                  '$toDateText ${dateConverter(date: product?.expireAt ?? '', inFormat: 'yyyy-MM-dd', outFormat: 'd MMM yyyy')}',
                  style: AppTextStyles.styleW500S14Grey5
                      .copyWith(color: AppColors.grey600),
                ),
              ],
            ),
            const SizedBox(height: 5),
            statusIcon,
          ],
        ),
      ),
    );
  }
}

class ArchivedInsuranceDetails extends StatelessWidget {
  const ArchivedInsuranceDetails({
    Key? key,
    this.product,
    required this.statusText,
    required this.statusIcon,
    this.preDateText = '',
  }) : super(key: key);

  final ProductModel? product;
  final String statusText;
  final Widget statusIcon;
  final String? preDateText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.grey50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CachedNetworkImage(
                imageUrl: product?.logo ?? '',
                height: 30,
                width: 130,
                errorWidget: (_, __, ___) => const SizedBox.shrink(),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                child: Text(
                  statusText,
                  style: AppTextStyles.styleW600S14Primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Text(product?.name ?? '', style: AppTextStyles.styleW700S16Grey9),
          const SizedBox(height: 5),
          Text(
            '№ ${product?.number ?? ''}',
            style: AppTextStyles.styleW500S14Grey5,
          ),
          const SizedBox(height: 12),
          Text(
            '$preDateText: ${dateConverter(date: product?.expireAt ?? '', inFormat: 'yyyy-MM-dd', outFormat: 'd MMM yyyy')}',
            style: AppTextStyles.styleW500S14Grey5
                .copyWith(color: AppColors.grey600),
          ),
          const SizedBox(height: 5),
          statusIcon,
        ],
      ),
    );
  }
}
