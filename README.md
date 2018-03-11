# progress_hud

A clean and lightweight progress HUD for your Flutter app

## Example
```dart
return new Scaffold(
  appBar: new AppBar(
    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
    title: new Text(widget.title),
  ),
  body: new Stack(
    children: <Widget>[
      new Text(
        'A clean and lightweight progress HUD for your Flutter app'
      ),
      new ProgressHUD(
        backgroundColor: Colors.black12,
        color: Colors.orange
      )
    ],
  )
);
```


## Showcase

![](https://github.com/rcpassos/progress_hud/blob/master/progress_hud.gif)
