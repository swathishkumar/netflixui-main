import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';

class CustomrecentWidget extends StatelessWidget {
  const CustomrecentWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.imageUrl,
  });
  final String title;
  final String subtitle;
  final String date;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Clrbase.ngrey,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 76,
                width: 125,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 0),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Clrbase.nwhite,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(color: Clrbase.nwhite, fontSize: 14),
                  ),
                  Text(
                    date,
                    style: TextStyle(color: Clrbase.nwt, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
