import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rovix/core/animation/animate_do.dart';
import 'package:rovix/core/common/widgets/app_text.dart';
import 'package:rovix/core/common/widgets/custom_linear_button.dart';
import 'package:rovix/core/common/widgets/custom_text_field.dart';
import 'package:rovix/core/extensisons/context_ext.dart';
import 'package:rovix/core/utils/app_regex.dart';
import 'package:rovix/generated/l10n.dart';

class LoginTextFormFild extends StatefulWidget {
  const LoginTextFormFild({super.key});

  @override
  State<LoginTextFormFild> createState() => _LoginTextFormFildState();
}

class _LoginTextFormFildState extends State<LoginTextFormFild> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final key = GlobalKey<FormState>();
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Column(
        children: [
          CustomFadeInRight(
            duration: 400,
            child: CustomTextField(
              controller: emailController,
              hintText: S.of(context).your_email,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (!AppRegex.isEmailValid(emailController.text)) {
                  return S.of(context).valid_email;
                }
                return null;
              },
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomFadeInLeft(
            duration: 400,
            child: CustomTextField(
              controller: passwordController,
              suffixIcon: IconButton(
                onPressed: () {
                  isVisible = !isVisible;
                  setState(() {});
                },
                icon: Icon(
                  isVisible ? Icons.visibility : Icons.visibility_off,
                ),
                color: context.color.textColor,
              ),
              obscureText: !isVisible,

              hintText: S.of(context).password,
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (!AppRegex.isPasswordValid(passwordController.text)) {
                  return S.of(context).valid_passwrod;
                }
                return null;
              },
            ),
          ),

          SizedBox(
            height: 30.h,
          ),
          CustomLinearButton(
            width: MediaQuery.of(context).size.width,
            onPressed: () {},
            child: AppText(
              text: S.of(context).login,
              style: context.textStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 24.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
