import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:sukruthportfolio/models/text_styles.dart';

class MySkill extends StatelessWidget {
  const MySkill({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => Mobileskillcontainer(),
      desktop: (BuildContext context) => Desktopskillcontainer(),
    );
  }

  Widget Mobileskillcontainer() {
    return Container(
      alignment: Alignment.center,
      height: 600,
      child: Column(
        children: [
          Text(
            "My Skills",
            style: MobilemainHeading.nameOfTextStyle,
          ),
          Text(
            textAlign: TextAlign.center,
            "I may be no perfect but sure aware of it",
            style: MobileRegular.nameofTextStyle,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // skill 1

              Column(
                children: [
                  SimpleCircularProgressBar(
                    mergeMode: false,
                    size: 100,

                    // progressStrokeWidth: 20,
                    valueNotifier: ValueNotifier(70),
                    onGetText: (double value) {
                      return Text('${value.toInt()}%');
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "FLUTTER",
                    style: MobileSkill.nameOfTextStyle,
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),

              //skill 2

              Column(
                children: [
                  SimpleCircularProgressBar(
                    mergeMode: true,
                    size: 100,
                    valueNotifier: ValueNotifier(60),
                    onGetText: (double value) {
                      return Text('${value.toInt()}%');
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "FIREBASE",
                    style: MobileSkill.nameOfTextStyle,
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              //skill 3

              Column(
                children: [
                  SimpleCircularProgressBar(
                    mergeMode: true,
                    size: 100,
                    valueNotifier: ValueNotifier(50),
                    onGetText: (double value) {
                      return Text('${value.toInt()}%');
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "JAVA",
                    style: MobileSkill.nameOfTextStyle,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            textAlign: TextAlign.center,
            "I'm Proficient in building cross-platform mobile applications via flutter harnessing its expressive UI components and powerful features.I also dabble in web development.I'm always exicted to explore new technologies and trends",
            style: MobileRegular.nameofTextStyle,
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 100,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/skillbuttons.png"))),
          )
        ],
      ),
    );
  }

  /* DESKTOP */

  Widget Desktopskillcontainer() {
    return Container(
      alignment: Alignment.center,
      height: 750,
      child: Column(
        children: [
          Text(
            "My Skills",
            style: PageMainheading.nameOfTextStyle,
          ),
          Text(
            "I may be no perfect but sure aware of it",
            style: PageRegular.nameofTextStyle,
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // skill 1

              Column(
                children: [
                  SimpleCircularProgressBar(
                    mergeMode: true,
                    size: 150,
                    valueNotifier: ValueNotifier(70),
                    onGetText: (double value) {
                      return Text('${value.toInt()}%');
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "FLUTTER",
                    style: PageSkill.nameOfTextStyle,
                  ),
                ],
              ),
              const SizedBox(
                width: 30,
              ),

              //skill 2

              Column(
                children: [
                  SimpleCircularProgressBar(
                    mergeMode: true,
                    size: 150,
                    valueNotifier: ValueNotifier(80),
                    onGetText: (double value) {
                      return Text('${value.toInt()}%');
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "FIREBASE",
                    style: PageSkill.nameOfTextStyle,
                  ),
                ],
              ),
              const SizedBox(
                width: 30,
              ),
              //skill 3

              Column(
                children: [
                  SimpleCircularProgressBar(
                    mergeMode: true,
                    size: 150,
                    valueNotifier: ValueNotifier(60),
                    onGetText: (double value) {
                      return Text('${value.toInt()}%');
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "JAVA",
                    style: PageSkill.nameOfTextStyle,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200),
            child: Text(
              textAlign: TextAlign.center,
              "I'm Proficient in building cross-platform mobile applications via flutter,harnessing its expressive UI components and powerful features.I also dabble in web development.I'm always exicted to explore new technologies and trends",
              style: PageRegular.nameofTextStyle,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 130,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/skillbuttons.png"))),
          ),
        ],
      ),
    );
  }
}
