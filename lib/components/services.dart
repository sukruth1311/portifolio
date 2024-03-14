import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sukruthportfolio/models/text_styles.dart';
import 'package:sukruthportfolio/widgets/frosted.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class Services extends StatefulWidget {
  Future<void> _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  final controller = FlipCardController();
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => Mobileservicescontainer(),
      desktop: (BuildContext context) => Desktopservicescontainer(),
    );
  }

  Widget Mobileservicescontainer() {
    launchWhatsApp() async {
      const link = WhatsAppUnilink(
        phoneNumber: '+ 91 9493994613',
        text: "Hey! I'm inquiring about the Project",
      );
      await launch('$link');
    }

    return Container(
      child: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            "What Actually I Love to do",
            style: MobilemainHeading.nameOfTextStyle,
          ),
          Text(
            textAlign: TextAlign.center,
            "I do the things love to do",
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
                  //Container 1 slider

                  FlipCard(
                      rotateSide: RotateSide.left,
                      onTapFlipping:
                          true, //When enabled, the card will flip automatically when touched.
                      axis: FlipAxis.vertical,
                      controller: controller,
                      frontWidget: Center(
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            height: 300,
                            width: 300,
                            child: Frosted(
                                theChild: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 140,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/icons/webdev.png"))),
                                      ),
                                      const SizedBox(
                                        height: 35,
                                      ),
                                      Center(
                                        child: Text(
                                          "Web development",
                                          style: PageRegular.nameofTextStyle,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                theWidth: 300.0,
                                theheight: 300)),
                      ),
                      backWidget: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white),
                        height: 300,
                        width: 300,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  " Proficient in creating clean and semantic HTML markup. Skilled at using CSS to style websites, implementing fonts, colors, and layouts.",
                                  style: PageRegularBlack.nameofTextStyle,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                MaterialButton(
                                    color: Colors.greenAccent.shade200,
                                    onPressed: launchWhatsApp,
                                    child: Text(
                                      "HIRE ME",
                                      style: PageRegularBlack.nameofTextStyle,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      )),

                  //2nd Image of Slider
                  FlipCard(
                      rotateSide: RotateSide.left,
                      onTapFlipping:
                          true, //When enabled, the card will flip automatically when touched.
                      axis: FlipAxis.vertical,
                      controller: controller,
                      frontWidget: Center(
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            height: 300,
                            width: 300,
                            child: Frosted(
                                theChild: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 140,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/icons/mobiledevelopment.png"))),
                                      ),
                                      const SizedBox(
                                        height: 35,
                                      ),
                                      Center(
                                        child: Text(
                                          "Mobile development",
                                          style: PageRegular.nameofTextStyle,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                theWidth: 300.0,
                                theheight: 300)),
                      ),
                      backWidget: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white),
                        height: 300,
                        width: 300,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  "Proficient in building cross-platform mobile applications with Flutter, harnessing its expressive UI components and powerful features.",
                                  style: PageRegularBlack.nameofTextStyle,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                MaterialButton(
                                  color: Colors.greenAccent.shade200,
                                  onPressed: launchWhatsApp,
                                  child: Text("HIRE ME",
                                      style: PageRegularBlack.nameofTextStyle),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),

                  //3rd Image of Slider
                  FlipCard(
                      rotateSide: RotateSide.left,
                      onTapFlipping:
                          true, //When enabled, the card will flip automatically when touched.
                      axis: FlipAxis.vertical,
                      controller: controller,
                      frontWidget: Center(
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            height: 300,
                            width: 300,
                            child: Frosted(
                                theChild: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 140,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/icons/blogging.png"))),
                                      ),
                                      const SizedBox(
                                        height: 35,
                                      ),
                                      Center(
                                        child: Text(
                                          "Content writing",
                                          style: PageRegular.nameofTextStyle,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                theWidth: 300.0,
                                theheight: 300)),
                      ),
                      backWidget: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white),
                        height: 300,
                        width: 300,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  "Blog Articles,product description,social media content and technical writing much more..",
                                  style: PageRegularBlack.nameofTextStyle,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                MaterialButton(
                                  color: Colors.greenAccent.shade200,
                                  onPressed: launchWhatsApp,
                                  child: Text("HIRE ME",
                                      style: PageRegularBlack.nameofTextStyle),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),

                  //4th Image of Slider
                  FlipCard(
                      rotateSide: RotateSide.left,
                      onTapFlipping:
                          true, //When enabled, the card will flip automatically when touched.
                      axis: FlipAxis.vertical,
                      controller: controller,
                      frontWidget: Center(
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            height: 300,
                            width: 300,
                            child: Frosted(
                                theChild: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 140,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/icons/uiux.png"))),
                                      ),
                                      const SizedBox(
                                        height: 35,
                                      ),
                                      Center(
                                        child: Text(
                                          "UI/UX",
                                          style: PageRegular.nameofTextStyle,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                theWidth: 300.0,
                                theheight: 300)),
                      ),
                      backWidget: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white),
                        height: 300,
                        width: 300,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  "Basic understanding of user-centered design principles.Ability to create wireframes and prototypes.",
                                  style: PageRegularBlack.nameofTextStyle,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                MaterialButton(
                                  color: Colors.greenAccent.shade200,
                                  onPressed: launchWhatsApp,
                                  child: Text("HIRE ME",
                                      style: PageRegularBlack.nameofTextStyle),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),

                  //5th Image of Slider
                  FlipCard(
                      rotateSide: RotateSide.left,
                      onTapFlipping:
                          true, //When enabled, the card will flip automatically when touched.
                      axis: FlipAxis.vertical,
                      controller: controller,
                      frontWidget: Center(
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            height: 300,
                            width: 300,
                            child: Frosted(
                                theChild: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 140,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/icons/rapid.png"))),
                                      ),
                                      const SizedBox(
                                        height: 35,
                                      ),
                                      Center(
                                        child: Text(
                                          "Rapid Prototyping",
                                          style: PageRegular.nameofTextStyle,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                theWidth: 300.0,
                                theheight: 300)),
                      ),
                      backWidget: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white),
                        height: 300,
                        width: 300,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  "Tailoring prototypes to specific needs in faster time",
                                  style: PageRegularBlack.nameofTextStyle,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                MaterialButton(
                                  color: Colors.greenAccent.shade200,
                                  onPressed: launchWhatsApp,
                                  child: const Text("HIRE ME",
                                      style: TextStyle(
                                          fontFamily: 'Space Mono',
                                          fontSize: 15,
                                          color: Colors.black)),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                ],

                //Slider Container properties
                options: CarouselOptions(
                    height: 250.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
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

  Widget Desktopservicescontainer() {
    launchWhatsApp() async {
      const link = WhatsAppUnilink(
        phoneNumber: '+ 91 9493994613',
        text: "Hey! I'm inquiring about the Project",
      );
      await launch('$link');
    }

    return SizedBox(
        height: 650,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            textAlign: TextAlign.center,
            "What Actually I Love to do ?",
            style: PageMainheading.nameOfTextStyle,
          ),
          Text(
            textAlign: TextAlign.center,
            "I do the things which I like",
            style: PageRegular.nameofTextStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            //Container 1

            FlipCard(
                rotateSide: RotateSide.left,
                onTapFlipping:
                    true, //When enabled, the card will flip automatically when touched.
                axis: FlipAxis.vertical,
                controller: controller,
                frontWidget: Center(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: 250,
                      width: 250,
                      child: Frosted(
                          theChild: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 120,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/icons/webdev.png"))),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Center(
                                  child: Text(
                                    "Web development",
                                    style: PageRegular.nameofTextStyle,
                                  ),
                                )
                              ],
                            ),
                          ),
                          theWidth: 250.0,
                          theheight: 250)),
                ),
                backWidget: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white),
                  height: 250,
                  width: 250,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            " Proficient in creating clean and semantic HTML markup. Skilled at using CSS to style websites, implementing fonts, colors, and layouts.",
                            style: PageRegularBlack.nameofTextStyle,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          MaterialButton(
                              color: Colors.greenAccent.shade200,
                              onPressed: launchWhatsApp,
                              child: Text(
                                "HIRE ME",
                                style: PageRegularBlack.nameofTextStyle,
                              ))
                        ],
                      ),
                    ),
                  ),
                )),

            //container 2
            const SizedBox(width: 16.0),
            FlipCard(
                rotateSide: RotateSide.left,
                onTapFlipping:
                    true, //When enabled, the card will flip automatically when touched.
                axis: FlipAxis.vertical,
                controller: controller,
                frontWidget: Center(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: 250,
                      width: 250,
                      child: Frosted(
                          theChild: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 120,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/icons/mobiledevelopment.png"))),
                                ),
                                const SizedBox(
                                  height: 35,
                                ),
                                Center(
                                  child: Text(
                                    "Mobile development",
                                    style: PageRegular.nameofTextStyle,
                                  ),
                                )
                              ],
                            ),
                          ),
                          theWidth: 250.0,
                          theheight: 250)),
                ),
                backWidget: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white),
                  height: 250,
                  width: 250,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            "Proficient in building cross-platform mobile applications with Flutter, harnessing its expressive UI components and powerful features.",
                            style: PageRegularBlack.nameofTextStyle,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          MaterialButton(
                            color: Colors.greenAccent.shade200,
                            onPressed: launchWhatsApp,
                            child: Text("HIRE ME",
                                style: PageRegularBlack.nameofTextStyle),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
            const SizedBox(width: 16.0),

            //container 3
            FlipCard(
                rotateSide: RotateSide.left,
                onTapFlipping:
                    true, //When enabled, the card will flip automatically when touched.
                axis: FlipAxis.vertical,
                controller: controller,
                frontWidget: Center(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: 250,
                      width: 250,
                      child: Frosted(
                          theChild: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 120,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/icons/blogging.png"))),
                                ),
                                const SizedBox(
                                  height: 35,
                                ),
                                Center(
                                  child: Text(
                                    "Content writing",
                                    style: PageRegular.nameofTextStyle,
                                  ),
                                )
                              ],
                            ),
                          ),
                          theWidth: 250.0,
                          theheight: 250)),
                ),
                backWidget: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white),
                  height: 250,
                  width: 250,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            "Blog Articles,product description,social media content and technical writing much more..",
                            style: PageRegularBlack.nameofTextStyle,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          MaterialButton(
                            color: Colors.greenAccent.shade200,
                            onPressed: launchWhatsApp,
                            child: Text("HIRE ME",
                                style: PageRegularBlack.nameofTextStyle),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
          ]),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //container 4
                FlipCard(
                    rotateSide: RotateSide.left,
                    onTapFlipping:
                        true, //When enabled, the card will flip automatically when touched.
                    axis: FlipAxis.vertical,
                    controller: controller,
                    frontWidget: Center(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          height: 250,
                          width: 250,
                          child: Frosted(
                              theChild: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 120,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/icons/uiux.png"))),
                                    ),
                                    const SizedBox(
                                      height: 35,
                                    ),
                                    Center(
                                      child: Text(
                                        "UI/UX",
                                        style: PageRegular.nameofTextStyle,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              theWidth: 250.0,
                              theheight: 250)),
                    ),
                    backWidget: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white),
                      height: 250,
                      width: 250,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                textAlign: TextAlign.center,
                                "Basic understanding of user-centered design principles.Ability to create wireframes and prototypes.",
                                style: PageRegularBlack.nameofTextStyle,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              MaterialButton(
                                color: Colors.greenAccent.shade200,
                                onPressed: launchWhatsApp,
                                child: Text("HIRE ME",
                                    style: PageRegularBlack.nameofTextStyle),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
                const SizedBox(
                  width: 16,
                ),

                //container 5

                FlipCard(
                    rotateSide: RotateSide.left,
                    onTapFlipping:
                        true, //When enabled, the card will flip automatically when touched.
                    axis: FlipAxis.vertical,
                    controller: controller,
                    frontWidget: Center(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          height: 250,
                          width: 250,
                          child: Frosted(
                              theChild: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 120,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/icons/rapid.png"))),
                                    ),
                                    const SizedBox(
                                      height: 35,
                                    ),
                                    Center(
                                      child: Text(
                                        "Rapid Prototyping",
                                        style: PageRegular.nameofTextStyle,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              theWidth: 250.0,
                              theheight: 250)),
                    ),
                    backWidget: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white),
                      height: 250,
                      width: 250,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                textAlign: TextAlign.center,
                                "Tailoring prototypes to specific needs in faster time",
                                style: PageRegularBlack.nameofTextStyle,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              MaterialButton(
                                color: Colors.greenAccent.shade200,
                                onPressed: launchWhatsApp,
                                child: const Text("HIRE ME",
                                    style: TextStyle(
                                        fontFamily: 'Space Mono',
                                        fontSize: 15,
                                        color: Colors.black)),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          )
        ]));
  }
}
