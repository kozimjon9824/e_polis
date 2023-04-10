import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../data/models/main/main.dart';

class InsuranceTypesBody extends StatelessWidget {
  const InsuranceTypesBody({
    Key? key,
    required this.products,
  }) : super(key: key);
  final List<ProductData> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        childAspectRatio: 164 / 150,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (_, index) {
        var data = products[index];
        return InsuranceItem(
          title: data.name ?? '',
          image: data.photo ?? '',
          label: data.label,
          onTap: () {
            if (!(data.isDisabled ?? false)) {
              Navigator.pushNamed(
                context,
                AppRoutes.insuranceBasicFilter,
                arguments: data.id ?? '',
              );
            }
          },
        );
      },
    );
  }
}

/// widget insurance item
class InsuranceItem extends StatelessWidget {
  const InsuranceItem({
    Key? key,
    this.onTap,
    required this.title,
    required this.image,
    this.label,
  }) : super(key: key);
  final Function()? onTap;
  final String title;
  final String image;
  final Label? label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.cover,
              height:
                  (150 / 164) * (MediaQuery.of(context).size.width - 40) / 2,
              width: double.infinity,
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0),
                    Color.fromRGBO(0, 0, 0, 1),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 12,
              left: 10,
              right: 10,
              child: Text(
                title,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.styleW500S14White,
              ),
            ),
            if (label != null)
              Positioned(
                top: 8,
                right: 8,
                child: LabelContainer(label: label!),
              ),
          ],
        ),
      ),
    );
  }
}

class LabelContainer extends StatelessWidget {
  const LabelContainer({
    super.key,
    required this.label,
  });

  final Label label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: HexColor(label.color ?? '#ffffff'),
      ),
      child: Text(
        label.title ?? '',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.styleW500S12Grey4.copyWith(color: AppColors.white),
      ),
    );
  }
}
