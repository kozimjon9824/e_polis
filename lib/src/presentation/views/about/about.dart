import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/themes/app_icons.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  final text =
      "Epolis входит в ТОП-5 страховых компаний Узбекистана, являясь второй крупнейшей страховой компанией страны по объемам активов. Динамичный рост рыночной доли по сборам, капиталу и инвестициям! Epolis экспортно-импортная акциядорлик жамияти суғурта компанииси умий суғурта бозорида ўз фаолиятини олиб боради ва суғурта фаолияти классификаторига кўра мавжуд 17 турдаги суғуртанинг барчаси билан шуғулланади";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('О Нас')),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 24),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: AppColors.grey50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: SvgPicture.asset(AppIcons.appLogo,
                    color: AppColors.primaryColor)),
            const SizedBox(height: 20),
            const Text('Наш миссия', style: AppTextStyles.styleW700S18Grey9),
            const SizedBox(height: 10),
            Text(text,
                style: AppTextStyles.styleW500S14Grey7.copyWith(height: 1.6)),
          ],
        ),
      ),
    );
  }
}
