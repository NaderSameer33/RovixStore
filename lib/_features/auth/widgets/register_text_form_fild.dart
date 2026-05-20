import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rovix/core/animation/animate_do.dart';
import 'package:rovix/core/common/widgets/app_text.dart';
import 'package:rovix/core/common/widgets/custom_linear_button.dart';
import 'package:rovix/core/common/widgets/custom_text_field.dart';
import 'package:rovix/core/extensisons/context_ext.dart';
import 'package:rovix/core/utils/app_regex.dart';
import 'package:rovix/generated/l10n.dart';

class RegisterTextFormFild extends StatefulWidget {
  const RegisterTextFormFild({super.key});

  @override
  State<RegisterTextFormFild> createState() => _RegisterTextFormFildState();
}

class _RegisterTextFormFildState extends State<RegisterTextFormFild> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomFadeInRight(
            duration: 500,
            child: CustomTextField(
              controller: nameController,
              hintText: S.of(context).full_name,
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 4) {
                  return S.of(context).valid_name;
                }
                return null;
              },
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomFadeInLeft(
            duration: 500,
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
            height: 15.h,
          ),

          CustomFadeInLeft(
            duration: 500,
            child: CustomTextField(
              controller: passwordController,
              hintText: S.of(context).password,
              keyboardType: TextInputType.visiblePassword,
              obscureText: !isVisible,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },

                icon: Icon(
                  isVisible ? Icons.visibility : Icons.visibility_off,
                  color: context.color.textColor,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return S.of(context).valid_passwrod;
                }
                return null;
              },
            ),
          ),

          SizedBox(
            height: 30.h,
          ),
          CustomFadeInDown(
            duration: 400,

            child: CustomLinearButton(
              width: MediaQuery.of(context).size.width,
              height: 50.h,
              onPressed: () {
                if (formKey.currentState!.validate()) {}
              },

              child: AppText(
                text: S.of(context).sign_up,
                style: context.textStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
