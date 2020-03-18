import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextRoute extends StatefulWidget {
  @override
  _TextRouteState createState() => _TextRouteState();
}

class _TextRouteState extends State<TextRoute> {
  GestureRecognizer _tapRecognizer;

  @override
  void initState() {
    _tapRecognizer = TapGestureRecognizer();
    super.initState();
  }

  @override
  void dispose() {
    _tapRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("文本及样式")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Hello world",
            textAlign: TextAlign.left,
          ),
          Text(
            "Hello world!123456789" * 4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Hello world!123456789" * 6,
          ),
          Text(
            "Hello world!",
            textScaleFactor: 1.5,
          ),
          Text("Hello world!",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  height: 1.2,
                  fontFamily: "Courier",
                  background: new Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed)),
          Text.rich(TextSpan(children: [
            TextSpan(text: "Home:"),
            TextSpan(
                text: "https://flutterchina.club",
                style: TextStyle(color: Colors.blue),
                recognizer: _tapRecognizer)
          ])),
          DefaultTextStyle(
            style: TextStyle(color: Colors.red, fontSize: 20),
            textAlign: TextAlign.start,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("hello world"),
                Text("I am Jack"),
                Text("I am Jack",
                    style: TextStyle(inherit: false, color: Colors.grey)),
//                Text("这是一个新字体", style: TextStyle(fontFamily: "NewFonts"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
