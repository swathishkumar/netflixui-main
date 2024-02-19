// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';
import 'package:netflixui/utils/db.dart';
import 'package:netflixui/view/globalwidgets/customusercard.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Clrbase.nblack,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 200,
                  child: ListView.separated(
                    itemCount: DbData.usernameImages.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => CustomUsername(
                      height: 100,
                      width: 100,
                      imgUrl: DbData.usernameImages[index]["image"]!,
                      titles: DbData.usernameImages[index]["name"]!,
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                      height: 5,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.edit,
                        color: Clrbase.nwt,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Manage Profiles",
                        style: TextStyle(
                          color: Clrbase.nwt,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Clrbase.ngrey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.mode_comment,
                          color: Clrbase.nwhite,
                          size: 26,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Tell friends about Netflix.",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Clrbase.nwhite,
                              fontSize: 19.63),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,  id ut ipsum aliquam  enim non posuere pulvinar diam.",
                            style:
                                TextStyle(color: Clrbase.nwt, fontSize: 10.78),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "Terms & Conditions",
                            style: TextStyle(
                                fontSize: 10,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          height: 43,
                          width: 265,
                          decoration: BoxDecoration(color: Colors.black),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 45,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Clrbase.nwhite,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Copy Link",
                              style: TextStyle(
                                  color: Clrbase.nblack,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 80,
                      child: Row(
                        children: [
                          Expanded(
                              child: Image.asset(
                            "assets/wa.png",
                            scale: .6,
                          )),
                          VerticalDivider(),
                          Expanded(
                              child: Image.asset(
                            "assets/fb.png",
                            scale: .7,
                          )),
                          VerticalDivider(),
                          Expanded(
                            child: Image.asset(
                              "assets/gmail.png",
                              scale: .5,
                            ),
                          ),
                          VerticalDivider(),
                          Expanded(
                            child: Column(
                              children: [
                                Icon(
                                  Icons.more_horiz_outlined,
                                  color: Clrbase.nwhite,
                                  size: 50,
                                ),
                                Text(
                                  "More",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Clrbase.nwhite),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.done,
                    color: Colors.white,
                  ),
                  Text(
                    "My List",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Clrbase.nwhite,
                        fontSize: 17),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("App settings",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Clrbase.nwhite)),
                  Text(
                    "Account",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Clrbase.nwhite),
                  ),
                  Text(
                    "Help",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Clrbase.nwhite),
                  ),
                  Text(
                    "Sign out",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Clrbase.nwhite),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
