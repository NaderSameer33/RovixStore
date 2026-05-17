import 'package:flutter/material.dart';

class RovixStoreApp extends StatelessWidget {
  const RovixStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Rovix Store Application'),
        ),
      ),
    );
  }
}
