import 'package:flutter/material.dart';
import 'package:prototype/widgets/common/text_widget.dart';
import 'package:prototype/widgets/modal_content/pattern_modal.dart';
import 'package:prototype/widgets/new/rank_personal/rank_chart_new.dart';

class RankTitlePersonal extends StatelessWidget {
  final String title1;
  final double fontSize;

  const RankTitlePersonal(
      {super.key, required this.title1, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0, color: Colors.white),
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          padding: const EdgeInsets.only(left: 30, top: 20, bottom: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title1,
                    style: TextStyle(
                        color: const Color(0xffF58220),
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: Colors.white.withOpacity(0),
                        context: context,
                        builder: (BuildContext context) {
                          return const PatternModal();
                        },
                      );
                    },
                    child: Icon(Icons.add_circle_outline,
                        size: fontSize, color: Colors.black),
                  )
                ],
              ),
              const SizedBox(height: 10),
              const TextWidget(
                  text: "나의 퀴즈 정답률을 랭킹으로 나눠서 보여드려요 !",
                  textColor: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              const TextWidget(
                  text: "매주 루키이상의 등급에겐 주식을 제공합니다",
                  textColor: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              const SizedBox(
                height: 3,
              ),
              const TextWidget(
                  text: "매주 '루키'이상의 등급 달성 시, 소수점 주식이 지급됩니다.",
                  textColor: Color(0xff48535B),
                  fontSize: 13,
                  fontWeight: FontWeight.bold)
            ],
          ),
        ),
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                border: Border.all(width: 0, color: Colors.white),
                color: Colors.white,
              ),
              child: const RankChartNew(),
            ),
            // Positioned(
            //   top: 310,
            //   left: 330,
            //   child: Image.asset('images/coin2.png', width: 85),
            // ),
            // Positioned(
            //   top: 260,
            //   left: 400,
            //   child: Image.asset('images/coin1.png', width: 100),
            // ),
            // Positioned(
            //   top: 310,
            //   left: 330,
            //   child: Image.asset('images/coin3.png', width: 120),
            // ),
          ],
        )
      ],
    );
  }
}
