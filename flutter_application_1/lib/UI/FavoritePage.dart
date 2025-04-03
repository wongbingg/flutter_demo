
import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyAppState.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return ListView(
      children: [
        Padding(padding: const EdgeInsets.all(20), child: Text('You have ${appState.favorites.length} favorites'),),
        for (var text in appState.favorites)
        ListTile(leading: Icon(Icons.favorite), title: Text(text.asLowerCase),)
      ]
    );
  }
}
