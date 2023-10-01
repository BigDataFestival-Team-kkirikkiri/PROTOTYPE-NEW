import 'package:flutter/material.dart';
import 'package:prototype/widgets/title/title_color_between_no_icon.dart';

class PatternWidgetNew extends StatelessWidget {
  final String title;
  final double titleSize;
  final String semiTitle;
  final double semiTitleSize;
  final String content1;
  final String content2;
  final double contentSize;

  const PatternWidgetNew(
      {super.key,
      required this.title,
      required this.titleSize,
      required this.semiTitle,
      required this.semiTitleSize,
      required this.content1,
      required this.content2,
      required this.contentSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(width: 0, color: const Color(0xffE5E4E1)),
        color: const Color(0xffE5E4E1),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 7,
            left: -10,
            child: Image.asset(
              'images/blue.png',
              width: 150,
              height: 160,
              opacity: const AlwaysStoppedAnimation(0.7),
            ),
          ),
          Positioned(
            left: 370,
            top: 140,
            child: Image.asset(
              'images/orange.png',
              width: 160,
              height: 170,
              opacity: const AlwaysStoppedAnimation(0.7),
            ),
          ),
          Positioned(
            left: 50,
            top: 80,
            child: Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.7),
                    spreadRadius: 0,
                    blurRadius: 5.0,
                    offset: const Offset(3, 7), // changes position of shadow
                  ),
                ],
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: titleSize,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          semiTitle,
                          style: TextStyle(
                              color: Colors.white, fontSize: semiTitleSize),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          content1,
                          style: TextStyle(
                              color: Colors.white, fontSize: contentSize),
                        ),
                        Text(
                          content2,
                          style: TextStyle(
                              color: Colors.white, fontSize: contentSize),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 56,
                      backgroundColor: Color(0xffF58220),
                      child: CircleAvatar(
                        radius: 53,
                        backgroundImage:
                            AssetImage('images/light_maratoner.jpg'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
              left: 35,
              right: 0,
              top: 30,
              child: TitleColorBetweenNoIcon(
                  title1: "나의 주식",
                  colorTitle: " 투자 유형",
                  color: Color(0xffF58220),
                  title2: "은 ?",
                  fontSize: 20)),
        ],
      ),
    );
  }
}
