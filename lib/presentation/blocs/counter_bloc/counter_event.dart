part of 'counter_bloc.dart';

sealed class CounterEvent {
  const CounterEvent();
}

class CounterIncreased extends CounterEvent {
  final int value;

  const CounterIncreased(this.value);
}

class CounterDecreased extends CounterEvent {
  final int value;

  const CounterDecreased(this.value);
}

class CounterReset extends CounterEvent {
  const CounterReset();
}