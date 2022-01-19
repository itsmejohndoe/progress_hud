import 'package:flutter/material.dart';
import 'package:progress_hud_v2/progress_hud.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({key, required this.title}) : super(key: key);

  late final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late ProgressHUD _progressHUD;

  bool _loading = true;

  @override
  void initState() {
    super.initState();

    _progressHUD = ProgressHUD(
      backgroundColor: Colors.black12,
      color: Colors.white,
      containerColor: Colors.blue,
      borderRadius: 5.0,
      text: 'Loading...',
    );
  }

  @override
  Widget build(BuildContext context) {
    void dismissProgressHUD() {
      setState(() {
        if (_loading) {
          _progressHUD.state.dismiss();
        } else {
          _progressHUD.state.show();
        }

        _loading = !_loading;
      });
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('ProgressHUD Demo'),
        ),
        body: Stack(
          children: <Widget>[
            Text('A clean and lightweight progress HUD for your Flutter app'),
            _progressHUD,
            Positioned(
                child: FlatButton(onPressed: dismissProgressHUD, child: Text(_loading ? "Dismiss" : "Show")),
                bottom: 30.0,
                right: 10.0)
          ],
        ));
  }
}
