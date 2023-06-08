import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:e_polis/src/presentation/cubits/login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';
import '../../components/snackbars.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = TextEditingController();
  final mask = MaskTextInputFormatter(
    mask: '(##) ### ## ##',
    filter: {"#": RegExp(r'\d')},
    type: MaskAutoCompletionType.eager,
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<LoginCubit>(),
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 32, 20, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context).phoneNumber,
                      style: AppTextStyles.styleW700S24Grey9,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      AppLocalizations.of(context).loginMainText,
                      style: AppTextStyles.styleW500S14Grey7,
                    ),
                    const SizedBox(height: 32),
                    phoneCustomPrefixTextField(),
                  ],
                ),
              ),
              BlocConsumer<LoginCubit, LoginState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: (phone) => Navigator.pushNamed(
                        context, AppRoutes.verify,
                        arguments: phone),
                    error: (failure) => showErrorMessage(
                        context, failure.getLocalizedMessage(context)),
                  );
                },
                builder: (context, state) {
                  return nextButton(
                      state == const LoginState.loading(), context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget nextButton(bool loading, BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 12, 20, 20),
        child: CustomButton(
          text: AppLocalizations.of(context).sendSms,
          isLoading: loading,
          onTap: () {
            if (mask.getUnmaskedText().length == 9) {
              context.read<LoginCubit>().login(mask.getUnmaskedText());
            }
          },
        ),
      ),
    );
  }

  Widget phoneCustomPrefixTextField() {
    return CustomPrefixTextField(
      label: AppLocalizations.of(context).phoneNumber,
      hintText: '(--) --- -- --',
      autoFocus: true,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.phone,
      textEditingController: controller,
      inputFormatters: [mask],
      prefixIcon: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 30),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(AppIcons.uz, height: 16, width: 22),
            const SizedBox(width: 4),
            const Text('+998', style: AppTextStyles.styleW500S14Grey9)
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
