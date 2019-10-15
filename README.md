# bloc_event

Make the Bloc Events easier to structure

## Getting Started

To use this plugin, add `bloc_event` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

### Basic Usage

Create your events base class like followed:
```dart
abstract class MyEvent extends Event<MyBloc, MyState> {}
```

Your actual Event should look like:
```dart
class DoSomethingEvent extends MyEvent {
  final String myData;
  
  DoSomethingEvent(this.myData);
  
  @Override
  Stream<MyState> onTriggered(MyBloc bloc, MyState state) async* {
    // Do your event stuff here
    yield state.copyWith(data: myData);
  }
}
```

By extending EventBloc in your Bloc you don't have to implement mapEventToState:
```dart
class MyBloc extends EventBloc<MyEvent, MyState> {
  
  @Override
  MyState get initialState => MyState();
  
}
```

That's it!!

## Testing
You are now able to test your events separated easily without even using the bloc

example coming soon
```dart
```
