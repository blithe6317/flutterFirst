import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'router/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => MyHomePage(title: "Flutter Demo Home Page"),
        "part2": (content) => Part2Route(),
        "part3": (content) => Part3Route(),
        "part4": (content) => Part4Route(),
        "part5": (content) => Part5Route(),
      },
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          String routeName = settings.name;
          print("route:" + routeName);
        });
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("第二章"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "part2");
              },
            ),
            FlatButton(
              child: Text("第三章"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "part3");
              },
            ),
            FlatButton(
              child: Text("第四章"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "part4");
              },
            ),
            FlatButton(
              child: Text("第五章"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, "part5");
              },
            ),
          ],
        ),
      ),
    );
  }
}
