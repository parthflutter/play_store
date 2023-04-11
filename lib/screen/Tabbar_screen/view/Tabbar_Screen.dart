import 'package:flutter/material.dart';
import 'package:play_store/screen/for_you_screen/view/first_screen.dart';
import 'package:provider/provider.dart';

import '../../topcharts_screen/view/top_charts_screen.dart';

class Tabbar_first extends StatefulWidget {
  const Tabbar_first({Key? key}) : super(key: key);

  @override
  State<Tabbar_first> createState() => _Tabbar_firstState();
}

class _Tabbar_firstState extends State<Tabbar_first> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(

        length: 2,
        child: SafeArea(
        child: Scaffold(
        backgroundColor: Colors.red.shade50,
        appBar: AppBar(
        centerTitle: true,
        actions: [
        Padding(
        padding: const EdgeInsets.all(8.0),
    child: IconButton(
    onPressed: () {
    Navigator.pushNamed(context, '');
    },
    icon: Icon(Icons.store),
    color: Colors.white),
    ),
    ],
    elevation: 0,
    title: Text(
    "Sreach Apps and games",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25,
    color: Colors.white),
    ),
    bottom: TabBar(
    indicatorColor: Colors.white,
    tabs: [
    Tab(
    child: Text(
    "Games",
    style: TextStyle(
    color: Colors.white,
    fontSize: 9,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    Tab(
    child: Text(
    "Apps",
    style: TextStyle(
    color: Colors.white,
    fontSize: 9,
    fontWeight: FontWeight.bold
    ),
    ),
    ),
    ],
    ),
    backgroundColor: Colors.black,

    ),
    body: TabBarView(
    children: [
    For_you_screen(),
    top_charts_screen(),
    ],
    ),
    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.white,
    items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: Icon(Icons.games),
    label: "Games",
    backgroundColor: Colors.black12
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.apps),
    label: "Apps",
    backgroundColor: Colors.black12
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.book),
    label: "Books",
    backgroundColor: Colors.black,
    ),
    ],
    type: BottomNavigationBarType.shifting,
    currentIndex: 0,
    selectedItemColor: Colors.black,
    iconSize: 40,
    elevation :5),
    ),
    ),
        ),
    );
  }
}


//   body: Column(
//     children: [
//       Container(
//         height: 55,
//         width: double.infinity,
//         margin: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//                 color: Colors.black26,
//                 offset: Offset(0.5, 0.5),
//                 blurRadius: 0.5,
//                 spreadRadius: 0.5),
//           ],
//         ),
//         child: Row(
//           children: [
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.menu),
//             ),
//             Text("Search for apps & games"),
//             Spacer(),
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.mic_none),
//             ),
//           ],
//         ),
//       ),
//       Container(
//         height: 40,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border(
//             bottom: BorderSide(color: Colors.black12),
//           ),
//         ),
//         child: TabBarView(
//           children: [
//             Tab(
//
//             )
//           ],
//         ),
//       ),
//
//   ],
// ),