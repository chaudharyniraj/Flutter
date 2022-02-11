import 'package:fb_design/Model/StoryContents.dart';
import 'package:flutter/material.dart';

class NewsfeedUI extends StatefulWidget {
  const NewsfeedUI({Key? key}) : super(key: key);

  @override
  _NewsfeedUIState createState() => _NewsfeedUIState();
}

class _NewsfeedUIState extends State<NewsfeedUI> {
  Widget ListofStories(BuildContext context, int index) {
    return Stack(
      children: [
        Align(
            alignment: Alignment.center,
            child: Image.asset('${contents[index].image}')),
        Align(
            alignment: Alignment.bottomCenter,
            child: Text("${contents[index].name}",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: height * 0.01),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.asset(
                  'profile.png',
                  width: width * 0.1,
                  height: width * 0.1,
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                  child: TextFormField(
                      readOnly: true,
                      onTap: () {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        fillColor: Colors.black,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 05.0, horizontal: 5.0),
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Search",
                      )),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.video_camera_back,
                    color: Colors.red,
                  ),
                  label: Text('Live')),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.photo,
                    color: Colors.green,
                  ),
                  label: Text('Photos')),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.purple,
                  ),
                  label: Text('Room')),
            ],
          ),
          SizedBox(
            height: height * 0.25,
            child: ListView.builder(
              itemCount: contents.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                  height: height * 0.25,
                  width: width * 0.25,
                  margin: EdgeInsets.all(5),
                  // color: Colors.grey,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: ListofStories(context, index))),
            ),
          )
        ],
      ),
    );
  }
}
