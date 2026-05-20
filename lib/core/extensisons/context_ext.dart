import 'package:flutter/material.dart';
import 'package:rovix/core/style/theme/color_extenstion.dart';
import 'package:rovix/core/style/theme/image_extenstion.dart';

extension ContextExt on BuildContext {
  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;
  MyColors get color => Theme.of(this).extension<MyColors>()!;
  MyAssets get image => Theme.of(this).extension<MyAssets>()!;
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
