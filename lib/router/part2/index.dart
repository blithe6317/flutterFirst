import 'package:flutter/material.dart';
import 'increment.dart';
import 'newRoute.dart';
import 'routerTest.dart';
import 'randomWordsWidget.dart';

class Part2Route extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("第二章")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("计数器"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return IncermentWidget();
                  }));
                },
              ),
              FlatButton(
                child: Text("简单路由"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NewRoute();
                  }));
                },
              ),
              FlatButton(
                child: Text("路由传参"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RouterTestRoute();
                  }));
                },
              ),
              RandomWordsWidget(),
            ],
          ),
        ));
  }
}
