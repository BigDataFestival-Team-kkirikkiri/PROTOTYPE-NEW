import 'package:flutter/material.dart';
import 'package:prototype/widgets/new/rank_group/heavy_maratoner.dart';
import 'package:prototype/widgets/new/rank_group/heavy_sprinter.dart';
import 'package:prototype/widgets/new/rank_group/light_maratoner.dart';
import 'package:prototype/widgets/new/rank_group/light_sprinter.dart';

class RankGroup extends StatelessWidget {
  const RankGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0, color: const Color(0xffFCE9D3)),
        gradient: const LinearGradient(
            colors: [Color(0xffFCE9D3), Color(0xffF0B26B)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const LightMaratoner(
              rate: 400,
              ratePercent: "52%",
              patternName: "라이트급 마라토너",
              rank: "1등"),
          const SizedBox(
            height: 25,
          ),
          const LightSprinter(
              rate: 250,
              ratePercent: "38%",
              patternName: "라이트급 스프린터",
              rank: "2등"),
          const SizedBox(
            height: 25,
          ),
          Stack(
            children: [
              SizedBox(
                height: 430,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                top: 45,
                left: 160,
                child: Image.asset(
                  'images/trophy.png',
                  width: 380,
                  height: 380,
                ),
              ),
              const Positioned(
                left: 28,
                child: HeavySprinter(
                    rate: 150,
                    ratePercent: "19%",
                    patternName: "헤비급 스프린터",
                    rank: "3등"),
              ),
              const Positioned(
                left: 28,
                top: 135,
                child: HeavyMaratoner(
                    rate: 100,
                    ratePercent: "12%",
                    patternName: "헤비급 마라토너",
                    rank: "4등"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
