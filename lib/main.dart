//import 'package:flutter/material.dart';
//import 'app.dart';
//
//void main() => runApp(App());

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Toko App';

    return new MaterialApp(
      title: title,
      routes: {
        '/history': (_) => new WebviewScaffold(
          url: "https://fajarb.cf/biz-foto/server/history.php?id_te=961",
          appBar: new AppBar(
            title: const Text('History'),
          ),
          withZoom: true,
          withLocalStorage: true,
          withJavascript: true,
//          debuggingEnabled: true,
        ),
        '/pickup': (_) => new WebviewScaffold(
          url: "https://fajarb.cf/biz-foto/server/index.php?id_te=961",
          appBar: new AppBar(
            title: const Text('Pickup'),
          ),
          withZoom: true,
          withLocalStorage: true,
          withJavascript: true,
//          debuggingEnabled: true,
        )

      },
      home: new MyAppHomePage(),
    );
  }
}

class MyAppHomePage extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyAppHomePage> {


  void _openHistory() {
    Navigator.of(context).pushNamed('/history');
  }
  void _openPickup() {
    Navigator.of(context).pushNamed('/pickup');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Toko App"),
        ),
        body: new Column(
          children: <Widget>[
            new Center(
              child: new RaisedButton(
                  child: Text('History'),
                  onPressed: () {
                    _openHistory();
                  }
              ) ,
            ),
            new Center(
              child: new RaisedButton(
                  child: Text('Pickup'),
                  onPressed: () {
                    _openPickup();
                  }
              ) ,
            )
          ],
        )
    );
  }

}