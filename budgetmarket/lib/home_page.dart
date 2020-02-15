import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = true;
  String url = "https://www.budgethome.co.uk/";

  @override
  void initState() {
    super.initState();
    //SystemChrome.setEnabledSystemUIOverlays([]);
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

  Future<Null> loadWebview() async {
    setState(() {
      url = "https://www.budgethome.co.uk";
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
          onRefresh: loadWebview,
          child: WebviewScaffold(
              //appBar: AppBar(),
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
                        backgroundColor: Colors.red,
                        strokeWidth: 4.0,
                      ),
                    )
                  : Container(
                      height: 0.0,
                    ))),
    );
  }
}
