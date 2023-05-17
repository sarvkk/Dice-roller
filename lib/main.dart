import 'package:diceproj/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Dice());
}

class Dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
