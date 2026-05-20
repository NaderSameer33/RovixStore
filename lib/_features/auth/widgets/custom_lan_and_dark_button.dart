import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rovix/core/animation/animate_do.dart';
import 'package:rovix/core/common/widgets/app_text.dart';
import 'package:rovix/core/common/widgets/custom_linear_button.dart';
import 'package:rovix/core/extensisons/context_ext.dart';
import 'package:rovix/generated/l10n.dart';

class CustomLanAndDarkButton extends StatelessWidget {
  const CustomLanAndDarkButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomFadeInRight(
          duration: 400,
          child: CustomLinearButton(
            onPressed: () {},
            child: Icon(
              Icons.light_mode_rounded,
              color: Colors.white,
            ),
          ),
        ),
        CustomFadeInLeft(
          duration: 400,
          child: CustomLinearButton(
            width: 100,
            onPressed: () {},
            child: AppText(
              text: S.of(context).language,
              style: context.textStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
