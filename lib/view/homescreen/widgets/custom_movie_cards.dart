import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';

class CustomMovieCards extends StatelessWidget {
  const CustomMovieCards({
    super.key,
    required this.title,
    this.height = 177,
    this.width = 103,
    this.isCircular = false,
    required this.imagesList,
    this.isOptionsVisible = false,
  });
  final String title;
  final double height;
  final double width;
  final bool isCircular;
  final bool isOptionsVisible;
  final List<String> imagesList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Clrbase.nwhite,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: height,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagesList.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: isCircular == true
                            ? BoxShape.circle
                            : BoxShape.rectangle,
                        color: Colors.red,
                        image: DecorationImage(
                            image: NetworkImage(imagesList[index]),
                            fit: BoxFit.cover)),
                    height: height,
                    width: width,
                    alignment: Alignment.bottomCenter,
                    child: Visibility(
                      visible: isOptionsVisible,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: width,
                            height: 5,
                            color: Clrbase.ngrey,
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 40,
                              height: 5,
                              color: Clrbase.nred,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            color: Clrbase.nblack,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  color: Clrbase.nwhite,
                                ),
                                Icon(
                                  Icons.more_vert,
                                  color: Clrbase.nwhite,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
