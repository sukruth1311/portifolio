import 'package:flutter/material.dart';
import 'package:sukruthportfolio/models/string_images.dart';

import 'package:url_launcher/url_launcher.dart';

class UrlTesting extends StatelessWidget {
  const UrlTesting({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        HoverIconButton(
          image: MyIcons.linkedin,
          url: 'https://www.linkedin.com/in/bairi-sukruth/',
        ),
        SizedBox(
          width: 5,
        ),
        HoverIconButton(
          image: MyIcons.face,
          url: '',
        ),
        SizedBox(
          width: 5,
        ),
        HoverIconButton(
          image: MyIcons.x,
          url: '',
        ),
        SizedBox(
          width: 5,
        ),
        HoverIconButton(
          image: MyIcons.insta,
          url: '',
        ),
        SizedBox(
          width: 5,
        ),
        HoverIconButton(
          image: MyIcons.github,
          url: 'https://github.com/sukruth1311',
        ),
      ],
    );
  }
}

class HoverIconButton extends StatefulWidget {
  final String image;
  final String url;

  const HoverIconButton({super.key, required this.image, required this.url});

  @override
  _HoverIconButtonState createState() => _HoverIconButtonState();
}

class _HoverIconButtonState extends State<HoverIconButton> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: ElevatedButton(
          onPressed: () {
            // Launch the specified URL
            launch(widget.url);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: isHovering
                ? Colors.greenAccent
                : const Color.fromRGBO(46, 51, 45, 1.0),
            shape: const CircleBorder(),
            minimumSize: const Size(56, 56),
          ),
          child: Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.image),
              ),
            ),
          )),
    );
  }
}

/* MOBILE */

class UrlTestingMobile extends StatelessWidget {
  const UrlTestingMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        HoverIconButtonM(
          image: MyIcons.linkedin,
          url: 'https://www.linkedin.com/in/bairi-sukruth/',
        ),
        SizedBox(
          width: 2,
        ),
        // HoverIconButtonM(
        //   image: MyIcons.face,
        //   url: 'https://example.com/facebook',
        // ),
        // const SizedBox(
        //   width: 2,
        // ),
        HoverIconButtonM(
          image: MyIcons.x,
          url: '',
        ),
        SizedBox(
          width: 2,
        ),
        HoverIconButtonM(
          image: MyIcons.insta,
          url: '',
        ),
        SizedBox(
          width: 2,
        ),
        HoverIconButtonM(
          image: MyIcons.github,
          url: 'https://github.com/sukruth1311',
        ),
      ],
    );
  }
}

class HoverIconButtonM extends StatefulWidget {
  final String image;
  final String url;

  const HoverIconButtonM({super.key, required this.image, required this.url});

  @override
  _HoverIconButtonMState createState() => _HoverIconButtonMState();
}

class _HoverIconButtonMState extends State<HoverIconButtonM> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: ElevatedButton(
          onPressed: () {
            // Launch the specified URL
            launch(widget.url);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: isHovering
                ? Colors.greenAccent
                : const Color.fromRGBO(46, 51, 45, 1.0),
            shape: const CircleBorder(),
            // minimumSize: Size(56, 56),
          ),
          child: Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.image),
              ),
            ),
          )),
    );
  }
}
