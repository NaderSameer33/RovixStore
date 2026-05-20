import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rovix/core/style/colors/dark_color.dart';
import 'package:rovix/core/style/colors/light_color.dart';
import 'package:rovix/core/style/fonts/font_familiy_helper.dart';
import 'package:rovix/core/style/theme/color_extenstion.dart';
import 'package:rovix/core/style/theme/image_extenstion.dart';

abstract class CustomThemeData {
  static ThemeData get darkTheme {
    return ThemeData(
      scaffoldBackgroundColor: ColorsDark.mainColor,

      extensions: <ThemeExtension<dynamic>>[
        MyColors.dark,
        MyAssets.dark,
      ],

      textTheme: TextTheme(
        displaySmall: TextStyle(
          fontSize: 14,
          color: ColorsDark.white,

          fontFamily: FontFamiliyHelper.getLocalized(),
        ),
      ),
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: ColorsLight.mainColor,
      extensions: <ThemeExtension<dynamic>>[
        MyColors.light,
        MyAssets.light,
      ],

      textTheme: TextTheme(
        displaySmall: TextStyle(
          fontSize: 14,
          color: ColorsLight.black,

          fontFamily: FontFamiliyHelper.getLocalized(),
        ),
      ),
    );
  }
}
