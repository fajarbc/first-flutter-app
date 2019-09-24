import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'screens/web_view_container.dart';

class App extends StatelessWidget {

  static String url = "https://fajarb.cf/biz-foto/server/history.php?id_te=961";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Arial",
          textTheme: TextTheme(
              button: TextStyle(color: Colors.white, fontSize: 18.0),
              title: TextStyle(color: Colors.red))),
      home: _launchURL(url),
    );
  }

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url,forceWebView: true,enableJavaScript: true, enableDomStorage: true);
    } else {
      throw 'Could not launch $url';
    }
  }

}
