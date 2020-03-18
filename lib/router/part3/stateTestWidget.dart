import 'package:flutter/material.dart';

class StateTestWidget extends StatefulWidget {
  @override
  _StateTestWidget createState() => _StateTestWidget();
}

class _StateTestWidget extends State<StateTestWidget> {
  BuildContext ctx;
  static GlobalKey<ScaffoldState> _globalKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        appBar: AppBar(title: Text("子树中获取State对象")),
        body: Builder(builder: (context) {
          return RaisedButton(
            onPressed: () {
              ScaffoldState _state = Scaffold.of(context);
              _state.showSnackBar(SnackBar(
                content: Text("我是SnackerBar"),
              ));
            },
            child: Text("显示SnackBar"),
          );
        }));
  }
}