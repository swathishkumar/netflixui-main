// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';

class UpcomingMovies extends StatelessWidget {
  const UpcomingMovies(
      {super.key,
      required this.imageurl,
      required this.title,
      required this.subtitle,
      this.des});
  final String imageurl;
  final String title;
  final String subtitle;
  final String? des;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageurl), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Clrbase.nwhite,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Reminder",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Clrbase.nwhite),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      size: 30,
                      color: Clrbase.nwhite,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Share",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Clrbase.nwhite),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitle,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 11,
                    color: Clrbase.nwhite,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Clrbase.nwhite,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  des ?? "",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 11,
                    color: Clrbase.nwhite,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Steamy   Soapy   Slowburn   Suspensful   Teen   Mystery",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Clrbase.nwhite,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
