import 'package:flutter/material.dart';
import 'package:rovix/core/style/theme/color_extenstion.dart';
import 'package:rovix/core/style/theme/image_extenstion.dart';

extension ContextExt on BuildContext {
  ColorExtenstion get color => Theme.of(this).extension<ColorExtenstion>()!;
  ImageExtenstion get image => Theme.of(this).extension<ImageExtenstion>()!;
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
