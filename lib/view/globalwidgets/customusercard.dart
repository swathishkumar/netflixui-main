import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';

class CustomUsername extends StatelessWidget {
  const CustomUsername(
      {super.key,
      required this.height,
      required this.width,
      required this.imgUrl,
      required this.titles});
  final double height;
  final double width;
  final String imgUrl;
  final String titles;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(imgUrl), fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          titles,
          style: TextStyle(color: Clrbase.nwhite),
        )
      ],
    );
  }
}
