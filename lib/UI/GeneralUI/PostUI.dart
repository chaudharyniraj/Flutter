import 'package:flutter/material.dart';

class PostUI extends StatefulWidget {
  const PostUI({Key? key}) : super(key: key);

  @override
  _PostUIState createState() => _PostUIState();
}

class _PostUIState extends State<PostUI> {
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                    Text(
                      'Create',
                      style: TextStyle(
                          fontSize: width * 0.05, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Post',
                      style: TextStyle(
                        fontSize: width * 0.05,
                      ),
                    ))
              ],
            ),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                          fontSize: width * 0.05,
                        ),
                      ),
                      Row(
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            label: Text('Public'),
                            icon: Icon(Icons.arrow_drop_down),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            label: Text('Album'),
                            icon: Icon(Icons.arrow_drop_down),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            label: Text('Text'),
                            icon: Icon(Icons.arrow_drop_down),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
