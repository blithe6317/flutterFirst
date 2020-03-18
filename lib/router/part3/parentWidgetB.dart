import 'package:flutter/material.dart';
import 'tapboxB.dart';

class ParentBWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentBWidget> {
  bool _active = false;

  void _handleTapboxChnged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new TapboxB(
        active: _active,
        onChanged: _handleTapboxChnged,
      ),
    );
  }
}
