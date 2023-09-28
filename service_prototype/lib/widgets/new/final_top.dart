import 'package:flutter/material.dart';
import 'package:prototype/widgets/common/text_widget.dart';

class FinalTop extends StatelessWidget {
  const FinalTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: const TextWidget(
              text: "주가 예측 퀴즈",
              textColor: Colors.orangeAccent,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
          child: const TextWidget(
              text: "퀴즈에 참여만 해도",
              textColor: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
          child: const TextWidget(
              text: "다양한 상품과 주식을 드려요 !",
              textColor: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: const TextWidget(
              text: "로그인 하기 >",
              textColor: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
