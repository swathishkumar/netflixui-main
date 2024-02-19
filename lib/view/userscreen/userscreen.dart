// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';
import 'package:netflixui/utils/db.dart';
import 'package:netflixui/utils/imageconstant.dart';
import 'package:netflixui/view/navbar/navbar.dart';

class Userscreen extends StatefulWidget {
  const Userscreen({super.key});

  @override
  State<Userscreen> createState() => _UserscreenState();
}

class _UserscreenState extends State<Userscreen> {
  int selindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clrbase.nblack,
      appBar: AppBar(
        backgroundColor: Clrbase.nblack,
        title: SizedBox(
          height: 38,
          width: 138,
          child: Image.asset(
            "assets/logos_netflix.png",
            height: 60,
          ),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.edit,
            color: Clrbase.nwhite,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: DbData.usernameImages.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemBuilder: (context, index) => index < DbData.usernameImages.length
              ? InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavBar(),
                          ));
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                    DbData.usernameImages[index]["image"]!),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        DbData.usernameImages[index]["name"]!,
                        style: TextStyle(color: Clrbase.nwhite),
                      )
                    ],
                  ),
                )
              : Column(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Center(
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(Imageconst.netflixadd),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Add",
                      style: TextStyle(color: Clrbase.nwhite),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
