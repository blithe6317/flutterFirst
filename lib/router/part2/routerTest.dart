import 'package:flutter/material.dart';

class RouterTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
      onPressed: () async {
        var result =
            await Navigator.push(context, MaterialPageRoute(builder: (context) {
          return TipRoute(
            text: "我是朱明宇",
          );
        }));
        print("路由返回值:$result");
      },
      child: Text("打开提示页"),
    ));
  }
}

class TipRoute extends StatelessWidget {
  TipRoute({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("提示")),
        body: Padding(
            padding: EdgeInsets.all(18),
            child: Center(
                child: Column(children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: () => Navigator.pop(context, "我是返回值"),
                child: Text("返回"),
              )
            ]))));
  }
}