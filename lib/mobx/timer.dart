import 'package:mobx/mobx.dart';
import 'package:pomopartner/models/timer_local.dart';

// Include generated file
part 'timer.g.dart';

// This is the class used by rest of your codebase
class Timer = TimerBase with _$Timer;

// The store-class
abstract class TimerBase with Store {
  @observable
  ObservableList<TimerLocal> timers = ObservableList<TimerLocal>.of([]);

  @action
  void addTimer(TimerLocal value) {
    timers.add(value);
  }

  @action
  void removeTimerByIndex(int index) {
    timers.removeAt(index);
  }
}
