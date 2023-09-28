import 'package:flutter/material.dart';
import 'package:prototype/widgets/common/text_widget.dart';
import 'package:prototype/widgets/modal_content/pattern_modal.dart';
import 'package:prototype/widgets/new/pattern_new.dart';
import 'package:prototype/widgets/service/pattern.dart';

class PatternTitleNew extends StatelessWidget {
  final String title1;
  final double fontSize;

  const PatternTitleNew(
      {super.key, required this.title1, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          height: 421,
        ),
        Container(
          height: 120,
          decoration: BoxDecoration(
            border: Border.all(width: 0, color: Colors.white),
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          padding: const EdgeInsets.only(left: 30, top: 20, bottom: 0),
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
                  text: "로그인하여 나의 투자 유형을 확인하고",
                  textColor: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              const TextWidget(
                  text: "투자 유형 진영에 참여해보세요 !",
                  textColor: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)
            ],
          ),
        ),
        const Positioned(
          top: 120,
          child: PatternWidgetNew(
              title: "라이트급 마라토너",
              titleSize: 15,
              semiTitle: "적은 시드머니를 이용한 장기 투자를 선호합니다.",
              semiTitleSize: 11,
              content1: "단기 고수익 투자와 같은 모험을 즐기기보다",
              content2: "안정적인 투자를 자향하는 투자 유형입니다.",
              contentSize: 11),
        ),
        Positioned(
          top: -35,
          left: 350,
          child: Image.asset(
            'images/blue2.png',
            width: 230,
          ),
        ),
      ],
    );
  }
}
