import 'package:flutter/material.dart';
import 'package:nexuscargo/model/message.dart';

class NotificationList extends StatefulWidget {
  final List<Message> messages;
  NotificationList(this.messages);
  @override
  _NotificationListState createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  @override
  Widget build(BuildContext context) {
    Widget buildMessage(Message message) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(message.title),
            subtitle: Text(message.body),
          ),
          Divider(),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: Color(0xff203747),
      ),
      body: widget.messages.isEmpty
          ? Center(
              child: Text("No Notifications !"),
            )
          : ListView(
              children: widget.messages.map(buildMessage).toList(),
            ),
    );
  }
}
