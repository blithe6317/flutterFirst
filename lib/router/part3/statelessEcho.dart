import 'package:flutter/material.dart';

class StatelessEcho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("无状态的Widget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Echo(text: "老大去哪里？"),
            Echo(text: "小三去哪里？"),
            Echo(text: "蛋蛋去哪里？"),
            Echo(text: "天天去哪里？"),
          ],
        ),
      ),
    );
  }
}

class Echo extends StatelessWidget {
  const Echo({
    Key,
    key,
    @required this.text,
    this.backgroundColor: Colors.grey,
  }) : super(key: key);

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: backgroundColor,
      child: Text(text),
    ));
  }
}
