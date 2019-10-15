
import 'package:bloc_event/bloc_event.dart';

class CounterState {
  final int counter;

  CounterState({this.counter});

  CounterState copyWith({
    int counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }
}

abstract class CounterEvent<E> extends Event<CounterBloc, CounterState> {}

class CounterBloc extends EventBloc<CounterEvent, CounterState> {

  @override
  CounterState get initialState => CounterState(counter: 0);

}

class CounterIncrement extends CounterEvent<CounterIncrement> {
  final int value;

  CounterIncrement(this.value);

  @override
  Stream<CounterState> onTriggered(bloc, state,) async* {
    yield state.copyWith(counter: state.counter+value);
  }
}

void main() {
  final counterBloc = CounterBloc();
  counterBloc.add(CounterIncrement(2));
}