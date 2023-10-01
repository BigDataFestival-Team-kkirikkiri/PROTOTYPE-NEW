import 'package:flutter/material.dart';
import 'package:prototype/screens/mstock.dart';
import 'package:prototype/widgets/common/text_widget.dart';
import 'package:prototype/widgets/common/text_widget_center.dart';
import 'package:prototype/widgets/new/danger/danger_content_new.dart';
import 'package:prototype/widgets/new/danger/danger_title_container_new.dart';
import 'package:prototype/widgets/new/final_top.dart';
import 'package:prototype/widgets/new/final_top2.dart';
import 'package:prototype/widgets/new/pattern_new.dart';
import 'package:prototype/widgets/new/rank_group/rank_group.dart';
import 'package:prototype/widgets/new/rank_group/rank_title_group.dart';
import 'package:prototype/widgets/new/rank_personal/rank_title_personal.dart';
import 'package:prototype/widgets/new/title/pattern_title_new.dart';

class MainServiceNew extends StatelessWidget {
  const MainServiceNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // title: const Text('Main Service'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true, //body 위에 appbar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /*main 최상단*/
            const FinalTop(),
            const FinalTop2(),

            /*1. K-POP 종목 위험도 평가*/
            const DangerTitleContainerNew(),
            const DangerContentNew(),
            /*K-POP 종목 위험도 평가 끝*/
            /*2. 투자 유형 분석*/
            const PatternTitleNew(title1: "투자 유형 분석", fontSize: 17),
            // const PatternWidgetNew(
            //     title: "라이트급 마라토너",
            //     titleSize: 15,
            //     semiTitle: "적은 시드머니를 이용한 장기 투자를 선호합니다.",
            //     semiTitleSize: 11,
            //     content1: "단기 고수익 투자와 같은 모험을 즐기기보다",
            //     content2: "안정적인 투자를 자향하는 투자 유형입니다.",
            //     contentSize: 11),

            /*투자 유형 분석 끝 */

            /*3. 그룹별 랭킹 */
            const RankTitleGroup(title1: "그룹별 퀴즈 정답률 랭킹", fontSize: 17),
            const RankGroup(),
            /*그룹별 랭킹 끝*/

            /*3. 정답률 랭킹 */
            const RankTitlePersonal(title1: "나의 정답률 랭킹", fontSize: 17),
            /*정답률 랭킹 끝 */

            /*4. 마지막 부분*/
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
              height: 275,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xffEA9617),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Image.asset('images/box.png', width: 80),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                          text: "M-STOCK",
                          textColor: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      TextWidget(
                          text: " 에서 제공하는",
                          textColor: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                          text: "다양한 혜택을 확인 하세요 !",
                          textColor: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 20,
                        shadowColor: Colors.black,
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MstockService(),
                      ),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      child: const TextWidgetCenter(
                          text: "혜택 확인하기",
                          textColor: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
