import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sukruthportfolio/components/about_container.dart';
import 'package:sukruthportfolio/components/arrow.dart';
import 'package:sukruthportfolio/components/contact.dart';
import 'package:sukruthportfolio/components/home_container.dart';
import 'package:sukruthportfolio/components/myskill_container.dart';
import 'package:sukruthportfolio/components/mystories_container.dart';
import 'package:sukruthportfolio/components/mystory2.dart';
import 'package:sukruthportfolio/components/nav_bar.dart';
import 'package:sukruthportfolio/components/projects_container.dart';
import 'package:sukruthportfolio/components/services.dart';

import 'package:sukruthportfolio/constants/constants.dart';
import 'package:sukruthportfolio/models/text_styles.dart';

class sukruthnetha extends StatelessWidget {
  const sukruthnetha({super.key});

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Container(
      color: const Color.fromRGBO(46, 51, 45, 1.0),
      child: Column(
        children: [
          const NavBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const HomeContainer(),
                  const AboutContainer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "My Stories...",
                        style: PageStory.nameOfTextStyle,
                      ),
                      Container(
                        height: 70,
                        width: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/icons/star.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const MyStories(),
                  const Arrow(),
                  const Story1(),
                  const MySkill(),
                  const Services(),
                  const MyProjects(),
                  ContactPage(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
