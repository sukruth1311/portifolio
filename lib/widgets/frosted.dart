import 'dart:ui';

import 'package:flutter/material.dart';

class Frosted extends StatelessWidget {
  const Frosted({
    super.key,
    required this.theChild,
    required this.theWidth,
    required this.theheight,
  });

  final theWidth;
  final theheight;
  final theChild;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: theWidth,
        height: theheight,
        color: Colors.transparent,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white.withOpacity(0.13)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.15),
                        Colors.white.withOpacity(0.05)
                      ])),
            ),
            Container(
              child: theChild,
            )
          ],
        ),
      ),
    );
  }
}
