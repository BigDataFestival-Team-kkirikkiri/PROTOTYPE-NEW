import 'package:flutter/material.dart';

class TitleColorBetweenNoIcon extends StatelessWidget {
  final String title1;
  final String colorTitle;
  final Color color;
  final String title2;
  final double fontSize;

  const TitleColorBetweenNoIcon(
      {super.key,
      required this.title1,
      required this.colorTitle,
      required this.color,
      required this.title2,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title1,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              colorTitle,
              style: TextStyle(
                  color: color,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              title2,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
