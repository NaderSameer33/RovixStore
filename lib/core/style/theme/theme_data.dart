import 'package:flutter/material.dart';
import 'package:rovix/core/style/colors/dark_color.dart';
import 'package:rovix/core/style/colors/light_color.dart';
import 'package:rovix/core/style/theme/color_extenstion.dart';
import 'package:rovix/core/style/theme/image_extenstion.dart';

abstract class CustomThemeData {
  static ThemeData get darkTheme {
    return ThemeData(
      scaffoldBackgroundColor: DarkColor.mainColor,

      extensions: <ThemeExtension<dynamic>>[
        ColorExtenstion.dark,
        ImageExtenstion.dark,
      ],
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: LightColor.mainColor,
      extensions: <ThemeExtension<dynamic>>[
        ColorExtenstion.light,
        ImageExtenstion.light,
      ],
    );
  }
}
