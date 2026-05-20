import 'package:flutter/material.dart';
import 'package:rovix/_features/auth/sections/custom_bottom_nav_bar.dart';
import 'package:rovix/_features/auth/sections/register_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: SafeArea(
        bottom: false,
        child: RegisterBody(),
      ),
    );
  }
}
