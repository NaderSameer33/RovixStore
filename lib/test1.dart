import 'package:flutter/material.dart';
import 'package:rovix/core/extensisons/context_ext.dart';
import 'package:rovix/core/routes/app_routes.dart';

class Test1 extends StatelessWidget {
  const Test1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('test1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('data'),

            ElevatedButton(
              onPressed: () {
                context.pushPage(routeName: AppRoutes.test2);
              },
              child: Text('nader'),
            ),
          ],
        ),
      ),
    );
  }
}
