import 'package:flutter/material.dart';
import 'package:prototype/widgets/common/text_widget.dart';

class LightSprinter extends StatelessWidget {
  final double rate;
  final String ratePercent;
  final String patternName;
  final String rank;

  const LightSprinter(
      {super.key,
      required this.rate,
      required this.ratePercent,
      required this.patternName,
      required this.rank});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      width: 450,
      height: 110,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.7),
            spreadRadius: 0,
            blurRadius: 5.0,
            offset: const Offset(3, 7), // changes position of shadow
          ),
        ],
        color: const Color(0xff323232),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TextWidget(
                  text: rank,
                  textColor: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              const SizedBox(
                width: 10,
              ),
              Stack(
                children: [
                  Positioned(
                    top: 25,
                    left: 50,
                    child: SizedBox(
                      width: rate,
                      height: 30,
                      child: Container(
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 220,
                  ),
                  const Positioned(
                    child: CircleAvatar(
                      radius: 45,
                      backgroundColor: Color(0xffF58220),
                      child: CircleAvatar(
                        radius: 43,
                        backgroundImage:
                            AssetImage('images/light_sprinter.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                  text: ratePercent,
                  textColor: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
              TextWidget(
                  text: patternName,
                  textColor: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold)
            ],
          )
        ],
      ),
    );
  }
}
