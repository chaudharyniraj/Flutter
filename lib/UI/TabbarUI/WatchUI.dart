import 'package:flutter/material.dart';

class WatchUI extends StatefulWidget {
  const WatchUI({Key? key}) : super(key: key);

  @override
  _WatchUIState createState() => _WatchUIState();
}

class _WatchUIState extends State<WatchUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('watch'),
    );
  }
}
