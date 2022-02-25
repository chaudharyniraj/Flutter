import 'package:fb_design/UI/GeneralUI/SearchUI.dart';
import 'package:fb_design/UI/TabbarUI/FlagUI.dart';
import 'package:fb_design/UI/TabbarUI/GamingUI.dart';
import 'package:fb_design/UI/TabbarUI/MenuUI.dart';
import 'package:fb_design/UI/TabbarUI/NewsfeedUI.dart';
import 'package:fb_design/UI/TabbarUI/NotificationUI.dart';
import 'package:fb_design/UI/TabbarUI/WatchUI.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TopNavigation extends StatefulWidget {
  const TopNavigation({Key? key}) : super(key: key);

  @override
  _TopNavigationState createState() => _TopNavigationState();
}

class _TopNavigationState extends State<TopNavigation>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 6, vsync: this);
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: AnimatedTextKit(
          animatedTexts: [
            WavyAnimatedText('Facebook'),
          ],
          isRepeatingAnimation: true,
          repeatForever: true,
        ),
        actions: [
          message(context, width),
          search(context, width),
        ],
        bottom: TabBar(
          controller: _controller,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          padding: EdgeInsets.zero,
          // indicatorPadding: EdgeInsets.zero,
          labelPadding: EdgeInsets.symmetric(horizontal: width * 0.05),
          tabs: const [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.watch)),
            Tab(icon: Icon(Icons.flag)),
            Tab(icon: Icon(Icons.gamepad)),
            Tab(icon: Icon(Icons.notifications)),
            Tab(icon: Icon(Icons.menu)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          NewsfeedUI(),
          WatchUI(),
          FlagUI(),
          GamingUI(),
          NotificationUI(),
          MenuUI(),
        ],
      ),
    );
  }

  Widget search(context, width) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          width: width * 0.1,
          decoration: const BoxDecoration(
              color: Colors.black12, shape: BoxShape.circle),
          child: IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchUI()),
              );
            },
          )),
    );
  }

  Widget message(context, width) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: width * 0.1,
        decoration:
            const BoxDecoration(color: Colors.black12, shape: BoxShape.circle),
        child: IconButton(
          icon: const Icon(
            Icons.message_rounded,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
