import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_app_state.dart';
import 'package:provider/provider.dart';

class FirstTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var data = appState.current2;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(data),
        SizedBox(height: 30,),
        ElevatedButton(
          onPressed: () {
            appState.fetchNext();
          },
          child: Text('Fetch'),
        ),
      ],
    );
  }
}
