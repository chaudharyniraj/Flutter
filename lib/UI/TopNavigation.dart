import 'package:fb_design/UI/TabbarUI/FlagUI.dart';
import 'package:fb_design/UI/TabbarUI/GamingUI.dart';
import 'package:fb_design/UI/TabbarUI/MenuUI.dart';
import 'package:fb_design/UI/TabbarUI/NewsfeedUI.dart';
import 'package:fb_design/UI/TabbarUI/NotificationUI.dart';
import 'package:fb_design/UI/TabbarUI/WatchUI.dart';
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
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                width: width * 0.1,
                decoration:
                    BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: () {},
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: width * 0.1,
              decoration:
                  BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
              child: IconButton(
                icon: Icon(
                  Icons.message_rounded,
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
        bottom: TabBar(
          controller: _controller,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          padding: EdgeInsets.zero,
          // indicatorPadding: EdgeInsets.zero,
          labelPadding: EdgeInsets.symmetric(horizontal: width * 0.05),
          tabs: [
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
        children: [
          NewsfeedUI(),
          WatchUI(),
          FlagUI(),
          GamingUI(),
          NotificationUI(),
          MenuUI()
        ],
      ),
    );
  }
}
