import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rovix/_features/auth/widgets/auth_info_title.dart';
import 'package:rovix/_features/auth/widgets/custom_lan_and_dark_button.dart';
import 'package:rovix/_features/auth/widgets/register_text_form_fild.dart';
import 'package:rovix/_features/auth/widgets/user_avatar_image.dart';
import 'package:rovix/core/animation/animate_do.dart';
import 'package:rovix/core/common/widgets/app_text.dart';
import 'package:rovix/core/extensisons/context_ext.dart';
import 'package:rovix/generated/l10n.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

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
            title: S.of(context).sign_up,
            decrption: S.of(context).sign_up_welcome,
          ),
          SizedBox(
            height: 10.h,
          ),
          UserAvatarImage(),
          SizedBox(
            height: 30.h,
          ),
          RegisterTextFormFild(),

          // LoginTextFormFild(),
          SizedBox(
            height: 20.h,
          ),
          CustomFadeInRight(
            duration: 400,
            child: TextButton(
              onPressed: () => context.popPage(),
              child: AppText(
                text: S.of(context).you_have_account,
                style: context.textStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
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
