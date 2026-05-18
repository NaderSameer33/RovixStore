import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  void pushPage({required String routeName, Object? arguments}) {
    Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  void popPage() => Navigator.pop(this);

  void pushReplasmentPage({required String routeName, Object? arguments}) {
    Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }

  void pushAndRemoveUtilPage({
    required String routeName,
    Object? arguments,
    bool canPop = true,
  }) {
    Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      (_) => canPop,
      arguments: arguments,
    );
  }
}
