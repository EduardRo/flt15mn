import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
            body2: TextStyle(
              fontSize: 12.0,
              color: Colors.black38,
              fontWeight: FontWeight.bold,
            ),
            display1: TextStyle(
                fontSize: 60.0,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
      home: HomeView(title: 'Time application'),
    );
  }
}

class HomeView extends StatelessWidget {
  final String title;
  HomeView({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(CupertinoIcons.suit_club), onPressed: null),
          IconButton(
              icon: const Icon(CupertinoIcons.suit_diamond_fill),
              onPressed: null),
        ],
      ),
    );
  }
}
