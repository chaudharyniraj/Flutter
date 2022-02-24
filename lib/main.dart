import 'package:fb_design/UI/GeneralUI/DisplayPostUI.dart';
import 'package:fb_design/UI/GeneralUI/StoryUI.dart';
import 'package:fb_design/UI/TopNavigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        // home: const TopNavigation(),
        initialRoute: '/topNavigation',
        routes: {
          '/topNavigation': (context) => const TopNavigation(),
          '/storyUI': (context) => const StoryUI(),
          '/displayPostUI': (context) => const DisplayPostUI(),
        });
  }
}
