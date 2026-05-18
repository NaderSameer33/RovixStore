import 'package:flutter/material.dart';
import 'package:rovix/core/routes/base_routes.dart';
import 'package:rovix/test1.dart';
import 'package:rovix/test2.dart';

class AppRoutes {
  static const String test1 = 'test1';
  static const String test2 = 'test2';

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case test1:
        return BaseRoute(page: Test1());
      case test2:
        return BaseRoute(page: Test2());
    }
    return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
