import 'package:flutter/material.dart';

// RESUME
ButtonStyle borderedButtonStyle = ButtonStyle(
    elevation: MaterialStateProperty.all(0),
    backgroundColor: MaterialStateProperty.all(Colors.white),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
      side: const BorderSide(color: Colors.black),
      borderRadius: BorderRadius.circular(10),
    )));

//Projects techstack containers

Container container = Container(
  height: 30,
  width: 100,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20), color: Colors.black),
  child: const Text(""),
);
