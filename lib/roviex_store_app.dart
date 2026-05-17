import 'package:flutter/material.dart';
import 'package:rovix/core/app/env_variables.dart';

class RovixStoreApp extends StatelessWidget {
  const RovixStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariables().depugMode,
      home: Scaffold(
        body: Center(
          child: Text('Rovix Store Application'),
        ),
      ),
    );
  }
}
