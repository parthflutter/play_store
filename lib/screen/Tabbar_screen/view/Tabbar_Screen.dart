import 'package:flutter/material.dart';

import '../../for_you_screen/view/first_screen.dart';
import '../../topcharts_screen/view/top_charts_screen.dart';

class Tabbar_first extends StatefulWidget {
  const Tabbar_first({Key? key}) : super(key: key);

  @override
  State<Tabbar_first> createState() => _Tabbar_firstState();
}

class _Tabbar_firstState extends State<Tabbar_first> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Container(
                height: 600,
                width: double.infinity,
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey,)),
            ],
            backgroundColor: Colors.blueAccent,
            bottom: const TabBar(
              indicator: UnderlineTabIndicator(),
              tabs: [
                Tab(
                  text: "For you",
                ),
                Tab(
                  text: "Top Charts",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              For_you_screen(),
              top_charts_screen(),
            ],
          ),
        ),
      ),
    );
  }
}
