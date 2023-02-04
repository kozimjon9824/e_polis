part of 'timer_cubit.dart';

abstract class TimerState extends Equatable {
  const TimerState(this.time);

  final int time;
}

class TimerInitial extends TimerState {
  const TimerInitial() : super(0);

  @override
  List<Object> get props => [];
}

class TimerProgress extends TimerState {
  const TimerProgress(int newTime) : super(newTime);

  @override
  List<Object> get props => [time];
}
