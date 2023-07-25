import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:e_polis/src/data/models/basic_filter/request/basic_filter_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../data/models/main/main.dart';
import '../../../../cubits/auth/auth_cubit.dart';
import '../../../../cubits/insurance_basic_filter/insurance_basic_filter_cubit.dart';
import '../../../insurcance_details/insurance_details.dart';
import '../../../insurcance_details/widgets/dialog_body.dart';
import 'label_container.dart';

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
              context
                  .read<InsuranceBasicFilterCubit>()
                  .inputProductId(data.id ?? '');
              if (context.read<AuthCubit>().state is UnAuthenticatedState) {
                showDialog(
                  context: context,
                  builder: (_) => DialogBody(
                    onSubmit: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, AppRoutes.login);
                    },
                  ),
                );
              } else {
                if (data.category?.type == 'osago') {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.insuranceRegistration,
                    arguments: InsurancePageArguments(
                        id: data.id ?? '', request: const BasicFilterRequest()),
                  );
                }
              }

              // Navigator.pushNamed(
              //   context,
              //   AppRoutes.insuranceBasicFilter,
              //   arguments: data.id ?? '',
              // );
            } else {
              /// travel page
              if (data.category?.type == 'travel') {
                Navigator.pushNamed(
                  context,
                  AppRoutes.travelBasic,
                  arguments: data.id ?? '',
                );
              }
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
