import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rovix/firebase_options.dart';
import 'package:rovix/roviex_store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const RovixStoreApp());
}
