import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final bool isPast;
  final child;
  const EventCard({super.key, required this.child, required this.isPast});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(20),
      // decoration: BoxDecoration(
      //     color: isPast ? Colors.deepPurple[300] : Colors.deepPurple[100],
      //     borderRadius: BorderRadius.circular(8)),
      child: child,
    );
  }
}
