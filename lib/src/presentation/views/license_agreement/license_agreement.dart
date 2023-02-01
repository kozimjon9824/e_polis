import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/src/core/routes/app_routes.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:e_polis/src/presentation/components/custom_button.dart';
import 'package:e_polis/src/presentation/components/loading.dart';
import 'package:e_polis/src/presentation/components/round_button.dart';
import 'package:e_polis/src/presentation/cubits/license_agreement/license_agreement_cubit.dart';
import 'package:e_polis/src/presentation/cubits/main_screen_data/main_screen_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injector.dart';
import '../../../core/themes/app_colors.dart';
import '../../components/error_view.dart';
import '../../components/snackbars.dart';
import 'package:flutter_html/flutter_html.dart';
import '../../cubits/auth/auth_cubit.dart';
import 'widgets.dart';

class LicenseAgreementPage extends StatefulWidget {
  const LicenseAgreementPage({Key? key}) : super(key: key);

  @override
  State<LicenseAgreementPage> createState() => _LicenseAgreementPageState();
}

class _LicenseAgreementPageState extends State<LicenseAgreementPage> {
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        isBottom = true;
      }
      if (_controller.position.pixels == _controller.position.minScrollExtent) {
        isBottom = false;
      }
    });
  }

  bool isBottom = false;
  final ScrollController _controller = ScrollController();

  void _scrollDown() {
    _controller.animateTo(
      _controller.position.maxScrollExtent,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _scrollUp() {
    _controller.animateTo(
      0,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<LicenseAgreementCubit>()..loadData(),
      child: Scaffold(
        appBar:
            AppBar(title: Text(AppLocalizations.of(context).licenseAgreement)),
        body: BlocConsumer<LicenseAgreementCubit, LicenseAgreementState>(
          listener: (context, state) {
            state.whenOrNull(
                error: (failure) => showErrorMessage(
                    context, failure.getLocalizedMessage(context)));
          },
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => ErrorView(onTap: () {
                      context.read<LicenseAgreementCubit>().loadData();
                    }),
                loading: () => const LoadingWidget(),
                loaded: (text, check) => BodyWidget(
                      controller: _controller,
                      check: check,
                      text: text,
                      onCheck: (bool? value) {
                        context
                            .read<LicenseAgreementCubit>()
                            .checkAgreement(text, check);
                      },
                      onTap: () {
                        if (check) {
                          context.read<MainScreenDataCubit>().loadData();
                          context.read<AuthCubit>().checkUserToAuth();
                          Navigator.pushNamedAndRemoveUntil(
                              context, AppRoutes.main, (route) => false);
                        }
                      },
                    ));
          },
        ),
        floatingActionButton: upDownBtn(),
      ),
    );
  }

  RoundButton upDownBtn() {
    return RoundButton(
        onTap: () {
          if (isBottom) {
            _scrollUp();
          } else {
            _scrollDown();
          }
        },
        icon: isBottom ? Icons.arrow_upward : Icons.arrow_downward_rounded);
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
    required ScrollController controller,
    this.text,
    required this.check,
    required this.onTap,
    required this.onCheck,
  })  : _controller = controller,
        super(key: key);

  final ScrollController _controller;
  final dynamic text;
  final bool check;
  final Function() onTap;
  final Function(bool? value) onCheck;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        controller: _controller,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: [
          Text(AppLocalizations.of(context).licenseAgreementMain,
              style: AppTextStyles.styleW700S16Grey9),
          const SizedBox(height: 8),
          Html(data: text),
          const SizedBox(height: 32),
          AgreeCheckWidget(onChange: onCheck, value: check),
          const SizedBox(height: 24),
          CustomButton(
              text: AppLocalizations.of(context).next,
              bgColor: check ? null : AppColors.primaryColor.withOpacity(0.3),
              onTap: onTap),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
