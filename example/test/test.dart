
import 'package:test/test.dart';
import '../main.dart';

void main() {

  test('sample test', () {
    var eventToTest = CounterIncrement(2);
    var result = eventToTest.onTriggered(null, 1);
    expectLater(result, emits(3));
  });
}