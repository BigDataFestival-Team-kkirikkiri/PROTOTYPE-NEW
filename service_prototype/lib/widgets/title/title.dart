import 'package:flutter/material.dart';

class noColorTitle extends StatelessWidget {
  final String title1;
  final double fontSize;

  const noColorTitle({super.key, required this.title1, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Container(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title1,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(200),
                            topRight: Radius.circular(200),
                          ),
                        ),
                        child: const Text("오잉이게되네"));
                  },
                );
              },
              child: Icon(Icons.add_circle_outline,
                  size: fontSize, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
