import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/grid_screen.dart';
import 'package:tic_tac_toe/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Tic-Tac-Toe-Flutter-Festival', home: StartScreen());
  }
}
