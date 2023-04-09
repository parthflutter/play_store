import 'package:flutter/material.dart';
import 'package:play_store/screen/Tabbar_screen/view/Tabbar_Screen.dart';
import 'package:play_store/screen/for_you_screen/provider/for_you_screen_provider.dart';
import 'package:play_store/screen/for_you_screen/view/first_screen.dart';
import 'package:play_store/screen/topcharts_screen/provider/Top_charts_provider.dart';
import 'package:play_store/screen/topcharts_screen/view/top_charts_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
          ChangeNotifierProvider(
          create: (context) =>For_screen_provider(),),
          ChangeNotifierProvider(create: (context) => Top_provider(),)
          ],
      child: MaterialApp(debugShowCheckedModeBanner: false, 
          routes: {
        '/':(context) => Tabbar_first(),
          ' For_you_screen':(context) => For_you_screen(),
            'top_charts_screen':(context) => top_charts_screen(),
          }
      ),
    ),
  );
}
