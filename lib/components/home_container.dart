import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sukruthportfolio/animations/text_animation.dart';
import 'package:sukruthportfolio/components/testingurl.dart';
import 'package:sukruthportfolio/models/text_styles.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({super.key});

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => Mobilehomecontainer(),
      desktop: (BuildContext context) => Desktophomecontainer(),
    );
  }

  Widget Mobilehomecontainer() {
    return Container(
      child: Stack(
        children: [
          Positioned(
            // top: 100,
            // left: 40,
            child: Container(
              height: 660,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/testing2.png"),
                    fit: BoxFit.contain),
              ),
            ),
          ),
          const Positioned(
              top: 90,
              left: 10,
              child: Text(
                "SUKRUTH NETHA",
                style: TextStyle(
                    fontFamily: 'TheLastShuriken',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              )),
          const Positioned(
            top: 140,
            left: 0,
            child: UrlTestingMobile(),
          ),
          const Positioned(
            top: 190,
            left: 10,
            child: Mtext(),
          ),
          // Positioned(
          //     top: 30,
          //     left: 20,
          //     child: Text(
          //       "HAY! THERE",
          //       style: MobileMedium.nameofTextStyle,
          //     )),
          Positioned(
              top: 50,
              left: 10,
              child: Text(
                "Welcome to my Portfolio👋",
                style: MobileHome.nameOfTextStyle,
              )),
        ],
      ),
    );
  }

  Widget Desktophomecontainer() {
    return Container(
      child: Stack(
        // alignment: Alignment.center,
        children: [
          // Row(
          //   mainAxisSize: MainAxisSize.min,
          //   children: <Widget>[
          //     const SizedBox(width: 20.0, height: 100.0),
          //     const Text(
          //       'Be',
          //       style: TextStyle(fontSize: 43.0),
          //     ),
          //     const SizedBox(width: 20.0, height: 100.0),
          //     DefaultTextStyle(
          //       style: const TextStyle(
          //         fontSize: 40.0,
          //         fontFamily: 'Horizon',
          //       ),
          //       child: AnimatedTextKit(
          //         animatedTexts: [
          //           RotateAnimatedText('AWESOME'),
          //           RotateAnimatedText('OPTIMISTIC'),
          //           RotateAnimatedText('DIFFERENT'),
          //         ],
          //         onTap: () {
          //           print("Tap Event");
          //         },
          //       ),
          //     ),
          //   ],
          // ),

          //from here

          Positioned(
            top: 250,
            left: 50,
            child: Container(
              child: const Center(
                child: Text(
                  "SUKRUTH       NETHA",
                  style: TextStyle(
                      fontFamily: 'TheLastShuriken',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 130),
                ),
              ),
            ),
          ),
          Positioned(
            child: Center(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/testing.png",
                      ),
                      fit: BoxFit.contain),
                ),
                height: 670,
              ),
            ),
          ),
          const Positioned(
            top: 500,
            left: 38,
            child: UrlTesting(),
          ),
          const Positioned(left: 50, top: 430, child: TextAni()),

          // Positioned(
          //     top: 100,
          //     left: 50,
          //     child: Text(
          //       "HAY! THERE",
          //       style: PageMainheading.nameOfTextStyle,
          //     )),
          Positioned(
              top: 190,
              left: 50,
              child: AnimatedTextKit(repeatForever: true, animatedTexts: [
                TyperAnimatedText('I build things for web and app',
                    textStyle: PageMedium.nameOfTextStyle)
              ])),

          Positioned(
              top: 140,
              left: 50,
              child: Text(
                "Welcome to my Portfolio👋",
                style: PageHome.nameOfTextStyle,
              )),
        ],
      ),
    );
  }
}
