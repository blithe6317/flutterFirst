import 'package:flutter/material.dart';

class StackRoute extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("层叠布局")),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                child:
                    Text("Hello World", style: TextStyle(color: Colors.white)),
                color: Colors.red,
              ),
              Positioned(
                left: 18,
                child: Text("I am Jack"),
              ),
              Positioned(
                top: 18,
                child: Text("I am Rose"),
              )
            ],
          ),
        ));
  }
}
