import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../generated/l10n.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../core/utils/utils.dart';
import '../../components/custom_button.dart';
import '../../cubits/auth/auth_cubit.dart';
import '../insurcance_details/widgets/dialog_body.dart';
import '../insurcance_details/widgets/price_tile.dart';

class TravelInsuranceDetailsPage extends StatelessWidget {
  const TravelInsuranceDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UZBEKINVEST')),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: '',
                height: 44,
                width: 200,
                fit: BoxFit.contain,
                errorWidget: (_, __, ___) => const SizedBox.shrink(),
                placeholder: (_, __) => const CupertinoActivityIndicator(),
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Перед использованием Решения (см. определение ниже) внимательно ознакомьтесь с условиями данного Лицензионного соглашения с конечным пользователем (далее — «Соглашение»). Данный текст является юридически обязывающим договором. Давая согласие в электронной форме, устанавливая Решение или используя Решение, вы принимаете все условия настоящего Соглашения от своего лица и любой организации и физического лица, которое вы представляете или для чьего Устройства вы приобретаете Решение (в совокупности «вы»). ',
            style: AppTextStyles.styleW400S14Grey9,
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.grey50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PriceTile(
                  title: AppLocalizations.of(context).polisPrice,
                  price: numberFormat(1000000),
                  textStyle: AppTextStyles.styleW700S18Green,
                ),
                const SizedBox(height: 12),
                PriceTile(
                  title: AppLocalizations.of(context).insurancePrice,
                  price: numberFormat(1000000),
                ),
                const SizedBox(height: 12),
                const PriceTile(
                  title: 'Дата начала путешествия',
                  price: '08.02.2023',
                ),
                const SizedBox(height: 12),
                const PriceTile(
                  title: 'Дата окончания путешествия',
                  price: '18.02.2023',
                ),
                const SizedBox(height: 12),
                const PriceTile(
                  title: 'Страна',
                  price: 'США, Германия',
                ),
                const SizedBox(height: 12),
                const PriceTile(
                  title: 'Программа',
                  price: 'STANDART',
                ),
                const SizedBox(height: 12),
                const PriceTile(
                  title: 'Цель поездки',
                  price: 'Туризм/Служебная командировка',
                ),
                const SizedBox(height: 12),
                const PriceTile(
                  title: 'Путешественники',
                  price: 'Семейный',
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: CustomButton(
          text: AppLocalizations.of(context).buy,
          onTap: () {
            // context
            //     .read<InsuranceBasicFilterCubit>()
            //     .inputProductId(argument.id);
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
            } else {}
          },
        ),
      ),
    );
  }
}
