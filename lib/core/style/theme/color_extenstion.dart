import 'package:flutter/material.dart';
import 'package:rovix/core/style/colors/dark_color.dart';
import 'package:rovix/core/style/colors/light_color.dart';

class ColorExtenstion extends ThemeExtension<ColorExtenstion> {
  final Color? mainColro;
  ColorExtenstion({required this.mainColro});
  @override
  ThemeExtension<ColorExtenstion> copyWith({Color? color}) {
    return ColorExtenstion(mainColro: color);
  }

  @override
  ThemeExtension<ColorExtenstion> lerp(
    covariant ThemeExtension<ColorExtenstion>? other,
    double t,
  ) {
    if (other is! ColorExtenstion) {
      return this;
    }
    return ColorExtenstion(mainColro: mainColro);
  }

  static ColorExtenstion dark = ColorExtenstion(
    mainColro: DarkColor.mainColor,
  );
  static ColorExtenstion light = ColorExtenstion(
    mainColro: LightColor.mainColor,
  );
}
