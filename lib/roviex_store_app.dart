import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rovix/core/app/connectivity_controller.dart';
import 'package:rovix/core/app/env_variables.dart';
import 'package:rovix/core/fonts/font_familiy_helper.dart';
import 'package:rovix/core/routes/app_routes.dart';

class RovixStoreApp extends StatelessWidget {
  const RovixStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController().isConnected,
      builder: (_, value, _) {
        return ScreenUtilInit(
          designSize: Size(490, 44),
          splitScreenMode: true,
          minTextAdapt: true,
          child: MaterialApp(
            onGenerateRoute: AppRoutes().onGenerateRoute,
            initialRoute: AppRoutes.test1,
            debugShowCheckedModeBanner: EnvVariables().depugMode,
          ),
        );
      },
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'نادر سمير جابر ',
              style: TextStyle(
                fontFamily: FontFamiliyHelper.cairoArbic,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'nader Sameer Gaber',
              style: TextStyle(
                fontFamily: FontFamiliyHelper.poppinsEnglish,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
