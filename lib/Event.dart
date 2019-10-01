abstract class Event<B, S, E> {
  Stream<S> onTriggered(B bloc, S currentState, E event);
}