abstract class CounterStates {}

class CounterInitState extends CounterStates {}

class CounterChaneValueState extends CounterStates {
  int counter;

  CounterChaneValueState({required this.counter});
}
