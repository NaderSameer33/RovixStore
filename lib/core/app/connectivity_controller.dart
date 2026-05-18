import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  ConnectivityController._internal();
  static final _instance = ConnectivityController._internal();

  factory ConnectivityController() {
    return _instance;
  }

  ValueNotifier<bool> isConnected = ValueNotifier(true);

  Future<void> init() async {
    var result = await Connectivity().checkConnectivity();
    isConnectedInternet(result);

    Connectivity().onConnectivityChanged.listen(isConnectedInternet);
  }

  void isConnectedInternet(List<ConnectivityResult> result) {
    for (ConnectivityResult element in result) {
      if (element == ConnectivityResult.none) {
        isConnected.value = false;
      } else if (element == ConnectivityResult.mobile ||
          element == ConnectivityResult.wifi) {
        isConnected.value = true;
      }
    }
  }
}
