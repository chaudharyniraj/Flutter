import 'package:fb_design/Model/StoryContents.dart';
import 'package:flutter/material.dart';

class NewsfeedUI extends StatefulWidget {
  const NewsfeedUI({Key? key}) : super(key: key);

  @override
  _NewsfeedUIState createState() => _NewsfeedUIState();
}

class _NewsfeedUIState extends State<NewsfeedUI> {
  ScrollController _scrollController = ScrollController();

  Widget ListofStories(BuildContext context, int index) {
    return Stack(
      children: [
        Image.asset('${contents[index].image}'),
        Text("${contents[index].name}")
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
              )
            ],
          ),
          Container(
            child: ListView.builder(
              controller: _scrollController,
              // scrollDirection: Axis.horizontal,
              itemCount: contents.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                    height: height * 0.2,
                    width: width * 0.3,
                    child: ListofStories(context, index));
              },
            ),
          ),
        ],
      ),
    );
  }
}
