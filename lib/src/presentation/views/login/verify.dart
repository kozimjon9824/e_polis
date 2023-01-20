import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../components/custom_button.dart';
import '../../components/pinput_sms_auto_fill.dart';
import '../../components/snackbars.dart';
import '../../cubits/verify/verify_cubit.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({Key? key}) : super(key: key);

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as String;
    return BlocProvider(
      create: (context) => inject<VerifyCubit>(),
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
                    const Text('Подтвердить код',
                        style: AppTextStyles.styleW700S24Grey9),
                    const SizedBox(height: 12),
                    Text(
                        'Пожалуйста, введите код, который вы отправили на $arguments',
                        style: AppTextStyles.styleW500S14Grey7),
                    const SizedBox(height: 32),
                    BlocBuilder<VerifyCubit, VerifyState>(
                      builder: (context, state) {
                        return CustomPinPut(
                            textController: textController,
                            forceErrorState: state ==
                                const VerifyState.error(WrongCodeFailure()));
                      },
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: const [
                        Text('Повторно отправить код через',
                            style: AppTextStyles.styleW500S14Grey9),
                        SizedBox(width: 4),
                        Text('00:48', style: AppTextStyles.styleW500S14Primary),
                      ],
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

  Widget nextButton(String phone) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 12, 20, 20),
        child: BlocConsumer<VerifyCubit, VerifyState>(
          listener: (context, state) {
            state.whenOrNull(
                success: () =>
                    Navigator.pushNamed(context, AppRoutes.verificationSuccess),
                error: (failure) => showErrorMessage(
                    context, failure.getLocalizedMessage(context)));
          },
          builder: (context, state) {
            return CustomButton(
              text: 'Подтвердить',
              isLoading: state == const VerifyState.loading(),
              onTap: () {
                context
                    .read<VerifyCubit>()
                    .verify(code: textController.text, phone: phone);
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
