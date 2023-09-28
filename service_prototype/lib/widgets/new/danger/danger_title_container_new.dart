import 'package:flutter/material.dart';
import 'package:prototype/widgets/common/more_rate.dart';
import 'package:prototype/widgets/common/text_widget.dart';
import 'package:prototype/widgets/new/title/danger_title_new.dart';

class DangerTitleContainerNew extends StatelessWidget {
  const DangerTitleContainerNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(height: 130),
        Positioned(
          child: Container(
            height: 65,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xff323232),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/pin.png', width: 30),
                    const SizedBox(
                      width: 10,
                    ),
                    const TextWidget(
                        text: "현재 K-POP 종목 주가와 AI가 예측한 종목 위험도는 ?",
                        textColor: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w300)
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 55,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.7),
                  spreadRadius: 0,
                  blurRadius: 5.0,
                  offset: const Offset(0, 7), // changes position of shadow
                ),
              ],
              color: const Color(0xffEA9617).withOpacity(1),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DangerTitleNew(title1: "K-POP 종목 위험도 평가", fontSize: 18),
                MoreClickWidget(content: "위험도 기준 설정", fontSize: 15),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
