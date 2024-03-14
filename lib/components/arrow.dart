import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sukruthportfolio/constants/constants.dart';
import 'package:sukruthportfolio/models/text_styles.dart';

class Arrow extends StatelessWidget {
  const Arrow({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => Mobilearrow(),
      desktop: (BuildContext context) => Desktoparrow(),
    );
  }

  Widget Mobilearrow() {
    return Container();
  }

  Widget Desktoparrow() {
    return Expanded(
      child: Center(
        child: SizedBox(
          height: 400,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: w! / 15, vertical: 10),
                child: Text(
                  "During my first year I have started exploring \ndeep into the tech,attended lot of tech events\nand started sharing it online \nthat helped me to grow my network.\ngot a very good intrest in research development in AIML.",
                  style: PageRegular.nameofTextStyle,
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/arrow_curve.png"),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
