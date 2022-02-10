import 'package:flutter/material.dart';

class NewsfeedUI extends StatefulWidget {
  const NewsfeedUI({Key? key}) : super(key: key);

  @override
  _NewsfeedUIState createState() => _NewsfeedUIState();
}

class _NewsfeedUIState extends State<NewsfeedUI> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [Row()],
      ),
    );
  }
}
