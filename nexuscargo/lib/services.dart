import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: DrawerWidget().getDrawer(context),
      appBar: AppBar(
        title: Text('Services'),
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
              Text(
                "OUR SERVICE TO YOU",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Acme',
                  color: Color(0xFF0F2532),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Discover more about our extensive range of professional services. We constantly '
                  'update this page, but if you still can’t find what you’re looking for, please '
                  'feel free to get in touch with us and we will be more than happy to help.',
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
                "LOGISTICS",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Acme',
                  color: Color(0xFF0F2532),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'We always put our focus on our customers. We want you to find the product or '
                  'service that perfectly suits your needs, which is why we offer comprehensive '
                  'consulting services to help you make an informed decision.',
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
                "SALES",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Acme',
                  color: Color(0xFF0F2532),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Our aim is that you are completely satisfied with our products and services. That’s why we not only provide professional advice before you order: We are also there to help you afterwards, serving as reliable support.',
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
                "QUALITY",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Acme',
                  color: Color(0xFF0F2532),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Everything we do centers on providing services of the highest level of quality. We won’t stop until you’re 100% satisfied and that’s a guarantee.',
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
                "EFFICIENCY",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Acme',
                  color: Color(0xFF0F2532),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'We pride ourselves on our efficient procedures and solutions, but we continually strive for improvement in order to deliver results more effectively.',
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
                "FAIR PRICES",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Acme',
                  color: Color(0xFF0F2532),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Satisfying customers is our top priority. That’s why we believe in offering fair and transparent prices with no hidden fees or extra charges.',
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
            ],
          ),
        ],
      ),
    );
  }
}
