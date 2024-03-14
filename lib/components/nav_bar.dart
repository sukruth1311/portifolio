import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:sukruthportfolio/models/button_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final dataKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MobileNavBar(),
      desktop: (BuildContext context) => DeskTopNavBar(),
    );
  }
}

Widget MobileNavBar() {
  return Container(
    color: const Color.fromRGBO(46, 51, 45, 1.0),
    height: 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.menu),
        // ),
        navLogoM(),
      ],
    ),
  );
}

Widget DeskTopNavBar() {
  Future<void> launchURL() async {
    const url =
        'https://docs.google.com/document/d/1BC6fhyZL3kOw4lY7xJVhwQIxxJ4JSjVZ/edit?usp=sharing&ouid=105224331206786233948&rtpof=true&sd=true';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  return Container(
    color: Colors.white,
    // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        navLogo(),
        Row(
          children: [
            GestureDetector(
                onTap: () {}, child: Container(child: navButton('Home'))),
            navButton('About me'),
            navButton('Skills'),
            navButton('Projects'),
            navButton('Services'),
            navButton('Contact'),
            // TextButton(
            //   child: Text('Home'),
            //   onPressed: () {
            //     // Navigate to Button 1 page
            //   },
            // ),
            // TextButton(
            //   child: Text(' About'),
            //   onPressed: () {
            //     // Navigate to Button 2 page
            //     Scrollable.ensureVisible(key2.currentContext!);
            //   },
            // ),
            // TextButton(
            //   child: Text('Button 3'),
            //   onPressed: () {
            //     // Navigate to Button 3 page
            //     Scrollable.ensureVisible(key1.currentContext!);
            //   },
            // ),
            // TextButton(
            //   child: Text('Button 4'),
            //   onPressed: () {
            //     // Navigate to Button 4 page
            //   },
            // ),
            // TextButton(
            //   child: Text('Button 5'),
            //   onPressed: () {
            //     // Navigate to Button 5 page
            //   },
            // ),
            // TextButton(
            //   child: Text('Button 6'),
            //   onPressed: () {
            //     // Navigate to Button 6 page
            //   },
            // ),
          ],
        ),
        SizedBox(
          height: 45,
          child: ElevatedButton(
              style: borderedButtonStyle,
              onPressed: launchURL,
              child: const Text(
                'Resume',
                style: TextStyle(color: Colors.black),
              )),
        )
      ],
    ),
  );
}

Widget navButton(String text) {
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
          onPressed: () {},
          child: Text(text,
              style: const TextStyle(color: Colors.black, fontSize: 18))));
}

Widget navLogo() {
  return Center(
    child: Container(
      width: 200,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/sigdesktop.png"),
              fit: BoxFit.contain)),
    ),
  );
}

Widget navLogoM() {
  return Center(
    child: Container(
      width: 200,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/sigmobile.png"),
              fit: BoxFit.contain)),
    ),
  );
}
