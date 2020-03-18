import 'package:flutter/material.dart';

class IncermentWidget extends StatefulWidget {
  IncermentWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Incerment createState() => _Incerment();
}

class _Incerment extends State<IncermentWidget> {
  int _counter = 0;

  void _incermentCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("计数器示例"),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text('$_counter', style: Theme.of(context).textTheme.display1)
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: _incermentCounter,
        tooltip: "Incerment",
        child: Icon(Icons.add),
      ),
    );
  }
}
