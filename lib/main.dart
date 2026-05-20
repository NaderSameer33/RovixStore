import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rovix/core/app/bloc_observer_implemenation.dart';
import 'package:rovix/core/app/connectivity_controller.dart';
import 'package:rovix/core/app/env_variables.dart';
import 'package:rovix/core/services/shared_pref/shared_pref.dart';
import 'package:rovix/firebase_options.dart';
import 'package:rovix/roviex_store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // todo init for a shared prefreces
  SharedPref.init();
  // todo this for observer state in bloc  pattern
  Bloc.observer = BlocObserverImplemenation();
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
      RovixStoreApp(),
    ),
  );
}
