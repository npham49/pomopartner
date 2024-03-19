import 'package:mobx/mobx.dart';

// Include generated file
part 'timer.g.dart';

// This is the class used by rest of your codebase
class Timer = TimerBase with _$Timer;

// The store-class
abstract class TimerBase with Store {
  @observable
  ObservableList<int> timers = ObservableList<int>.of([25, 5, 15]);

  @action
  void addTimer(int value) {
    timers.add(value);
  }

  @action
  void removeTimerByIndex(int index) {
    timers.removeAt(index);
  }
}
