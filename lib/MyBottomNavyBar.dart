import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:featherwebs_calm/myHomePage.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MyBottomNavBar extends StatefulWidget {
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  final List _screens = [
    MyHomePage(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.black),
            ),
            activeColor: Hexcolor("#e6a939"),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.brightness_2,
              color: Colors.black,
            ),
            title: Text(
              'Night',
              style: TextStyle(color: Colors.black),
            ),
            activeColor: Hexcolor("#e6a939"),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.wb_sunny,
              color: Colors.black,
            ),
            title: Text(
              'Day ',
              style: TextStyle(color: Colors.black),
            ),
            activeColor: Hexcolor("#e6a939"),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.date_range,
              color: Colors.black,
            ),
            title: Text(
              'Calender',
              style: TextStyle(color: Colors.black),
            ),
            activeColor: Hexcolor("#e6a939"),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.black,
            ),
            title: Text(
              'Users',
              style: TextStyle(color: Colors.black),
            ),
            activeColor: Hexcolor("#e6a939"),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
