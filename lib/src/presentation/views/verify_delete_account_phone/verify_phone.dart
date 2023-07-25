import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../components/custom_button.dart';
import '../../components/pinput_sms_auto_fill.dart';
import '../../components/snackbars.dart';
import '../../cubits/auth/auth_cubit.dart';
import '../../cubits/confirm_delete_account/confirm_account_delete_cubit.dart';
import '../../cubits/main_screen_data/main_screen_data_cubit.dart';
import '../../cubits/send_otp/send_otp_cubit.dart';
import '../login/widgets/timer_widget.dart';

class VerifyDeleteAccountPhonePage extends StatefulWidget {
  const VerifyDeleteAccountPhonePage({Key? key}) : super(key: key);

  @override
  State<VerifyDeleteAccountPhonePage> createState() =>
      _VerifyDeleteAccountPhonePageState();
}

class _VerifyDeleteAccountPhonePageState
    extends State<VerifyDeleteAccountPhonePage> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<ConfirmAccountDeleteCubit>(),
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
                      AppLocalizations.of(context).confirmCode,
                      style: AppTextStyles.styleW700S24Grey9,
                    ),
                    const SizedBox(height: 12),
                    BlocBuilder<MainScreenDataCubit, MainScreenDataState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const SizedBox(),
                          loaded: (data) => Text(
                            '${AppLocalizations.of(context).verifyPageMainText}  ${data?.user?.phone ?? ''}',
                            style: AppTextStyles.styleW500S14Grey7,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 32),
                    BlocBuilder<ConfirmAccountDeleteCubit,
                        ConfirmAccountDeleteState>(
                      builder: (context, state) {
                        return CustomPinPut(
                          textController: textController,
                          onChange: (_) {
                            context
                                .read<ConfirmAccountDeleteCubit>()
                                .loadInitial();
                          },
                          forceErrorState: state.status == StateStatus.error,
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    BlocProvider(
                      create: (context) => inject<SendOtpCubit>(),
                      child: BlocBuilder<SendOtpCubit, SendOtpState>(
                        builder: (context, state) {
                          return TimeWidget(
                            onResend: () {
                              textController.clear();
                              context.read<SendOtpCubit>().sendOtpRequest();
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              nextButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget nextButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is UnAuthenticatedState) {
            context.read<MainScreenDataCubit>().loadData();
            Navigator.pushNamedAndRemoveUntil(
                context, AppRoutes.main, (route) => false);
          }
        },
        child: SafeArea(
          minimum: const EdgeInsets.fromLTRB(20, 12, 20, 20),
          child: BlocConsumer<ConfirmAccountDeleteCubit,
              ConfirmAccountDeleteState>(
            listener: (context, state) {
              if (state.status == StateStatus.success) {
                context.read<AuthCubit>().logout();
              }
              if (state.status == StateStatus.error) {
                showErrorMessage(
                    context, state.failure.getLocalizedMessage(context));
              }
            },
            builder: (context, state) {
              return CustomButton(
                text: AppLocalizations.of(context).confirm,
                isLoading: state.status == StateStatus.loading,
                onTap: () {
                  context
                      .read<ConfirmAccountDeleteCubit>()
                      .confirmDeletion(textController.text);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    textController.dispose();
  }
}
