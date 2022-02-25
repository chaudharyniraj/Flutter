import 'package:fb_design/Model/StoryArguments.dart';
import 'package:flutter/material.dart';

class StoryUI extends StatefulWidget {
  const StoryUI({Key? key}) : super(key: key);

  @override
  _StoryUIState createState() => _StoryUIState();
}

class _StoryUIState extends State<StoryUI> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as StoryArguments;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // print(args);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            image(context, height, width, args),
            nameField(context, height, width, args)
          ],
        ),
      ),
    );
  }

  Widget image(context, height, width, args) {
    return Container(
      height: height * 0.98,
      width: width,
      child: Image.asset(
        args.image,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget nameField(context, height, width, args) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        Text(
          args.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.05),
        ),
      ],
    );
  }
}
