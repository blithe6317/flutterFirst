import 'package:flutter/material.dart';
import 'paddingRoute.dart';
import 'boxRoute.dart';
import 'decoratedBox.dart';

class Part5Route extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第五章")),
      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text("填充"),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PaddingRoute();
              }));
            },
          ),
          FlatButton(
            child: Text("尺寸限制类容器"),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BoxRoute();
              }));
            },
          ),
          FlatButton(
            child: Text("装饰容器"),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DecoratedBoxRoute();
              }));
            },
          ),
        ],
      ),
    );
  }
}
