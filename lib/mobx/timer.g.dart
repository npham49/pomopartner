// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Timer on TimerBase, Store {
  late final _$timersAtom = Atom(name: 'TimerBase.timers', context: context);

  @override
  ObservableList<TimerLocal> get timers {
    _$timersAtom.reportRead();
    return super.timers;
  }

  @override
  set timers(ObservableList<TimerLocal> value) {
    _$timersAtom.reportWrite(value, super.timers, () {
      super.timers = value;
    });
  }

  late final _$TimerBaseActionController =
      ActionController(name: 'TimerBase', context: context);

  @override
  void addTimer(TimerLocal value) {
    final _$actionInfo =
        _$TimerBaseActionController.startAction(name: 'TimerBase.addTimer');
    try {
      return super.addTimer(value);
    } finally {
      _$TimerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTimerByIndex(int index) {
    final _$actionInfo = _$TimerBaseActionController.startAction(
        name: 'TimerBase.removeTimerByIndex');
    try {
      return super.removeTimerByIndex(index);
    } finally {
      _$TimerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
timers: ${timers}
    ''';
  }
}
