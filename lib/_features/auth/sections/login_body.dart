import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rovix/_features/auth/widgets/auth_info_title.dart';
import 'package:rovix/_features/auth/widgets/custom_lan_and_dark_button.dart';
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
          AuthInfoTitle(
            title: S.of(context).login,
            decrption: S.of(context).welcome,
          ),
        ],
      ),
    );
  }
}
