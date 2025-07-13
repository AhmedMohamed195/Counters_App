part of 'counter_cubit.dart';

sealed class CounterState extends Equatable {
  final int teamAPoints;
  final int teamBPoints;
  const CounterState(this.teamAPoints, this.teamBPoints);

  @override
  List<Object> get props => [teamAPoints,teamBPoints];
}

final class CounterInitial extends CounterState {
  const CounterInitial() : super(0, 0);
}

final class CounterAIncrement extends CounterState {
  const CounterAIncrement(super.teamAPoints, super.teamBPoints);
}

final class CounterBIncrement extends CounterState {
  const CounterBIncrement(super.teamAPoints, super.teamBPoints);
}
