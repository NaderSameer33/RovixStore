import 'package:flutter/material.dart';
import 'package:rovix/_features/auth/views/login_view.dart';
import 'package:rovix/_features/auth/views/register_view.dart';
import 'package:rovix/core/routes/base_routes.dart';

class AppRoutes {
  static const String login = '/login';
  static const String register = '/register';

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return BaseRoute(page: LoginView());
      case register:
        return BaseRoute(page: RegisterView());
    }
    return MaterialPageRoute(
      builder: (context) => Scaffold(),
    );
  }
}
