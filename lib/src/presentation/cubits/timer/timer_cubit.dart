import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'timer_state.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(const TimerInitial());

  Timer? _timer;

  void startTimer([int? time]) {
    if (time != null) {
      emit(TimerProgress(time));
    } else {
      emit(const TimerProgress(0));
    }
    _timer = Timer.periodic(const Duration(seconds: 1), _onTick);
  }

  void _onTick(Timer timer) {
    if (state is TimerProgress) {
      TimerProgress wip = state as TimerProgress;
      if (wip.time < 60) {
        emit(TimerProgress(wip.time + 1));
      } else {
        _timer?.cancel();
        emit(const TimerInitial());
      }
    }
  }
}
