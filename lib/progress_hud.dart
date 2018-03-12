library progress_hud;

import 'package:flutter/material.dart';

class ProgressHUD extends StatelessWidget {
  final Color backgroundColor;
  final Color color;
  final Color containerColor;
  final double borderRadius;

  ProgressHUD({
    Key key,
    this.backgroundColor = Colors.black54,
    this.color = Colors.white,
    this.containerColor = Colors.transparent,
    this.borderRadius = 10.0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: backgroundColor,
        body: new Stack(
          children: <Widget>[
            new Center(
              child: new Container(
                width: 100.0,
                height: 100.0,
                decoration: new BoxDecoration(
                    color: containerColor,
                    borderRadius: new BorderRadius.all(
                        new Radius.circular(borderRadius)
                    )
                ),
              ),
            ),
            new Center(
              child: new CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation(color)
              ),
            ),
          ],
        )
    );
  }
}
