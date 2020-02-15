import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:nexuscargo/drawerWidget.dart';
import 'package:nexuscargo/model/message.dart';

import 'notification_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool notify = false;
  FirebaseMessaging firebaseMessaging = FirebaseMessaging();
  String url = "https://nexuscargo.co.uk/";
  List<Message> messages = [];
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget().getDrawer(context),
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationList(messages),
                ),
              );
              setState(() {
                notify = false;
              });
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  //color: Colors.white,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Image.asset('assets/logo.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                  "A bespoke cargo solution that tailors to your needs",
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Acme',
                    color: Color(0xFF0F2532),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Divider(
                indent: 50.0,
                endIndent: 50.0,
                thickness: 1.0,
                color: Colors.indigo,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'SEA CARGO/AIR CARGO',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Nexus Cargo offers a bespoke cargo solution that tailors to your needs. We provide the most cost efficient and affordable way of sending parcels through air and sea cargo all over the world from the UK. Send your gifts and parcels hassle free , We have teamed up with DHL, FedEx, UPS & TNT.',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Divider(
                indent: 50.0,
                endIndent: 50.0,
                thickness: 1.0,
                color: Colors.indigo,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'PAKISTAN SEA/AIR CARGO',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Sea Cargo is a great way of sending your parcels to Pakistan (if you are not in a rush). '
                  'The average delivery time to Pakistan is 6 to 8 weeks. With the minimum weight being '
                  '20kg via Sea Cargo. The price per kilo starts at £1.00* + packaging fee . The service '
                  'includes your cargo delivered to your House In Pakistan with all customs and tax\’s '
                  'included (T&C Apply).Our Pakistan Air Cargo service starts from £3.95 per kg (min 20kg)'
                  ' plus handling charges.',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Divider(
                indent: 50.0,
                endIndent: 50.0,
                thickness: 1.0,
                color: Colors.indigo,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'TERMS AND CONDITIONS*',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'All cargo must be put in our cargo bag supplied by us at £3 per bag + £1 '
                  'for security tag. Home delivery is subject to roads being accessible to '
                  'our delivery van. For further terms & conditions please contact our office.',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
