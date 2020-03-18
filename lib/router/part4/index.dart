import 'package:flutter/material.dart';

import 'linearLayoutRoute.dart';
import 'flexRoute.dart';
import 'flowRoute.dart';
import 'stackRoute.dart';
import 'alignRoute.dart';

class Part4Route extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第四章")),
      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text("线性布局"),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LinearLayoutRoute();
              }));
            },
          ),
          FlatButton(
            child: Text("弹性布局"),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FlexRoute();
              }));
            },
          ),
          FlatButton(
            child: Text("流布局"),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FlowRoute();
              }));
            },
          ),
          FlatButton(
            child: Text("层叠布局"),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return StackRoute();
              }));
            },
          ),
          FlatButton(
            child: Text("对齐与相对定位"),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AlignRoute();
              }));
            },
          ),
        ],
      ),
    );
  }
}
