import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<DocumentReference> _carrinho = [];
  List<DocumentReference> get carrinho => _carrinho;
  set carrinho(List<DocumentReference> _value) {
    _carrinho = _value;
  }

  void addToCarrinho(DocumentReference _value) {
    _carrinho.add(_value);
  }

  void removeFromCarrinho(DocumentReference _value) {
    _carrinho.remove(_value);
  }

  void removeAtIndexFromCarrinho(int _index) {
    _carrinho.removeAt(_index);
  }

  void updateCarrinhoAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _carrinho[_index] = updateFn(_carrinho[_index]);
  }

  void insertAtIndexInCarrinho(int _index, DocumentReference _value) {
    _carrinho.insert(_index, _value);
  }

  double _SomaCarrinho = 0.0;
  double get SomaCarrinho => _SomaCarrinho;
  set SomaCarrinho(double _value) {
    _SomaCarrinho = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
