import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prototype/screens/quiz_reward.dart';
import 'package:prototype/widgets/common/text_widget.dart';
import 'package:prototype/widgets/common/text_widget_center.dart';

class QuizAnswer extends StatefulWidget {
  const QuizAnswer({super.key});

  @override
  State<QuizAnswer> createState() => _QuizAnswerState();
}

class _QuizAnswerState extends State<QuizAnswer> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const QuizReward()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffD9D9D9),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'images/moneyStack.png',
            width: 250,
          ),
          const TextWidgetCenter(
              text: "하이브의 익일 예상 주가는",
              textColor: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          const TextWidgetCenter(
              text: "271000 이에요",
              textColor: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          const TextWidgetCenter(
              text: "위험도 안전",
              textColor: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w600),
          const SizedBox(
            height: 50,
          ),
          Image.asset('images/wordcloud.png', width: 250),
          const TextWidgetCenter(
              text: "주가 예측에 반영된 뉴스키워드에요",
              textColor: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold)
        ],
      ),
    );
  }
}
