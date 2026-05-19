import 'package:flutter/material.dart';
import 'package:rovix/core/style/images/app_image.dart';

class ImageExtenstion extends ThemeExtension<ImageExtenstion> {
  final String? mainImage;

  const ImageExtenstion({this.mainImage});

  @override
  ThemeExtension<ImageExtenstion> copyWith({String? mainImage}) {
    return ImageExtenstion(mainImage: mainImage ?? this.mainImage);
  }

  @override
  ThemeExtension<ImageExtenstion> lerp(
    covariant ThemeExtension<ImageExtenstion> other,
    double t,
  ) {
    if (other is! ImageExtenstion) {
      if (t < .5) {
        return this;
      } else {
        return other;
      }
    }

    return ImageExtenstion(mainImage: mainImage);
  }

  static ImageExtenstion dark = ImageExtenstion(
    mainImage: AppImage.emptyScreen,
  );
  static ImageExtenstion light = ImageExtenstion(
    mainImage: AppImage.pageUnderBuild,
  );
}
