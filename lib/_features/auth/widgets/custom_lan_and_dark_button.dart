
import 'package:flutter/material.dart';
import 'package:rovix/core/common/widgets/custom_linear_button.dart';

class CustomLanAndDarkButton extends StatelessWidget {
  const CustomLanAndDarkButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomLinearButton(
      onPressed: () {},
      child: Icon(
        Icons.light_mode_rounded,
        color: Colors.white,
      ),
    );
  }
}
