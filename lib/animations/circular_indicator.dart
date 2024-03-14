import 'package:flutter/material.dart';

class CircularProgressInicator {
  CircularProgressIndicator circularProgressIndicator =
      const CircularProgressIndicator(
    value: 0.50,
    backgroundColor: Colors.grey,
    valueColor: AlwaysStoppedAnimation(Colors.yellow),
  );
}
