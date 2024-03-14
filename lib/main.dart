import 'package:flutter/material.dart';

import 'package:sukruthportfolio/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SUKRUTH NETHA',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
            fontFamily: 'Space Mono',
            bodyColor: Colors.white,
            displayColor: Colors.white),
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: Colors.white,
          labelStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent),
          ),
          errorStyle: TextStyle(color: Colors.red),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: sukruthnetha(),
      ),
    );
  }
}
