import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: DrawerWidget().getDrawer(context),
      appBar: AppBar(
        title: Text('Contact us'),
        backgroundColor: Color(0xff203747),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.call,
                    size: 25.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "0141 471 7979",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w400,
                      //fontFamily: 'Acme',
                      color: Color(0xFF0F2532),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.email,
                    size: 25.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "SALES@NEXUSCARGO.CO.UK",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Acme',
                      color: Color(0xFF0F2532),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Divider(
                indent: 50.0,
                endIndent: 50.0,
                thickness: 1.0,
                color: Colors.indigo,
              ),
              SizedBox(
                height: 10.0,
              ),
              Icon(
                Icons.location_on,
                size: 50.0,
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                "150 Albert Drive, G41 2NG, Glasgow, Scotland, UK",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Acme',
                  color: Color(0xFF0F2532),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
