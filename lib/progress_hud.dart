library progress_hud;

import 'package:flutter/material.dart';

class ProgressHUD extends StatelessWidget {
  final Color backgroundColor;
  final Color color;

  ProgressHUD({
    Key key,
    this.backgroundColor = Colors.black54,
    this.color = Colors.white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: backgroundColor,
        body: new Center(
            child: new CircularProgressIndicator(
              valueColor: new AlwaysStoppedAnimation(color)
            )
        )
    );
  }
}

