import 'dart:async';
import 'banco_model.dart';
import 'package:rxdart/rxdart.dart';

class Bloc {
  final BehaviorSubject<BancoModel> _ctr = BehaviorSubject<BancoModel>();

  //Stream<int> get output2 => _ctr.stream.map((data) => data.length);
  Sink<BancoModel> get input => _ctr.sink;
  Stream<BancoModel> get output => _ctr.stream;

  addText(BancoModel text) {
    input.add(text);
  }
}
