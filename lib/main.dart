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
          bodyText1: TextStyle(
            color: Colors.blueAccent,
            fontFamily: 'Arial',
            fontSize: 20.0,
          ),
          headline2: TextStyle(
              color: Colors.greenAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.w300),
        ),
      ),
      home: HomeView(title: 'This is Home View'),
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
            return IconButton(icon: const Icon(Icons.menu), onPressed: null);
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(child: Icon(Icons.add), onPressed: null),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(child: Icon(Icons.remove), onPressed: null),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(child: Icon(Icons.refresh), onPressed: null),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Tapped Button this many time:',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
