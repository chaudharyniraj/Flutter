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
        body: SingleChildScrollView(
          child: Column(
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
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.bold),
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
                            const Flexible(
                              child: ExpansionTile(
                                title: Text(
                                  'Public',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                // leading: Icon(Icons.arrow_drop_down),
                                backgroundColor: Colors.black12,
                                children: [
                                  ListTile(
                                    title: Text('Public'),
                                  ),
                                  ListTile(
                                    title: Text('Only me'),
                                  ),
                                  ListTile(
                                    title: Text('Friends'),
                                  ),
                                ],
                              ),
                            ),
                            // TextButton.icon(
                            //   onPressed: () {},
                            //   label: Text('Public'),
                            //   icon: Icon(Icons.arrow_drop_down),
                            // ),
                            TextButton.icon(
                              onPressed: () {},
                              label: const Text('Album'),
                              icon: const Icon(Icons.arrow_drop_down),
                            ),
                            TextButton.icon(
                              onPressed: () {},
                              label: const Text('Text'),
                              icon: const Icon(Icons.arrow_drop_down),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              TextFormField(
                  maxLines: 7,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    fillColor: Colors.black,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 5.0),
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Whats on your mind ? ",
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
