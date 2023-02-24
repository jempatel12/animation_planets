import 'package:animation/screens/home.dart';
import 'package:animation/screens/planet_info.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'planet_info_page': (context) => const PlanetInfoPage(),
      },
    ),
  );
}