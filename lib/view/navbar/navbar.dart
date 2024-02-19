// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';
import 'package:netflixui/view/comingsoonscreen/comingsoonscreen.dart';
import 'package:netflixui/view/downloadingscreen/downloadingscreen.dart';
import 'package:netflixui/view/homescreen/homescreen.dart';
import 'package:netflixui/view/morescreen/morescreen.dart';
import 'package:netflixui/view/searchscreen/searchscreen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedindex = 0;
  List screens = [
    Homescreen(),
    Searchscreen(),
    ComingsoonScreen(),
    DownloadScreen(),
    MoreScreen()
  ]; //map of screens
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clrbase.nblack,
      body: screens[selectedindex], //used to apply screens
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            print(value);
            selectedindex = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          currentIndex: selectedindex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection), label: "Coming Soon"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: "Downloads"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
          ]),
    );
  }
}
