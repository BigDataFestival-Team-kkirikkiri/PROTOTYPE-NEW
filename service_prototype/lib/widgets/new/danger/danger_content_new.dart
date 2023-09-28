import 'package:flutter/material.dart';
import 'package:prototype/widgets/new/danger_new.dart';

class DangerContentNew extends StatelessWidget {
  const DangerContentNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DangerWidgetNew(
            bgColor: Colors.black,
            entColor: Colors.black,
            stockColor: Colors.red,
            stockRateColor: Colors.white,
            stockRateBgColor: Colors.red,
            allfontSize: 16,
            iconColor: Colors.blue,
            iconSize: 15,
            entName: "하이브",
            stockName: "272,084",
            stockRate: "+ 0.40%"),
        const DangerWidgetNew(
            bgColor: Colors.black,
            entColor: Colors.black,
            stockColor: Colors.red,
            stockRateColor: Colors.white,
            stockRateBgColor: Colors.red,
            allfontSize: 16,
            iconColor: Colors.yellow,
            iconSize: 15,
            entName: "JYP Ent.",
            stockName: "201.344",
            stockRate: "+ 0.70%"),
        const DangerWidgetNew(
            bgColor: Colors.black,
            entColor: Colors.black,
            stockColor: Colors.red,
            stockRateColor: Colors.white,
            stockRateBgColor: Colors.blue,
            allfontSize: 16,
            iconSize: 15,
            iconColor: Colors.red,
            entName: "에스엠",
            stockName: "183,010",
            stockRate: "- 0.40%"),
        const DangerWidgetNew(
            bgColor: Colors.black,
            entColor: Colors.black,
            stockColor: Colors.red,
            stockRateColor: Colors.white,
            stockRateBgColor: Colors.red,
            allfontSize: 16,
            iconSize: 15,
            iconColor: Colors.blue,
            entName: "와이지엔터테인먼트",
            stockName: "187,951",
            stockRate: "+ 0.61%"),
        Container(
          height: 20,
          decoration: const BoxDecoration(
            color: Color(0xffF4E5D5),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        )
      ],
    );
  }
}
