import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:nexuscargo/model/message.dart';

import 'notification_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = true;
  bool notify = false;
  FirebaseMessaging firebaseMessaging = FirebaseMessaging();
  String url = "https://sutanna.com.ng/";
  List<Message> messages = [];
  FlutterWebviewPlugin flutterWebViewPlugin;
  @override
  void initState() {
    super.initState();

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
        final notification = msg['data'];
        setState(() {
          messages.add(Message(
            title: notification['title'] == null
                ? "Empty !!!"
                : notification['title'],
            body: notification['body'] == null
                ? "Empty !!!"
                : notification['body'],
          ));
          notify = true;
        });
      },
      onMessage: (Map<String, dynamic> msg) async {
        print("onMessage");
        final notification = msg['data'];
        setState(() {
          messages.add(Message(
              title: notification['title'], body: notification['body']));
          notify = true;
        });
      },
      onResume: (Map<String, dynamic> msg) async {
        print("onResume");
        final notification = msg['data'];
        setState(() {
          messages.add(Message(
              title: notification['title'], body: notification['body']));
          notify = true;
        });
      },
    );

    firebaseMessaging.getToken().then((token) {
      print("Here is token: " + token);
    });
    SystemChrome.setEnabledSystemUIOverlays([]);
    flutterWebViewPlugin = FlutterWebviewPlugin();
    flutterWebViewPlugin.onStateChanged.listen((WebViewStateChanged wvs) {
      if (wvs.type == WebViewState.finishLoad) {
        print("complete");
        setState(() {
          _isLoading = false;
        });
      }
    });
  }

  Future<Null> loadWebview() async {
    setState(() {
      url = "https://nexuscargo.co.uk/";
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        onRefresh: loadWebview,
        child: WebviewScaffold(
            appBar: AppBar(
              title: Text("Nexus Travel & Cargo"),
              backgroundColor: Color(0xff203747),
              actions: <Widget>[
                IconButton(
                  icon: notify == false
                      ? Icon(Icons.notifications)
                      : Icon(
                          Icons.notifications_active,
                          color: Colors.red,
                        ),
                  onPressed: () {
                    flutterWebViewPlugin.hide();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationList(messages),
                      ),
                    ).then((value) {
                      flutterWebViewPlugin.show();
                      setState(() {
                        notify = false;
                      });
                    });
                  },
                )
              ],
            ),
            url: url,
            withJavascript: true,
            withLocalStorage: true,
            withZoom: true,
            hidden: true,
            bottomNavigationBar: _isLoading == true
                ? Container(
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    height: 50.0,
                    width: 50.0,
                    //margin: EdgeInsets.only(bottom: 30.0),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.red[700],
                      strokeWidth: 4.0,
                    ),
                  )
                : Container(
                    height: 0.0,
                  )));
  }
}
