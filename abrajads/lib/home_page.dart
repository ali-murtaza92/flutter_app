import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class HomePage extends StatefulWidget {
  final String url;
  final String title;
  HomePage(this.url, this.title);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = true;
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
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
        hidden: true,
        withJavascript: true,
        withLocalStorage: true,
        appBar: AppBar(
            title: Text(
              widget.title,
              style: TextStyle(color: Colors.white),
            )),
        url: widget.url,
        bottomNavigationBar: _isLoading == true
            ? Container(
          color: Colors.transparent,
          alignment: Alignment.center,
          height: 50.0,
          width: 50.0,
          //margin: EdgeInsets.only(bottom: 30.0),
          child: CircularProgressIndicator(
            backgroundColor: Colors.red,
            strokeWidth: 4.0,
          ),
        )
            : Container(
          height: 0.0,
        ));
  }
}
