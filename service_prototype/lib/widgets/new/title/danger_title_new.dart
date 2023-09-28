import 'package:flutter/material.dart';
import 'package:prototype/widgets/modal_content/danger_modal.dart';

class DangerTitleNew extends StatelessWidget {
  final String title1;
  final double fontSize;

  const DangerTitleNew(
      {super.key, required this.title1, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.black.withOpacity(0),
                  context: context,
                  builder: (BuildContext context) {
                    return const DangerModal();
                  },
                );
              },
              child: Icon(Icons.add_circle_outline,
                  size: fontSize, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
