import 'package:app_1/HomeScreen.dart';
import 'package:app_1/PLayScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const HomeScreen(),
        "pathToPlayScreen": (context) => const PlayScreen(),
      },
    );
  }
}
