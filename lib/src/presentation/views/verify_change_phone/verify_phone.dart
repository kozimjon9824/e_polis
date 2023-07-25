import 'package:e_polis/generated/l10n.dart';
import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../data/models/profile_update/profile_update.dart';
import '../../components/custom_button.dart';
import '../../components/pinput_sms_auto_fill.dart';
import '../../components/snackbars.dart';
import '../../cubits/change_phone_verify/change_phone_verify_cubit.dart';
import '../../cubits/main_screen_data/main_screen_data_cubit.dart';
import '../login/widgets/timer_widget.dart';

class VerifyChangePhonePage extends StatefulWidget {
  const VerifyChangePhonePage({Key? key}) : super(key: key);

  @override
  State<VerifyChangePhonePage> createState() => _VerifyChangePhonePageState();
}

class _VerifyChangePhonePageState extends State<VerifyChangePhonePage> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as ProfileUpdateRequest;
    return BlocProvider(
      create: (context) => inject<ChangePhoneVerifyCubit>(),
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
                    Text(
                      '${AppLocalizations.of(context).verifyPageMainText}  ${arguments.phone}',
                      style: AppTextStyles.styleW500S14Grey7,
                    ),
                    const SizedBox(height: 32),
                    BlocBuilder<ChangePhoneVerifyCubit, ChangePhoneVerifyState>(
                      builder: (context, state) {
                        return CustomPinPut(
                          textController: textController,
                          onChange: (_) {
                            context
                                .read<ChangePhoneVerifyCubit>()
                                .loadInitial();
                          },
                          forceErrorState: state ==
                              const ChangePhoneVerifyState.error(
                                  WrongCodeFailure()),
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    TimeWidget(
                      onResend: () {
                        textController.clear();
                        inject<ChangePhoneVerifyCubit>().resendCode(arguments);
                      },
                    ),
                  ],
                ),
              ),
              nextButton(arguments),
            ],
          ),
        ),
      ),
    );
  }

  Widget nextButton(ProfileUpdateRequest request) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 12, 20, 20),
        child: BlocConsumer<ChangePhoneVerifyCubit, ChangePhoneVerifyState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                Navigator.pop(context);
                Navigator.pop(context);
                context.read<MainScreenDataCubit>().loadData();
                showSuccessMessage(
                    context, AppLocalizations.of(context).profileUpdated);
              },
              error: (failure) => showErrorMessage(
                  context, failure.getLocalizedMessage(context)),
            );
          },
          builder: (context, state) {
            return CustomButton(
              text: AppLocalizations.of(context).confirm,
              isLoading: state == const ChangePhoneVerifyState.loading(),
              onTap: () {
                context
                    .read<ChangePhoneVerifyCubit>()
                    .verifyPhone(request, textController.text);
              },
            );
          },
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
