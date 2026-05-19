import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rovix/core/app/connectivity_controller.dart';
import 'package:rovix/core/app/env_variables.dart';
import 'package:rovix/core/common/views/no_network_view.dart';
import 'package:rovix/core/routes/app_routes.dart';
import 'package:rovix/core/style/theme/theme_data.dart';
import 'package:rovix/test1.dart';

class RovixStoreApp extends StatelessWidget {
  const RovixStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController().isConnected,
      builder: (_, value, _) {
        return ScreenUtilInit(
          designSize: Size(490, 844),
          splitScreenMode: true,
          minTextAdapt: true,

          child: GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
            child: MaterialApp(
              locale: context.locale,
              supportedLocales: context.supportedLocales,
              localizationsDelegates: context.localizationDelegates,

              themeAnimationDuration: Duration(milliseconds: 500),
              themeAnimationCurve: Curves.fastOutSlowIn,
              theme: CustomThemeData.darkTheme,
              onGenerateRoute: AppRoutes().onGenerateRoute,
              home: value ? Test1() : NoNetworkView(),
              debugShowCheckedModeBanner: EnvVariables().depugMode,
            ),
          ),
        );
      },
    );
  }
}
