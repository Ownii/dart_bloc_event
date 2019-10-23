
import 'package:bloc_event/bloc_event.dart';

abstract class CounterEvent<E> extends Event<CounterBloc, int> {}

class CounterBloc extends EventBloc<CounterEvent, int> {

  @override
  int get initialState => 0;

}

class CounterIncrement extends CounterEvent {
  final int value;

  CounterIncrement(this.value);

  @override
  Stream<int> onTriggered(bloc, state) async* {
    yield state+value;
  }
}

void main() {
  final counterBloc = CounterBloc();
  counterBloc.add(CounterIncrement(2));
}