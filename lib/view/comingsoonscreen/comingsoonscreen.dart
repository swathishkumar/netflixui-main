import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';
import 'package:netflixui/utils/db.dart';
import 'package:netflixui/view/comingsoonscreen/widget/customlaterwidget.dart';
import 'package:netflixui/view/comingsoonscreen/widget/customrecentwidget.dart';
import 'package:netflixui/view/searchscreen/widget/customsearchwidget.dart';

class ComingsoonScreen extends StatefulWidget {
  const ComingsoonScreen({super.key});

  @override
  State<ComingsoonScreen> createState() => _ComingsoonScreenState();
}

class _ComingsoonScreenState extends State<ComingsoonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clrbase.nblack,
      appBar: AppBar(
        backgroundColor: Clrbase.nblack,
        leading: Center(
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Clrbase.nred,
            child: Icon(
              Icons.notifications,
              color: Clrbase.nwhite,
            ),
          ),
        ),
        title: Text(
          "Notifications",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Clrbase.nwhite),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Clrbase.ngrey,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: DbData.epScreendata.length,
                  itemBuilder: (context, index) => CustomrecentWidget(
                    imageUrl: DbData.epScreendata[index]["imageUrl"].toString(),
                    title: DbData.epScreendata[index]["epName"].toString(),
                    subtitle:
                        DbData.epScreendata[index]["movieName"].toString(),
                    date: DbData.epScreendata[index]["epName"].toString(),
                  ),
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListView.builder(
                  itemCount: DbData.notificationMovieList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => UpcomingMovies(
                        imageurl: DbData.notificationMovieList[index]
                            ["imageUrl"],
                        title: DbData.notificationMovieList[index]["title"],
                        subtitle: DbData.notificationMovieList[index]
                            ["subtitle"],
                        des: DbData.notificationMovieList[index]["description"],
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
