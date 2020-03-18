import 'package:flutter/material.dart';

class BoxRoute extends StatelessWidget {
  Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("尺寸限制类容器"),
          actions: <Widget>[
            UnconstrainedBox(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation(Colors.white60),
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            ConstrainedBox(
              constraints:
                  BoxConstraints(minWidth: double.infinity, minHeight: 50),
              child: Container(
                height: 5,
                child: redBox,
              ),
            ),
            SizedBox(
              width: 80,
              height: 80,
              child: redBox,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(minWidth: 90, minHeight: 20),
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 60, minHeight: 60),
                child: redBox,
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(minWidth: 60, minHeight: 100),
              child: UnconstrainedBox(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 90, minHeight: 20),
                  child: redBox,
                ),
              ),
            )
          ],
        ));
  }
}
