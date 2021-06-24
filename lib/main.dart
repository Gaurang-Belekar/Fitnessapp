import 'package:fitness_app/Pages/HomeScreen.dart';
import 'package:fitness_app/Pages/Start.dart';
import "package:flutter/material.dart";
import 'package:fitness_app/Pages/onBourding.dart';
import './services/navigation_sevices.dart';
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        navigatorKey: NavigationService.instance.navigatorKey,
      home : startPage(),
      routes: {
        "onBourding": (BuildContext _context) => onbordingscreen(),
        "Start": (BuildContext _context) => startPage(),

      },
    );
      }
}
