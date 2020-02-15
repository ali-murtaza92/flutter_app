import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: DrawerWidget().getDrawer(context),
      appBar: AppBar(
        title: Text('About us'),
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Our family-run business company has a long tradition in the industry. \nWe pride ourselves on providing outstanding customer service to order to guarantee that all of our clients are 100% satisfied.",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Acme',
                    color: Color(0xFF0F2532),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
