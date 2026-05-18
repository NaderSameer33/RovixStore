import 'package:flutter/material.dart';
import 'package:rovix/core/app/connectivity_controller.dart';
import 'package:rovix/core/app/env_variables.dart';
import 'package:rovix/core/common/views/no_network_view.dart';

class RovixStoreApp extends StatelessWidget {
  const RovixStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController().isConnected,
      builder: (_, value, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: EnvVariables().depugMode,
          home: value
              ? Scaffold(
                  body: Center(
                    child: Text('data'),
                  ),
                )
              : NoNetworkView(),
        );
      },
    );
  }
}
