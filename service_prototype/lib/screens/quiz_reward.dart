import 'package:flutter/material.dart';
import 'package:prototype/screens/main_screen_new.dart';
import 'package:prototype/widgets/common/text_widget.dart';
import 'package:prototype/widgets/common/text_widget_center.dart';

class QuizReward extends StatefulWidget {
  const QuizReward({super.key});

  @override
  State<QuizReward> createState() => _QuizRewardState();
}

class _QuizRewardState extends State<QuizReward> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffD9D9D9),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset('images/giftBox.png', width: 250),
          const TextWidgetCenter(
              text: "마일리지 당첨 !",
              textColor: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          const SizedBox(
            height: 30,
          ),
          const TextWidgetCenter(
              text: "마일리지 +1 당첨 축하드려요 !",
              textColor: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600),
          const TextWidgetCenter(
              text: "당첨 마일리지는 매레에셋 계좌를 이용하여 사용 가능해요",
              textColor: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600),
          const SizedBox(
            height: 100,
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
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: const TextWidgetCenter(
                  text: "자세히 보기",
                  textColor: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    )
        //

        ;
  }
}
