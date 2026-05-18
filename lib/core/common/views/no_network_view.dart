import 'package:flutter/material.dart';
import 'package:rovix/core/style/images/app_image.dart';

class NoNetworkView extends StatelessWidget {
  const NoNetworkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImage.noNetworkImage,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
