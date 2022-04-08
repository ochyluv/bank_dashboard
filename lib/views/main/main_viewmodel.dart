import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  bool _receivedCheckValue = true;
  bool get receivedCheckValue => _receivedCheckValue;

  bool _sendCheckValue = false;
  bool get sendCheckValue => _sendCheckValue;

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  void onReceivedCheckChanged(value) {
    _receivedCheckValue = value;
    notifyListeners();
  }

  void onSendCheckChanged(value) {
    _sendCheckValue = value;
    notifyListeners();
  }
}
