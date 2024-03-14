import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sukruthportfolio/constants/constants.dart';
import 'package:sukruthportfolio/models/text_styles.dart';

class Story1 extends StatelessWidget {
  const Story1({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => Mobilestory1(),
      desktop: (BuildContext context) => Desktopstory1(),
    );
  }

  Widget Mobilestory1() {
    return SizedBox(
      height: 480,
      child: Column(
        children: [
          Text(
            "First Hackathon Win...",
            style: MobileLinear.nameofTextStyle,
          ),
          Text(
            "May6,2023",
            style: MobileRegular.nameofTextStyle,
          ),
          Row(
            children: [
              Container(
                height: 200,
                width: 160,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/appfiestaimg.png"),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 160,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/flarecraftimg.png"),
                  ),
                ),
              )
            ],
          ),
          Text(
            textAlign: TextAlign.center,
            "This hackathon that introduced me into the world of flutter..Our team Dcoders has built an healthcare application which solves the blood donation problem in our current society using flutter framework as userinterface and firebase as backend  ",
            style: MobileRegular.nameofTextStyle,
          ),
        ],
      ),
    );
  }

  Widget Desktopstory1() {
    return Expanded(
      child: Center(
        child: SizedBox(
          height: 534,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: w! / 20, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "First hackathon Win...",
                    style: LinearGraddient.nameOfTextStyle,
                  ),
                  Text(
                    "Mar6,2023",
                    style: PageRegular.nameofTextStyle,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "This hackathon that introduced me into the world of flutter.\nOur team Dcoders has built an healthcare application which\nsolves the blood donation problem in our current society using \nflutter framework as userinterface and firebase as backend  ",
                    style: PageRegular.nameofTextStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Text(
                  //   "As we are very new to building website we have somehow managed\nto complete a static website.Althrough this helped \na lot to improve in my further hackathons",
                  //   style: PageRegular.nameofTextStyle,
                  // )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/appfiestaimg.png"),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
