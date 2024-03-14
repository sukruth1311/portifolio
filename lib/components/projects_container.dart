import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:sukruthportfolio/models/text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileprojectcontainer(),
      desktop: (BuildContext context) => desktopprojectcontainer(),
    );
  }

  Widget mobileprojectcontainer() {
    Future<void> launchURL() async {
      const url = 'https://github.com/sukruth1311';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "My Projects",
            style: MobilemainHeading.nameOfTextStyle,
          ),
          Text(
            "These are few projects I have worked on",
            style: MobileRegular.nameofTextStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          ListView(
            shrinkWrap: true,
            children: [
              CarouselSlider(
                items: [
                  //1st Image of Slider
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 180,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/quiz.png"),
                                ),
                              ),
                            ),
                            Text(
                              "Quiz Application",
                              style: MobileProHeading.nameofTextStyle,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "A quiz application in Flutter.\nThis app will allow users to participate in quiz,\nanswer questions, and receive scores. ",
                              style: MobileProject.nameofTextStyle,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.greenAccent),
                                onPressed: launchURL,
                                child: Text(
                                  "Github",
                                  style: MobileRegular.nameofTextStyle,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                    ),
                    child: Expanded(
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 180,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/hostel.png"),
                                ),
                              ),
                            ),
                            Text(
                              "Hostel Application",
                              style: MobileProHeading.nameofTextStyle,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "A hostel application is build with Flutter.This app will allow users to book gate pass and know about there hostel facilities. ",
                              style: MobileProject.nameofTextStyle,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.greenAccent),
                                onPressed: launchURL,
                                child: Text(
                                  "Github",
                                  style: MobileRegular.nameofTextStyle,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //3rd Image of Slider
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                    ),
                    child: Expanded(
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 180,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/amazon.png"),
                                ),
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "Amazon E-commerce Clone",
                              style: MobileProHeading.nameofTextStyle,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "Amazon  E-commerce Clone which is build using basic frontend web technologies ",
                              style: MobileProject.nameofTextStyle,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.greenAccent),
                                onPressed: launchURL,
                                child: Text(
                                  "Github",
                                  style: MobileRegular.nameofTextStyle,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],

                //Slider Container properties
                options: CarouselOptions(
                    height: 430.0,
                    // enlargeFactor: 0.5,
                    enlargeCenterPage: true,
                    autoPlay: false,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                    clipBehavior: Clip.antiAlias),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget desktopprojectcontainer() {
    Future<void> launchURL() async {
      const url = 'https://github.com/sukruth1311';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Expanded(
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "My Projects",
              style: PageMainheading.nameOfTextStyle,
            ),
            Text(
              "These are few projects I have worked on",
              style: PageRegular.nameofTextStyle,
            ),
            const SizedBox(
              height: 30,
            ),
            ListView(
              shrinkWrap: true,
              children: [
                CarouselSlider(
                  items: [
                    //1st Image of Slider
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/quiz.png"),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Quiz Application",
                                    style: PagePro.nameOfTextStyle,
                                  ),
                                  Text(
                                    "A Quiz application in Flutter.This app will allow users to participate in quizzes attempt answers to the given questions, and receive scores.",
                                    style: PageProRegular.nameofTextStyle,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Colors.black),
                                          child: Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Text(
                                              "#flutter",
                                              style:
                                                  PageRegular.nameofTextStyle,
                                            ),
                                          )),
                                      const SizedBox(
                                        width: 10,
                                      ),

                                      //3rd tech stack
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Colors.black),
                                          child: Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Text(
                                              "#dart",
                                              style:
                                                  PageRegular.nameofTextStyle,
                                            ),
                                          )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 80,
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                      ),
                                      onPressed: launchURL,
                                      child: Text(
                                        "Github",
                                        style: PageRegular.nameofTextStyle,
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/hostel.png"),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hostel Application",
                                    style: PagePro.nameOfTextStyle,
                                  ),
                                  Text(
                                    "A hostel application is build with Flutter.This app will allow users to book gate pass and know about there  hostel facilities.",
                                    style: PageProRegular.nameofTextStyle,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Colors.black),
                                          child: Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Text(
                                              "#flutter",
                                              style:
                                                  PageRegular.nameofTextStyle,
                                            ),
                                          )),
                                      const SizedBox(
                                        width: 10,
                                      ),

                                      //2nd tech stack
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Colors.black),
                                          child: Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Text(
                                              "#dart",
                                              style:
                                                  PageRegular.nameofTextStyle,
                                            ),
                                          )),
                                      const SizedBox(
                                        width: 10,
                                      ),

                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Colors.black),
                                          child: Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Text(
                                              "#firebase",
                                              style:
                                                  PageRegular.nameofTextStyle,
                                            ),
                                          )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 80,
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                      ),
                                      onPressed: launchURL,
                                      child: Text(
                                        "Github",
                                        style: PageRegular.nameofTextStyle,
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/amazon.png"),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Amazon E-commerce Clone",
                                    style: PagePro.nameOfTextStyle,
                                  ),
                                  Text(
                                    "Amazon  E-commerce Clone which is build using basic frontend web technologies ",
                                    style: PageProRegular.nameofTextStyle,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Colors.black),
                                          child: Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Text(
                                              "#html",
                                              style:
                                                  PageRegular.nameofTextStyle,
                                            ),
                                          )),
                                      const SizedBox(
                                        width: 10,
                                      ),

                                      //2nd tech stack
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Colors.black),
                                          child: Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Text(
                                              "#Css",
                                              style:
                                                  PageRegular.nameofTextStyle,
                                            ),
                                          )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 80,
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                      ),
                                      onPressed: launchURL,
                                      child: Text(
                                        "Github",
                                        style: PageRegular.nameofTextStyle,
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                      height: 500.0,
                      enlargeCenterPage: true,
                      autoPlay: false,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      viewportFraction: 0.7,
                      clipBehavior: Clip.antiAlias),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
