import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rovix/_features/auth/widgets/auth_info_title.dart';
import 'package:rovix/_features/auth/widgets/custom_lan_and_dark_button.dart';
import 'package:rovix/_features/auth/widgets/login_text_form_fild.dart';
import 'package:rovix/core/animation/animate_do.dart';
import 'package:rovix/core/common/widgets/app_text.dart';
import 'package:rovix/core/extensisons/context_ext.dart';
import 'package:rovix/core/routes/app_routes.dart';
import 'package:rovix/generated/l10n.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        children: [
          CustomLanAndDarkButton(),
          SizedBox(
            height: 50.h,
          ),
          AuthInfoTitle(
            title: S.of(context).login,
            decrption: S.of(context).welcome,
          ),
          SizedBox(
            height: 30.h,
          ),

          LoginTextFormFild(),
          SizedBox(
            height: 20.h,
          ),
          CustomFadeInRight(
            duration: 400,
            child: TextButton(
              onPressed: () => context.pushPage(routeName: AppRoutes.register),
              child: AppText(
                text: S.of(context).create_account,
                style: context.textStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.sp,
                  color: context.color.bluePinkLight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
