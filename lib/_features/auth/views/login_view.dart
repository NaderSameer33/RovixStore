import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rovix/_features/auth/sections/auth_custom_painters.dart';
import 'package:rovix/_features/auth/sections/login_body.dart';
import 'package:rovix/core/extensisons/context_ext.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        size: Size(MediaQuery.of(context).size.width, 150.h),
        painter: AuthCustomPainter(
          gradient: LinearGradient(
            colors: [
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
            ],
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: LoginBody(),
      ),
    );
  }
}
