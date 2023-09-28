import 'package:flutter/material.dart';
import 'package:prototype/screens/quiz_answer.dart';
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: const TextWidgetCenter(
                      text: "주식 예측 퀴즈 풀고 상품 받기",
                      textColor: Color(0xffF58220),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ))
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

String format(int seconds) {
  var duration = Duration(seconds: seconds);
  return duration.toString().split(".").first;
}

void showQuizDialog(BuildContext context) {
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
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                backgroundColor: Colors.grey[850],
                title: const Column(
                  children: [
                    Row(
                      children: [
                        TextWidget(
                            text: "일간 퀴즈",
                            textColor: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        SizedBox(width: 10),
                        TextWidget(
                            text: "12:00",
                            textColor: Colors.orange,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ],
                    ),
                    TextWidget(
                        text: "tmp",
                        textColor: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400)
                  ],
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage('images/hybe.png')),
                        SizedBox(width: 10),
                        TextWidget(
                            text: "'하이브' 의 현재 주가는",
                            textColor: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TextWidget(
                            text: "271,000",
                            textColor: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 1, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red.withOpacity(0.2),
                          ),
                          child: const Text("+ 3.44%",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 350,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
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
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              TextWidget(
                                  text: " AI가 예측한",
                                  textColor: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ],
                          ),
                          const TextWidget(
                              text: "내일의 하이브의 주가는 상승할까, 하락할까?",
                              textColor: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          const SizedBox(height: 20),
                          SizedBox(
                            height: 30,
                            width: 300,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.grey[850],
                                  side: const BorderSide(color: Colors.orange),
                                  foregroundColor: Colors.white),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const QuizAnswer(),
                                ),
                              ),
                              child: const Text('상승'),
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            height: 30,
                            width: 300,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.grey[850],
                                  side: const BorderSide(color: Colors.orange),
                                  foregroundColor: Colors.white),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const QuizAnswer(),
                                ),
                              ),
                              child: const Text('하락'),
                            ),
                          ),
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
