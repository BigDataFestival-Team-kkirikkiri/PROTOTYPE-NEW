import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:prototype/screens/main_screen_new.dart';
import 'package:prototype/widgets/common/text_widget.dart';
import 'package:prototype/widgets/common/text_widget_center.dart';

class QuizFail extends StatefulWidget {
  const QuizFail({super.key});

  @override
  State<QuizFail> createState() => _QuizFailState();
}

class _QuizFailState extends State<QuizFail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffD9D9D9),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          LottieBuilder.asset('images/fail.json', width: 300),
          const TextWidgetCenter(
              text: "마일리지 획득 실패",
              textColor: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold),
          const SizedBox(
            height: 25,
          ),
          const TextWidgetCenter(
              text: "아쉽지만 오답이에요 ..",
              textColor: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600),
          const TextWidgetCenter(
              text: "퀴즈는 매일 새로운 문제로 업데이트 됩니다",
              textColor: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600),
          const SizedBox(
            height: 10,
          ),
          const TextWidgetCenter(
              text: "혜택 페이지에서 다양한 이벤트를 확인해보세요 !",
              textColor: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600),
          const SizedBox(
            height: 35,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xff110368),
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MainServiceNew(),
              ),
            ),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.5,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: const TextWidgetCenter(
                  text: "돌아가기",
                  textColor: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
