import 'package:flutter/material.dart';

class MenuUI extends StatefulWidget {
  const MenuUI({Key? key}) : super(key: key);

  @override
  _MenuUIState createState() => _MenuUIState();
}

class _MenuUIState extends State<MenuUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('MEnu'),
    );
  }
}
