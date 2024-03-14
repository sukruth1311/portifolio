import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:sukruthportfolio/models/text_styles.dart';

class TextAni extends StatelessWidget {
  const TextAni({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.0,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30.0,
          fontFamily: 'Space Mono',
        ),
        child: Row(
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icons/poly.png"),
                ),
              ),
            ),
            const SizedBox(
              width: 9,
            ),
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TyperAnimatedText('A good friend:)',
                    textStyle: PageMedium.nameOfTextStyle),
                TyperAnimatedText('Research Enthusiast',
                    textStyle: PageMedium.nameOfTextStyle),
                TyperAnimatedText('Flutter developer',
                    textStyle: PageMedium.nameOfTextStyle),
              ],
              onTap: () {
                print("Tap Event");
              },
            ),
          ],
        ),
      ),
    );
  }
}

/*MOBILE */

class Mtext extends StatelessWidget {
  const Mtext({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.0,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 20.0,
          fontFamily: 'Space Mono',
        ),
        child: Row(
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icons/poly.png"),
                ),
              ),
            ),
            const SizedBox(
              width: 9,
            ),
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TyperAnimatedText('A good friend:)',
                    textStyle: MobileAni.nameOfTextStyle),
                TyperAnimatedText('Research Enthusiast',
                    textStyle: MobileAni.nameOfTextStyle),
                TyperAnimatedText('Flutter developer',
                    textStyle: MobileAni.nameOfTextStyle),
              ],
              onTap: () {
                print("Tap Event");
              },
            ),
          ],
        ),
      ),
    );
  }
}
