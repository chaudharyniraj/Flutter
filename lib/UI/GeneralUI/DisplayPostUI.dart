import 'package:fb_design/Model/PostArguments.dart';
import 'package:flutter/material.dart';

class DisplayPostUI extends StatefulWidget {
  const DisplayPostUI({Key? key}) : super(key: key);

  @override
  _DisplayPostUIState createState() => _DisplayPostUIState();
}

class _DisplayPostUIState extends State<DisplayPostUI> {
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as PostArguments;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: height * 0.98,
              width: width,
              child: Image.asset(
                '${arguments.image}',
                fit: BoxFit.fitWidth,
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${arguments.name}'),
                    Text('${arguments.caption}'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${arguments.likes}'),
                        Text('${arguments.comments}'),
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
