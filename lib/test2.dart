import 'package:flutter/material.dart';
import 'package:rovix/core/extensisons/context_ext.dart';

class Test2 extends StatelessWidget {
  const Test2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('test2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('data'),

            ElevatedButton(
              onPressed: () {
                context.popPage();
              },
              child: Text('Ahmed'),
            ),
          ],
        ),
      ),
    );
  }
}
