import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sukruthportfolio/constants/constants.dart';
import 'package:sukruthportfolio/models/text_styles.dart';
import 'package:sukruthportfolio/widgets/frosted.dart';

import 'package:url_launcher/url_launcher.dart';

class AboutContainer extends StatelessWidget {
  const AboutContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileaboutcontainer(),
      desktop: (BuildContext context) => desktopaboutcontainer(),
    );
  }

  Widget mobileaboutcontainer() {
    return Expanded(
        child: Frosted(
            theChild: Stack(children: [
              Column(
                children: [
                  Text(
                    "About Me",
                    style: MobilemainHeading.nameOfTextStyle,
                  ),
                  // Text(
                  //   "Know ab me",
                  //   style: MobileRegular.nameofTextStyle,
                  // ),
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/phone_aboutimg.png"),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: Center(
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Who am I?",
                              style: MobileHeading.nameofTextStyle,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "Iam Sukruth Netha, research enthusiast in AIML and a flutter  developer",
                              style: MobileMedium.nameofTextStyle,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              '"If you are not going to tell the world who you are,the world is not going to tell you,how good you are."',
                              style: OpacityStyleMobile.nameofTextStyle,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "Iam currently studying 2nd year undergrad with computer science and information technology as majors at MLR institute of technology. I have worked as teams for various startups and helped them launching their products.This helped me to build new projects with different tech stacks.I also do share my coding journey through blogs.",
                              style: MobileRegular.nameofTextStyle,
                            ),
                            // Text(
                            //   textAlign: TextAlign.center,
                            //   "I spent most of my time listening to music and loves to play guitar.",
                            //   style: MobileRegular.nameofTextStyle,
                            // ),
                            const SizedBox(
                              height: 5,
                            ),
                            RichText(
                              text: TextSpan(
                                text: 'Email:',
                                style: MobileRegular.nameofTextStyle,
                                children: [
                                  TextSpan(
                                      text: 'sukruth321@gmail.com',
                                      style: MobileRegular.nameofTextStyle),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   width: 10,
                            // ),
                            RichText(
                              text: TextSpan(
                                text: 'From:',
                                style: MobileRegular.nameofTextStyle,
                                children: [
                                  TextSpan(
                                      text: 'Hyderabad,IN',
                                      style: MobileRegular.nameofTextStyle),
                                ],
                              ),
                            ),

                            const SizedBox(
                              height: 10,
                            ),
                            ButtonR("Resume"),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ]),
            theWidth: 800.0,
            theheight: 750));
  }

  Widget desktopaboutcontainer() {
    return Expanded(
        child: Frosted(
            theChild: Stack(children: [
              Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: 660,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/about_phone.png"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: w! / 90, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Who am I?",
                            style: Pageheading.nameOfTextStyle,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "       Iam Sukruth Netha, research enthusiast in AIML and a flutter developer",
                            style: PageMedium.nameOfTextStyle,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            textAlign: TextAlign.start,
                            '"If you are not going to tell the world who you are,the world is not going to tell you,how good you are."',
                            style: OpacityStyle.nameofTextStyle,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Iam currently studying 2nd year undergrad with computer science and information technology as majors at MLR institute of technology. I have worked as teams for various startups and helped them launching their products.This helped me to build new projects with different tech stacks.I also do share my coding journey through blogs.",
                            style: PageRegular.nameofTextStyle,
                          ),
                          // Text(
                          //   "I spent most of my time listening to music and loves to play guitar.",
                          //   style: PageRegular.nameofTextStyle,),

                          const SizedBox(
                            height: 5,
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Email:',
                              style: PageMedium.nameOfTextStyle,
                              children: [
                                TextSpan(
                                    text: 'sukruth321@gmail.com',
                                    style: PageRegular.nameofTextStyle),
                              ],
                            ),
                          ),
                          // SizedBox(
                          //   width: 10,
                          // ),
                          RichText(
                            text: TextSpan(
                              text: 'From:',
                              style: PageMedium.nameOfTextStyle,
                              children: [
                                TextSpan(
                                    text: 'Hyderabad,IN',
                                    style: PageRegular.nameofTextStyle),
                              ],
                            ),
                          ),

                          const SizedBox(
                            height: 10,
                          ),
                          ButtonR("Resume")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ]),
            theWidth: 1590,
            theheight: 755));
  }

  Widget ButtonR(String text) {
    Future<void> launchURL() async {
      const url =
          'https://docs.google.com/document/d/1BC6fhyZL3kOw4lY7xJVhwQIxxJ4JSjVZ/edit?usp=sharing&ouid=105224331206786233948&rtpof=true&sd=true';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return GestureDetector(
      child: InkWell(
        onTap: launchURL,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
