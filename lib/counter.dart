// import 'dart:ffi';

import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int value = 0;

  @observable
  String text = '';

  @action
  void increment() {
    value++;
  }

  @action
  // ignore: avoid_types_as_parameter_names
  void addText(String str) {
    text += str;
  }
}
