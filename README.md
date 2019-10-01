# bloc_event

Make the Bloc Events easier to structure

## Getting Started

### Adding dependency

**Github**
```yml
dependencies:
  bloc_event:
    git:
      url: git://github.com/Ownii/dart_bloc_event.git
      ref: v1.0
```

**pub.dev** dependency cooming soon...

### Basic Usage

Create your events base class like followed:
```dart
abstract class MyEvent<E> extends Event<MyBloc, MyState, E> {}
```

Your actual Event should look like:
```dart
class DoSomethingEvent extends MyEvent<DoSomethingEvent> {
  final String myData;
  
  DoSomethingEvent(this.myData);
  
  @Override
  Stream<MyState> onTriggered(MyBloc bloc, MyState currentState, DoSomethingEvent event) async* {
    // Do your event stuff here
    yield currentState.copyWith();
  }
}
```

By extending EventBloc in your Bloc you don't have to implement mapEventToState:
```dart
class MyBloc extends BlocEvent<MyEvent, MyState> {
  
  @Override
  MyState get initialState => MyState();
  
}
```

Thats it!!

## Testing
You are now able to test your events seperated easily without even using the bloc

example cooming soon
```dart
```
