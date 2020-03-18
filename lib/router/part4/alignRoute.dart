import 'package:flutter/material.dart';

class AlignRoute extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("对齐与相对定位")),
        body: Column(
          children: <Widget>[
            Container(
//          height: 120,
//          width: 120,
              color: Colors.blue[50],
              child: Align(
                widthFactor: 2,
                heightFactor: 2,
                alignment: Alignment.topRight,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            Container(
              color: Colors.blue[100],
              child: Align(
                widthFactor: 2,
                heightFactor: 2,
                alignment: Alignment(2, 0),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            Container(
              height: 120,
              width: 120,
              color: Colors.blue[50],
              child: Align(
                alignment: FractionalOffset(0.2, 0.6),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Center(
                child: Text("xxx"),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Center(
                widthFactor: 1,
                heightFactor: 1,
                child: Text("xxx"),
              ),
            )
          ],
        ));
  }
}
