import 'package:flutter/material.dart';

class Team extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: DrawerWidget().getDrawer(context),
      appBar: AppBar(
        title: Text('Team'),
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
                  "We are proud of the Nexus Travel and Cargo system and truly believe it can help make a difference to the way you manage your travel and cargo needs",
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
              Text(
                "We are updating our team member listing please visit back soon!",
                style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.w200,
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
