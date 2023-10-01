import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:prototype/screens/quiz_answer.dart';
import 'package:prototype/screens/quiz_answer_fail.dart';
import 'package:prototype/screens/quiz_service.dart';
import 'package:prototype/widgets/common/space.dart';
import 'package:prototype/widgets/common/text_widget.dart';
import 'package:prototype/widgets/common/text_widget_center.dart';
import 'package:prototype/widgets/modal_content/quiz_modal.dart';

class FinalTop2 extends StatelessWidget {
  const FinalTop2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Stack(
        children: [
          Positioned(
            left: 120,
            top: -60,
            child: Image.asset(
              'images/trophy5.png',
              width: 480,
              height: 510,
            ),
          ),
          Positioned(
            top: 330,
            left: 110,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                showQuizDialog(context);
              },
              child: Container(
                width: 250,
                height: 60,
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: const TextWidgetCenter(
                    text: "주가 예측 퀴즈 풀고 상품 받기",
                    textColor: Color(0xffF58220),
                    fontSize: 15.5,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            top: 305,
            left: 300,
            child: Lottie.asset('images/click.json', width: 150),
          ),
        ],
      ),
    );
  }
}

/////////////////////////////////////////////////////
///
///
///
///

void showQuizDialog(BuildContext context) {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('yyyy년 MM월 dd일').format(now);
  String formattedTime = DateFormat('HH:MM:ss').format(now);

  showDialog(
    context: context,
    // barrierDismissible: false, // Dialog를 탭하여 닫을 수 없도록 설정
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Column(
            children: [
              const SpaceWidget(spaceHeight: 170, spaceWidth: 100),
              AlertDialog(
                shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white, width: 0.7),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                backgroundColor: Colors.black,
                title: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextWidget(
                                text: "주가 예측 퀴즈",
                                textColor: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            TextWidget(
                                text: formattedDate,
                                textColor: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400)
                          ],
                        ),
                        const SizedBox(width: 10),
                        Stack(
                          children: [
                            const SizedBox(
                              height: 50,
                              width: 150,
                            ),
                            Positioned(
                              left: -5,
                              top: -25,
                              child:
                                  Lottie.asset('images/bell.json', width: 100),
                            ),
                            Positioned(
                              top: 10,
                              left: 60,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 3),
                                decoration: BoxDecoration(
                                    // color: const Color(0xffFFF9C2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextWidget(
                                    text: formattedTime,
                                    textColor: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 350,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              TextWidget(
                                  text: "Mstock",
                                  textColor: Colors.orange,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              TextWidget(
                                  text: " AI가 예측한",
                                  textColor: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ],
                          ),
                          const TextWidget(
                              text: "내일의 하이브의 주가는 상승할까, 하락할까?",
                              textColor: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(width: 35),
                              SizedBox(
                                height: 90,
                                width: 90,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                      ),
                                      backgroundColor: const Color(0xffFAC3BF),
                                      side: const BorderSide(
                                        color: Color(0xffFAC3BF),
                                      ),
                                      foregroundColor: Colors.black),
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const QuizAnswer(),
                                    ),
                                  ),
                                  child: const TextWidgetCenter(
                                      text: "상승",
                                      textColor: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                height: 90,
                                width: 90,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                      ),
                                      backgroundColor: const Color(0xffC8D7FF),
                                      side: const BorderSide(
                                          color: Color(0xffC8D7FF)),
                                      foregroundColor: Colors.black),
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const QuizAnswerFail(),
                                    ),
                                  ),
                                  child: const TextWidgetCenter(
                                      text: "하락",
                                      textColor: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(width: 35),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                                border:
                                    Border.all(width: 1, color: Colors.white)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const TextWidget(
                                    text: "현재 하이브의 주가는 ",
                                    textColor: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                                const TextWidget(
                                    text: "270000",
                                    textColor: Colors.red,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.red.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const TextWidget(
                                      text: "+3.44%",
                                      textColor: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      );
    },
  );
}
