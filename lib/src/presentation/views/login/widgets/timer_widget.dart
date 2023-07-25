import 'package:e_polis/injector.dart';
import 'package:e_polis/src/presentation/cubits/timer/timer_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../generated/l10n.dart';
import '../../../../core/themes/app_text_styles.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    Key? key,
    required this.onResend,
  }) : super(key: key);
  final Function() onResend;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<TimerCubit>()..startTimer(),
      child: BlocBuilder<TimerCubit, TimerState>(
        builder: (context, state) {
          if (state is TimerProgress) {
            int sec = 60 - state.time;
            return Row(
              children: [
                Text(
                  AppLocalizations.of(context).resendCodeAfterSomeTime,
                  style: AppTextStyles.styleW500S14Grey9,
                ),
                const SizedBox(width: 4),
                Text(
                  '00:${sec > 9 ? sec : '0$sec'}',
                  style: AppTextStyles.styleW500S14Primary,
                ),
              ],
            );
          }
          return InkWell(
            onTap: () {
              onResend();
              context.read<TimerCubit>().startTimer(0);
            },
            child: Text(
              AppLocalizations.of(context).reSendCode,
              style: AppTextStyles.styleW500S14Primary,
            ),
          );
        },
      ),
    );
  }
}
