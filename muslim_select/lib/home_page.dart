import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseMessaging firebaseMessaging = FirebaseMessaging();

  bool _isLoading = true;
  //String url = "https://www.budgethome.co.uk";
  String url = "https://www.muslimselect.com/mobile/";

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    FlutterWebviewPlugin flutterWebViewPlugin = FlutterWebviewPlugin();
    flutterWebViewPlugin.onStateChanged.listen((WebViewStateChanged wvs) {
      if (wvs.type == WebViewState.finishLoad) {
        print("complete");
        setState(() {
          _isLoading = false;
        });
      }
    });
    firebaseMessaging
        .requestNotificationPermissions(const IosNotificationSettings(
      alert: true,
      badge: true,
      sound: true,
    ));
    firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {
      print("iOS App Registered");
    });
    firebaseMessaging.configure(
      onLaunch: (Map<String, dynamic> msg) async {
        print("onLaunch");
      },
      onMessage: (Map<String, dynamic> msg) async {
        print("onMessage");
      },
      onResume: (Map<String, dynamic> msg) async {
        print("onResume");
      },
    );

    firebaseMessaging.getToken().then((token) {
      print("Here is token: " + token);
    });
  }

  Future<Null> loadWebview() async {
    setState(() {
      url = "https://www.muslimselect.com/mobile/";
    });
    return null;
  }

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: loadWebview,
          child: WebView(
            initialUrl: url,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
          ),
        ),
      ),
//      bottomNavigationBar: _isLoading == true
//          ? Container(
//              color: Colors.transparent,
//              alignment: Alignment.center,
//              height: 50.0,
//              width: 50.0,
//              //margin: EdgeInsets.only(bottom: 30.0),
//              child: CircularProgressIndicator(
//                //backgroundColor: Colors.red[700],
//                strokeWidth: 4.0,
//              ),
//            )
//          : Container(
//              height: 0.0,
//            ),

//      child: WebviewScaffold(
//        //appBar: AppBar(title: Text("data")),
//        url: url,
//        withJavascript: true,
//        withLocalStorage: true,
//        withZoom: true,
//        hidden: true,
//        bottomNavigationBar: _isLoading == true
//            ? Container(
//                color: Colors.transparent,
//                alignment: Alignment.center,
//                height: 50.0,
//                width: 50.0,
//                //margin: EdgeInsets.only(bottom: 30.0),
//                child: CircularProgressIndicator(
//                  //backgroundColor: Colors.red[700],
//                  strokeWidth: 4.0,
//                ),
//              )
//            : Container(
//                height: 0.0,
//              ),
//      ),
    );
  }
}
