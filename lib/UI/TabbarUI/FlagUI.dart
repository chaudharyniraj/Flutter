import 'package:flutter/material.dart';

class FlagUI extends StatefulWidget {
  const FlagUI({Key? key}) : super(key: key);

  @override
  _FlagUIState createState() => _FlagUIState();
}

class _FlagUIState extends State<FlagUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Flag'),
    );
  }
}
