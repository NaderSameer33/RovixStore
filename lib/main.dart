import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rovix/core/app/connectivity_controller.dart';
import 'package:rovix/core/app/env_variables.dart';
import 'package:rovix/firebase_options.dart';
import 'package:rovix/roviex_store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // todo this is for localization
  await EasyLocalization.ensureInitialized();
  // todo env file for secure a baseUrl and other
  await EnvVariables.loadEnv(type: EnvTypeEnum.dev);
  //  todo stream for a connection to check a internet
  ConnectivityController().init();
  // todo this for prevent a device orintation
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then(
    (_) => runApp(
      EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/lang',
        fallbackLocale: Locale('en'),
        child: const RovixStoreApp(),
      ),
    ),
  );
}
