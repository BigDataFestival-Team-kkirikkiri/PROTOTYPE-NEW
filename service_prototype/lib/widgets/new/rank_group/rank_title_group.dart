import 'package:flutter/material.dart';
import 'package:prototype/widgets/common/text_widget.dart';
import 'package:prototype/widgets/modal_content/pattern_modal.dart';

class RankTitleGroup extends StatelessWidget {
  final String title1;
  final double fontSize;

  const RankTitleGroup(
      {super.key, required this.title1, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0, color: const Color(0xffFCE9D3)),
        color: const Color(0xffFCE9D3),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.only(left: 35, top: 20, bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
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
              text: "나의 그룹이 1등이 되면",
              textColor: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold),
          const TextWidget(
              text: "다양한 혜택과 상품을 받을 수 있어요 !",
              textColor: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold),
          const SizedBox(
            height: 5,
          ),
          const TextWidget(
              text: "랭킹은 매월 초기화됩니다.",
              textColor: Color(0xff48535B),
              fontSize: 16,
              fontWeight: FontWeight.bold),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
