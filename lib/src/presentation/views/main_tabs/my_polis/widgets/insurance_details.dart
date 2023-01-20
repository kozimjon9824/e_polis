import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_icons.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../data/models/my_products/product_data.dart';
import 'empty_polis.dart';

class SingleProduct extends StatelessWidget {
  const SingleProduct({
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
      itemBuilder: (_, index) => InsuranceDetails(
        product: productList[index],
      ),
      separatorBuilder: (_, __) => const SizedBox(height: 16),
    );
  }
}

class InsuranceDetails extends StatelessWidget {
  const InsuranceDetails({
    Key? key,
    this.product,
  }) : super(key: key);
  final ProductModel? product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: AppColors.grey50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(imageUrl: product?.logo ?? ''),
          const SizedBox(height: 18),
          Text(product?.name ?? '', style: AppTextStyles.styleW700S16Grey9),
          const SizedBox(height: 5),
          Text(product?.number ?? '', style: AppTextStyles.styleW500S14Grey5),
          const SizedBox(height: 12),
          Text(product?.expireAt ?? '',
              style: AppTextStyles.styleW500S14Grey5
                  .copyWith(color: AppColors.grey600)),
          const SizedBox(height: 5),
          Row(
            children: [
              SvgPicture.asset(AppIcons.linearStatus),
              const Spacer(),
              const Text('Продлить', style: AppTextStyles.styleW600S14Primary),
            ],
          )
        ],
      ),
    );
  }
}
