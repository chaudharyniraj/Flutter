import 'package:flutter/material.dart';

class GamingUI extends StatefulWidget {
  const GamingUI({Key? key}) : super(key: key);

  @override
  _GamingUIState createState() => _GamingUIState();
}

class _GamingUIState extends State<GamingUI> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('gaming'));
  }
}
