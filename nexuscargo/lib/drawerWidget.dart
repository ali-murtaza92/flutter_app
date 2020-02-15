import 'package:flutter/material.dart';
import 'package:nexuscargo/aboutUs.dart';
import 'package:nexuscargo/contactUs.dart';
import 'package:nexuscargo/services.dart';
import 'package:nexuscargo/team.dart';

import 'home_page.dart';

class DrawerWidget {
  Widget getDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Options'),
            backgroundColor: Color(0xff203747),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.extension),
            title: Text('Services'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Services()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('About us'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AboutUs()));
            },
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text('Team'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Team()));
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contact us'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ContactUs()));
            },
          ),
        ],
      ),
    );
  }
}
