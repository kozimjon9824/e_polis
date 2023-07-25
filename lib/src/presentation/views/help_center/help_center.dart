import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/themes/app_colors.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:e_polis/src/presentation/components/error_view.dart';
import 'package:e_polis/src/presentation/components/loading.dart';
import 'package:e_polis/src/presentation/cubits/faq/faq_cubit.dart';
import 'package:e_polis/src/presentation/views/help_center/widgets/animated_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../data/models/help_data/help_data.dart';

class HelperCenterPage extends StatelessWidget {
  const HelperCenterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<FaqCubit>()..loadData(),
      child: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context).helpCenter)),
        body: BlocBuilder<FaqCubit, FaqState>(
          builder: (context, state) {
            return state.when(
              loading: () => const LoadingWidget(),
              error: (failure) => ErrorView(
                onTap: () {
                  context.read<FaqCubit>().loadData();
                },
              ),
              loaded: (data) => faqData(context, data),
            );
          },
        ),
      ),
    );
  }

  ListView faqData(BuildContext context, HelpData? data) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: AppColors.grey50),
          child: Column(
            children: [
              Text(
                AppLocalizations.of(context).howCanWeHelp,
                textAlign: TextAlign.center,
                style: AppTextStyles.styleW700S18Grey9,
              ),
              const SizedBox(height: 8),
              Text(
                AppLocalizations.of(context).helpMainText,
                textAlign: TextAlign.center,
                style: AppTextStyles.styleW500S14Grey7,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      _launchInBrowser(
                          data?.websiteUrl?.replaceAll('https://', '') ?? '');
                    },
                    iconSize: 44,
                    icon: SvgPicture.asset(AppIcons.web),
                  ),
                  IconButton(
                    onPressed: () {
                      _goEmail(data?.email ?? '');
                    },
                    iconSize: 44,
                    icon: SvgPicture.asset(AppIcons.email),
                  ),
                  IconButton(
                    onPressed: () {
                      _makePhoneCall(data?.phoneNumber ?? '+998946122075');
                    },
                    iconSize: 44,
                    icon: SvgPicture.asset(AppIcons.phone),
                  ),
                  IconButton(
                    onPressed: () {
                      _launchInTG(data?.telegramUrl ??
                          'https://t.me/+jN0Waa2aFdc3YzEy');
                    },
                    iconSize: 44,
                    icon: SvgPicture.asset(AppIcons.tg),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Text(
          AppLocalizations.of(context).popularQuestions,
          style: AppTextStyles.styleW700S18Grey9,
        ),
        const SizedBox(height: 16),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) => ExpandableContainer(
            title: data?.data?[index].question ?? '',
            subText: data?.data?[index].answer ?? '',
          ),
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemCount: data?.data?.length ?? 0,
        ),
      ],
    );
  }

  Future<void> _launchInBrowser(String url) async {
    if (!await launchUrl(
      Uri(
        scheme: 'http',
        host: url,
      ),
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchInTG(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _goEmail(String email) async {
    final Uri launchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    await launchUrl(launchUri);
  }
}
