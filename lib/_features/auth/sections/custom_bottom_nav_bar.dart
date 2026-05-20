import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rovix/_features/auth/sections/auth_custom_painters.dart';
import 'package:rovix/core/extensisons/context_ext.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(MediaQuery.of(context).size.width, 150.h),
      painter: AuthCustomPainter(
        gradient: LinearGradient(
          colors: [
            context.color.bluePinkLight!,

            context.color.bluePinkLight!,
          ],
        ),
      ),
    );
  }
}
