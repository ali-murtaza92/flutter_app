import 'dart:async';
import 'dart:io';

import 'package:abrajads/categories.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    accentColor: Colors.white,
    primaryColor: Colors.black,
    appBarTheme: AppBarTheme(),
  ), //color: Colors.black)),
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget splashScreen() {
    if (Platform.isAndroid) {
      return Container(
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.bottomCenter,
        //margin: EdgeInsets.only(bottom: 30.0),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/XsMax.png'), fit: BoxFit.fitWidth),
        ),
        child: Container(
          height: 50.0,
          width: 50.0,
          margin: EdgeInsets.only(bottom: 20.0),
          child: CircularProgressIndicator(
            backgroundColor: Colors.red,
            strokeWidth: 4.0,
          ),
        ),
      );
    } else {
      if (Platform.isIOS)
        return Container(
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.bottomCenter,
          //margin: EdgeInsets.only(bottom: 30.0),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/XsMax.png'), fit: BoxFit.fitWidth),
          ),
          child: Container(
            height: 50.0,
            width: 50.0,
            margin: EdgeInsets.only(bottom: 20.0),
            child: CircularProgressIndicator(
              backgroundColor: Colors.red,
              strokeWidth: 4.0,
            ),
          ),
        );
      else
        return Container();
    }
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Categories()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white10, body: splashScreen());
  }
}
