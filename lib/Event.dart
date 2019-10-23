abstract class Event<B, S> {
  /**
   * This function gets triggered if the event gets executed
   * [bloc] is the bloc that the event gets executed from
   * [state] is the current state of the bloc
   */
  Stream<S> onTriggered(B bloc, S state);
}
