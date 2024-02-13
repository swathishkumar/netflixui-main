import 'package:flutter/material.dart';
import 'package:netflixui/view/navbar/navbar.dart';
//import 'package:netflixui/view/splashscreen/splashscreen.dart';

void main() {
  runApp(Netflix());
}

class Netflix extends StatelessWidget {
  const Netflix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    );
  }
}
