import 'package:flutter/material.dart';

class SearchUI extends StatefulWidget {
  const SearchUI({Key? key}) : super(key: key);

  @override
  _SearchUIState createState() => _SearchUIState();
}

class _SearchUIState extends State<SearchUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            Expanded(
              child: Container(
                child: TextFormField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  fillColor: Colors.black,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 5.0),
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Search",
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
