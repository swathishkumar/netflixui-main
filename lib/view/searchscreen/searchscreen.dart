import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';
import 'package:netflixui/utils/db.dart';
import 'package:netflixui/view/searchscreen/widget/customsearchwidget.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            color: Clrbase.ngrey,
            child: Row(
              children: [
                Icon(
                  Icons.search_rounded,
                  color: Clrbase.nwt,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Search for a show,movie,genre,etc",
                  style: TextStyle(color: Clrbase.nwt),
                ),
                Spacer(),
                Icon(
                  Icons.mic,
                  color: Clrbase.nwt,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "TOP SEARCH",
              style: TextStyle(
                  color: Clrbase.nwhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: DbData.searchScreenDatas.length,
              itemBuilder: (context, index) => CustomSearchScreenCard(
                imageUrl:
                    DbData.searchScreenDatas[index]["imageUrl"].toString(),
                title: DbData.searchScreenDatas[index]["movieName"].toString(),
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
