import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:prototype/screens/quiz_fail.dart';
import 'package:prototype/screens/quiz_reward.dart';
import 'package:prototype/widgets/common/text_widget.dart';
import 'package:prototype/widgets/common/text_widget_center.dart';

class QuizAnswerFail extends StatefulWidget {
  const QuizAnswerFail({super.key});

  @override
  State<QuizAnswerFail> createState() => _QuizAnswerState();
}

class _QuizAnswerState extends State<QuizAnswerFail> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const QuizFail()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffD9D9D9),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Lottie.asset(
                  'images/chart3.json',
                  width: 220,
                ),
                const TextWidgetCenter(
                    text: "하이브의 익일 예상 주가는",
                    textColor: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidgetCenter(
                        text: "271000",
                        textColor: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    TextWidgetCenter(
                        text: " 이에요",
                        textColor: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 30),
                    Column(
                      children: [
                        Image.asset('images/document.png', width: 80),
                        const TextWidgetCenter(
                            text: "[ 뉴스 분석 ]",
                            textColor: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w600)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('images/lens.png', width: 80),
                        const TextWidgetCenter(
                            text: "[ 검색량 분석 ]",
                            textColor: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w600)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('images/youtube.png', width: 80),
                        const TextWidgetCenter(
                            text: "[ 영상 매체 분석 ]",
                            textColor: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w600)
                      ],
                    ),
                    const SizedBox(width: 30),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextWidgetCenter(
                    text: "3가지 요소로 K-POP",
                    textColor: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
                const TextWidgetCenter(
                    text: "종목의 향후 주가를 예측해요",
                    textColor: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Image.asset('images/wordcloud.png', width: 225),
                const SizedBox(
                  height: 10,
                ),
                const TextWidgetCenter(
                    text: "주가 예측에 반영된 뉴스키워드에요",
                    textColor: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
