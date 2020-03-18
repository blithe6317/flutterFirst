import 'package:flutter/material.dart';
import 'statelessEcho.dart';
import 'contextRoute.dart';
import 'counterWidget.dart';
import 'stateTestWidget.dart';
import 'cupertinoComponents.dart';
import 'tapboxA.dart';
import 'parentWidgetB.dart';
import 'parentWidgetC.dart';
import 'textComponents.dart';
import 'button.dart';
import 'imgsAndIcon.dart';
import 'switchAndCheckboxRoute.dart';
import 'textFieldRoute.dart';
import 'formRoute.dart';
import 'progress.dart';

class Part3Route extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("第三章")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//              FlatButton(
//                child: Text("无状态的Widget"),
//                textColor: Colors.blue,
//                onPressed: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return StatelessEcho();
//                  }));
//                },
//              ),
//              FlatButton(
//                child: Text("Context"),
//                textColor: Colors.blue,
//                onPressed: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return ContextRoute();
//                  }));
//                },
//              ),
//              FlatButton(
//                child: Text("生命周期"),
//                textColor: Colors.blue,
//                onPressed: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return CounterWidget();
//                  }));
//                },
//              ),
//              FlatButton(
//                child: Text("在widget树获取state对象"),
//                textColor: Colors.blue,
//                onPressed: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return StateTestWidget();
//                  }));
//                },
//              ),
//              FlatButton(
//                child: Text("cupertino 组件"),
//                textColor: Colors.blue,
//                onPressed: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return CupertinoTestRoute();
//                  }));
//                },
//              ),
//              FlatButton(
//                child: Text("Widget 管理自身状态"),
//                textColor: Colors.blue,
//                onPressed: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return TapboxA();
//                  }));
//                },
//              ),
//              FlatButton(
//                child: Text("Widget 父组件管理状态"),
//                textColor: Colors.blue,
//                onPressed: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return ParentBWidget();
//                  }));
//                },
//              ),
//              FlatButton(
//                child: Text("Widget 混合管理状态"),
//                textColor: Colors.blue,
//                onPressed: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return ParentWidgetC();
//                  }));
//                },
//              ),
              FlatButton(
                child: Text("文本及样式"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return TextRoute();
                  }));
                },
              ),
              FlatButton(
                child: Text("按钮"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ButtonRoute();
                  }));
                },
              ),
              FlatButton(
                child: Text("图片和图标"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ImgsAndIconRoute();
                  }));
                },
              ),
              FlatButton(
                child: Text("单选开关和复选框"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SwitchAndCheckBoxRoute();
                  }));
                },
              ),
              FlatButton(
                child: Text("输入框"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return TextFieldRoute();
                  }));
                },
              ),
              FlatButton(
                child: Text("表单"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FormRoute();
                  }));
                },
              ),
              FlatButton(
                child: Text("进度条"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProgressRoute();
                  }));
                },
              ),
            ],
          ),
        ));
  }
}
