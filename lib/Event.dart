abstract class Event<B, S> {
  Stream<S> onTriggered(B bloc, S state);
}
