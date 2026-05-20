import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rovix/core/animation/animate_do.dart';
import 'package:rovix/core/style/images/app_image.dart';

class UserAvatarImage extends StatelessWidget {
  const UserAvatarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 500,
      child: CircleAvatar(
        backgroundImage: AssetImage(
          AppImages.userAvatar,
        ),
        radius: 50.r,
        child: Icon(
          Icons.camera_alt,
        ),
      ),
    );
  }
}
