import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sukruthportfolio/constants/constants.dart';
import 'package:sukruthportfolio/models/text_styles.dart';

class MyStories extends StatelessWidget {
  const MyStories({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => Mobilestorycontainer(),
      desktop: (BuildContext context) => Desktopstorycontainer(),
    );
  }

  Widget Mobilestorycontainer() {
    return SizedBox(
      height: 560,
      child: Column(
        children: [
          Text(
            "First hackathon",
            style: MobileLinear.nameofTextStyle,
          ),
          Text(
            "Jan27,2023",
            style: MobileRegular.nameofTextStyle,
          ),
          Container(
            height: 190,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Inventronimg.png"),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            textAlign: TextAlign.center,
            "Inventron is my first hackathon.I have particapted during my first year of college.Our team has thought to build an E-commerce website to get printouts and stationary items in more efficient and faster way to our college students.",
            style: MobileRegular.nameofTextStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            textAlign: TextAlign.center,
            "As we are very new to building website we have somehow managed to complete a static website.Althrough we didn't won anything but this experience helped a lot to improve in my further hackathons",
            style: MobileRegular.nameofTextStyle,
          )
        ],
      ),
    );
  }

  Widget Desktopstorycontainer() {
    return Expanded(
      child: SizedBox(
        height: 680,
        child: Row(children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Inventronimg.png"),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: w! / 70, vertical: 90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "First hackathon",
                    style: LinearGraddient.nameOfTextStyle,
                  ),
                  Text(
                    "Jan27,2023",
                    style: PageRegular.nameofTextStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Inventron is my first hackathon.I have particapted during my first year of college.Our team has thought to build an E-commerce website to get printouts and stationary items in more efficient and faster way to our college students.",
                    style: PageRegular.nameofTextStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "As we are very new to building website we have somehow managed to complete a static website.Althrough we didn't won anything but this experience helped a lot to improve in my further hackathons",
                    style: PageRegular.nameofTextStyle,
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
