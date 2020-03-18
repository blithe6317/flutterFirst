import 'package:flutter/material.dart';

class ImgsAndIconRoute extends StatelessWidget {
  String icons = "\uE914 \uE000 \uE90D";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("图片和图标")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("imgs/avatar.png"),
              width: 100,
            ),
            Image.asset("imgs/avatar.png", width: 100),
            Image(
              image: AssetImage("imgs/avatar.png"),
              width: 150,
              color: Colors.red,
              colorBlendMode: BlendMode.difference,
            ),
            Text(icons,
                style: TextStyle(
                    fontFamily: "MaterialIcons",
                    fontSize: 34,
                    color: Colors.green)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.accessible,
                  color: Colors.green,
                ),
                Icon(
                  Icons.error,
                  color: Colors.green,
                ),
                Icon(
                  Icons.fingerprint,
                  color: Colors.green,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
