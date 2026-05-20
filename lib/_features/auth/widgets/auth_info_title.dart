import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rovix/core/animation/animate_do.dart';
import 'package:rovix/core/common/widgets/app_text.dart';
import 'package:rovix/core/extensisons/context_ext.dart';

class AuthInfoTitle extends StatelessWidget {
  const AuthInfoTitle({
    super.key,
    required this.title,
    required this.decrption,
  });
  final String title;
  final String decrption;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: Column(
        children: [
          AppText(
            text: title,
            style: context.textStyle.copyWith(
              fontSize: 24.sp,
              color: context.color.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          AppText(
            text: decrption,
            style: context.textStyle.copyWith(
              fontSize: 14.sp,
              color: context.color.textColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
