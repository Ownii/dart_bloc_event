import 'package:bloc/bloc.dart';
import 'package:bloc_event/Event.dart';

abstract class EventBloc<E extends Event, S> extends Bloc<E, S> {

  @override
  Stream<S> mapEventToState(E event) async* {
    yield* event.onTriggered(this, currentState, event);
  }

}