import 'package:flutter/material.dart';
import 'package:prototype/screens/login.dart';
import 'package:prototype/screens/mstock.dart';
import 'package:prototype/widgets/modal_content/danger_rate_modal.dart';

class MoreClickWidgetNew extends StatelessWidget {
  final String content;
  final double fontSize;

  const MoreClickWidgetNew(
      {super.key, required this.content, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Login(),
              ),
            ),
            child: Text(
              content,
              style: TextStyle(
                  fontSize: fontSize,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 5),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Login(),
              ),
            ),
            child: Icon(
              Icons.arrow_forward_ios_outlined,
              size: fontSize,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 15)
        ],
      ),
    );
  }
}
