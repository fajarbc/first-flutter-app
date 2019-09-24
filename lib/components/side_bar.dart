import 'package:flutter/material.dart';
import '../screens/web_view_container.dart';
import 'package:url_launcher/url_launcher.dart';

class SideBar extends StatelessWidget {
//  final scaffoldKey = new GlobalKey<ScaffoldState>();

  _launchURL(url) async {
//  const url = 'https://flutter.dev';
  if (await canLaunch(url)) {
    await launch(url,forceWebView: true,enableJavaScript: true, enableDomStorage: true);
  } else {
    throw 'Could not launch $url';
  }
}

  @override
  Widget build(BuildContext context) {
    var urlHistory = "https://fajarb.cf/biz-foto/server/history.php?id_te=961";
    var urlPickup = "https://fajarb.cf/biz-foto/server/index.php?id_te=961";

    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Toko App'),
            automaticallyImplyLeading: false,
          ),
//          Divider(), // garis pemisah
//          ListTile(
//            leading: Icon(Icons.history),
//            title: Text('History'),
//            onTap: () {
//              Navigator.push(context,
//                  MaterialPageRoute(builder: (context) => WebViewContainer(urlHistory, "History"))
//              );
//
//            },
//          ),
//          Divider(),
//          ListTile(
//            leading: Icon(Icons.map),
//            title: Text('Pickup'),
//            onTap: () {
//              Navigator.push(context,
//                  MaterialPageRoute(builder: (context) => WebViewContainer(urlPickup, "Pickup"))
//              );
//
//            },
//          ),
//          Divider(),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('History'),
            onTap: () {
              _launchURL(urlHistory);

            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Pickup'),
            onTap: () {
              _launchURL(urlPickup);

            },
          ),
          Divider(),

  //          ListTile(
//            leading: Icon(Icons.lens),
//            title: Text('Tambah'),
//            onTap: () {
//              Navigator.of(context).pushReplacementNamed('/add-product');
//            },
//          )
        ],
      ),
    );
  }
}
