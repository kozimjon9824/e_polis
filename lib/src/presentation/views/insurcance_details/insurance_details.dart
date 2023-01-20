import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../../components/custom_button.dart';
import 'widgets/dialog_body.dart';

class InsuranceDetailsPage extends StatelessWidget {
  const InsuranceDetailsPage({Key? key}) : super(key: key);

  final text =
      'Перед использованием Решения (см. определение ниже) внимательно ознакомьтесь с условиями данного Лицензионного соглашения с конечным пользователем (далее — «Соглашение»). Данный текст является юридически обязывающим договором. Давая согласие в электронной форме, устанавливая Решение или используя Решение, вы принимаете все условия настоящего Соглашения от своего лица и любой организации и физического лица, которое вы представляете или для чьего Устройства вы приобретаете Решение (в совокупности «вы»). ';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: const Text('Uzbekinvest')),
      body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          children: [
            CachedNetworkImage(imageUrl: 'imageUrl', height: 28),
            const SizedBox(height: 24),
            Text(text, style: AppTextStyles.styleW400S14Grey9),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.grey50),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (_, __) => Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Цена полиса',
                          style: AppTextStyles.styleW400S12Grey7),
                      const SizedBox(height: 4),
                      Text(
                        '40 000 000 сум',
                        style: AppTextStyles.styleW600S16White
                            .copyWith(color: AppColors.grey900),
                      )
                    ]),
                separatorBuilder: (_, __) => const SizedBox(height: 10),
              ),
            )
          ]),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: CustomButton(
          text: 'КУПИТЬ',
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.insuranceRegistration);
            // showDialog(context: context, builder: (_) => const DialogBody());
          },
        ),
      ),
    );
  }
}
