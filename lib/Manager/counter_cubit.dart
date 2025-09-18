import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled15/Manager/counter_state.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit(super.initialState);

  int count = 0;

  void increment() {
    count++;

    emit(CounterChaneValueState(counter: count));
  }

  void decrement() {
    count--;
    emit(CounterChaneValueState(counter: count));
  }
}
