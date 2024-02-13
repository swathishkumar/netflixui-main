// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';
import 'package:netflixui/utils/db.dart';
import 'package:netflixui/utils/imageconstant.dart';
import 'package:netflixui/view/homescreen/widgets/custom_movie_cards.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 425,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        Imageconst.netflixnetcard,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Imageconst.netflixnlog),
                    Text(
                      "TV Shows",
                      style: TextStyle(color: Clrbase.nwhite),
                    ),
                    Text(
                      "Movies",
                      style: TextStyle(color: Clrbase.nwhite),
                    ),
                    Text(
                      "My List",
                      style: TextStyle(color: Clrbase.nwhite),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                left: 120,
                child: Row(
                  children: [
                    Image.asset(Imageconst.netflixtop),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      child: Text(
                        "32 in nigeria Today",
                        style: TextStyle(color: Clrbase.nwhite),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.add,
                    color: Clrbase.nwhite,
                  ),
                  Text(
                    "My List",
                    style: TextStyle(color: Clrbase.nwhite),
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 10, vertical: 10),
                color: Clrbase.ngrey,
                child: Row(
                  children: [
                    Icon(
                      Icons.play_arrow,
                      color: Clrbase.nwhite,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Play",
                      style: TextStyle(color: Clrbase.nwhite),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Icon(
                    Icons.info,
                    color: Clrbase.nwhite,
                  ),
                  Text(
                    "Info",
                    style: TextStyle(color: Clrbase.nwhite),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          CustomMovieCards(
            height: 100,
            width: 100,
            title: "Preview",
            isCircular: true,
            imagesList: DbData.movieImageUrls1,
          ),
          CustomMovieCards(
            title: "Continue Watching for ",
            imagesList: DbData.movieImageUrls1,
            isOptionsVisible: true,
          ),
          CustomMovieCards(
            height: 251,
            width: 154,
            title: "Popular on Netflix ",
            imagesList: DbData.movieImageUrls2,
          ),
          CustomMovieCards(
            title: "Trending Now ",
            imagesList: DbData.movieImageUrls1,
          ),
        ],
      ),
    );
  }
}
