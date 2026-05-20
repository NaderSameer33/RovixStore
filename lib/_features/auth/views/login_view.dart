import 'package:flutter/material.dart';
import 'package:rovix/_features/auth/sections/custom_bottom_nav_bar.dart';
import 'package:rovix/_features/auth/sections/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: SafeArea(
        bottom: false,
        child: LoginBody(),
      ),
    );
  }
}
