import 'package:flutter/material.dart';

class NotificationUI extends StatefulWidget {
  const NotificationUI({Key? key}) : super(key: key);

  @override
  _NotificationUIState createState() => _NotificationUIState();
}

class _NotificationUIState extends State<NotificationUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('notification'),
    );
  }
}
