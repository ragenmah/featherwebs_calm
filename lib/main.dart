import 'package:featherwebs_calm/MyBottomNavyBar.dart';
import 'package:featherwebs_calm/myHomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBottomNavBar(),
      // home: MyHomePage(),
    );
  }
}
