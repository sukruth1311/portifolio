import 'package:flutter/material.dart';

class TechStack extends StatelessWidget {
  final String text;
  const TechStack({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.black),
      child: Text(
        text,
      ),
    );
  }
}
