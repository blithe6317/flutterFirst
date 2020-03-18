import 'package:flutter/material.dart';

class TextFieldRoute extends StatefulWidget {
  @override
  _TextFieldTest createState() => new _TextFieldTest();
}

class _TextFieldTest extends State<TextFieldRoute> {
  TextEditingController _unameController = TextEditingController();
  TextEditingController _selectionController = TextEditingController();

  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  void dispose() {
    _unameController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _unameController.addListener(() {
      debugPrint('input:${_unameController.text}');
    });
    _unameController.text = "hello world!";

    _unameController.selection = TextSelection(
        baseOffset: 2, extentOffset: _selectionController.text.length);
  }

  void nameOnChange(String value) {
    print(_unameController.text);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("输入框和表单")),
      body: Column(
        children: <Widget>[
//          TextField(
////            autofocus: true,
//            controller: _unameController,
//            focusNode: focusNode1,
//            decoration: InputDecoration(
//                labelText: "用户名",
//                hintText: "用户名或邮箱",
//                prefixIcon: Icon(Icons.person)),
//          ),
//          TextField(
//            controller: _selectionController,
//            focusNode: focusNode2,
//            decoration: InputDecoration(
//                labelText: "密码",
//                hintText: "您的登录密码",
//                prefixIcon: Icon(Icons.lock)),
//            obscureText: true,
//          ),
//          TextField(
//              decoration: InputDecoration(
//                  labelText: "自定义样式",
//                  prefixIcon: Icon(Icons.person),
//                  enabledBorder: UnderlineInputBorder(
//                      borderSide: BorderSide(color: Colors.grey)),
//                  focusedBorder: UnderlineInputBorder(
//                      borderSide: BorderSide(color: Colors.blue)))),
//          Builder(builder: (ctx) {
//            return Column(
//              children: <Widget>[
//                RaisedButton(
//                  child: Text("移动焦点"),
//                  onPressed: () {
//                    if (null == focusScopeNode) {
//                      focusScopeNode = FocusScope.of(context);
//                    }
//                    focusScopeNode.requestFocus(focusNode2);
//                  },
//                ),
//                RaisedButton(
//                  child: Text("隐藏键盘"),
//                  onPressed: () {
//                    focusNode1.unfocus();
//                    focusNode2.unfocus();
//                  },
//                )
//              ],
//            );
//          }),
          Text("自定义hint输入框"),
          Theme(
            data: Theme.of(context).copyWith(
                hintColor: Colors.grey[200],
                inputDecorationTheme: InputDecorationTheme(
                    labelStyle: TextStyle(color: Colors.grey),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14))),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "用户名或邮箱",
                      prefixIcon: Icon(Icons.person)),
                ),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "密码",
                      hintText: "您的密码",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 13)),
                  obscureText: true,
                ),
                Container(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "邮箱",
                          prefixIcon: Icon(Icons.email),
                          border: InputBorder.none),
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.grey[200], width: 1))))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
