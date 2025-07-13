import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  void teamIncement({required String team, required int buttonNumbers}) {
    int newAPoints = state.teamAPoints;
    int newBPoints = state.teamBPoints;
   
    if (team == "A") {
      newAPoints += buttonNumbers;
      emit(CounterAIncrement(newAPoints,newBPoints));
    } else {
      newBPoints += buttonNumbers;
      emit(CounterBIncrement(newAPoints,newBPoints));
    }
  }

  void reset() {
  emit(CounterInitial()); 
}
}
