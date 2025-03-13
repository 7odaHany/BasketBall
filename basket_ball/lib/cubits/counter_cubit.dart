import 'package:basket_ball/cubits/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamAScore = 0;
  int teamBScore = 0;

  void incremenScore({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAScore += buttonNumber;
      emit(CounterAIncrementState()); //info: emit the new state
    } else {
      teamBScore += buttonNumber;
      emit(CounterBIncrementState()); //info: emit the new state
    }
  }
}
