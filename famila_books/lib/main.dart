import 'package:famila_books/models/index.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String url = "https://familabooks.com/app/api.php?latest";
  LatestBooks latestBooks;
  //List<LatestBooks> list;
  var message = const [];

  @override
  void initState() {
    super.initState();

    fetchData();

  }

  fetchData() async{
    var res = await http.get(url);
    List jsonDecode = json.decode(res.body);
    List<LatestBooks> list = jsonDecode.map((jsonDecode)=>LatestBooks.fromJson(jsonDecode)).toList();

    setState(() {
message = list;
    });
  }
@override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(""),
      ),
      body: message== null?Center(
        child: CircularProgressIndicator(),): GridView.count(
          crossAxisCount: 3,
          children:
            message.map((value) => Card(
              child: Column(children: <Widget>[
                Text("Heloo"),
              ],),
            )).toList(),


      ),
    );
  }
}
