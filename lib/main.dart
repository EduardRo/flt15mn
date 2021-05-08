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
            bodyText1: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            headline4: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
      home: HomeView(title: 'Time application'),
    );
  }
}

class HomeView extends StatefulWidget {
  final String title;
  HomeView({this.title});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _counter = 0;

  void increase() {
    setState(() {
      _counter++;
    });
  }

  void decrease() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  void refresh() {
    setState(() {
      _counter = 0;
    });
  }

  List<Color> _color = [
    Colors.blueAccent,
    Colors.redAccent,
    Colors.deepOrange,
    Colors.deepPurpleAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color[_counter % _color.length],
      appBar: AppBar(
        title: Text(widget.title),
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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(child: Icon(Icons.add), onPressed: increase),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(child: Icon(Icons.remove), onPressed: decrease),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(child: Icon(Icons.refresh), onPressed: refresh),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is the text zone',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23.0,
                color: Colors.blueAccent,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
      ),
    );
  }
}
