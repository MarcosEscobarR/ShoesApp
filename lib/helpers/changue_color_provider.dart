import 'package:flutter/material.dart';

class ZapatoProvider with ChangeNotifier {
  String _assetImage = 'assets/imgs/azul.png';
  double _talla = 7.0;

  String get assetImage => this._assetImage;
  set assetImage(String val) {
    this._assetImage = val;
    notifyListeners();
  }

  double get talla => this._talla;
  set talla(double val) {
    print(val);
    this._talla = talla;
    notifyListeners();
  }
}
