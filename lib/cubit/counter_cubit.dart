import 'package:basket_boll_point/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterTeamAState());
  int teamAPoint = 0;
  int teamBPoint = 0;

  void teamIcrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoint += buttonNumber;
      emit(CounterTeamAState());
    } else if (team == 'B') {
      teamBPoint += buttonNumber;
      emit(CounterTeamBState());
    }
  }

  void resetPoint() {
    teamBPoint = 0;
    teamAPoint = 0;
    emit(CounterTeamBState());
    emit(CounterTeamAState());
  }
}
