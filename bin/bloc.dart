import 'dart:async';
import 'banco_model.dart';
import 'package:rxdart/rxdart.dart';

class Bloc {
  final BehaviorSubject<int> _ctr = BehaviorSubject<int>();

  //Stream<int> get output2 => _ctr.stream.map((data) => data.length);
  Sink<int> get input => _ctr.sink;
  Stream<int> get output => _ctr.stream;

  addText(int text) {
    input.add(text);
  }
}
