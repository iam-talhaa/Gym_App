import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/screens/purchase.dart';
import 'package:fitness_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Gym_app());
}

class Gym_app extends StatefulWidget {
  const Gym_app({super.key});

  @override
  State<Gym_app> createState() => _Gym_appState();
}

class _Gym_appState extends State<Gym_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: purchase_screen(),
    );
  }
}
