import 'package:flutter/material.dart';
import 'package:prototype/screens/main_screen_new.dart';
import 'package:prototype/screens/quiz_answer.dart';
import 'package:prototype/screens/quiz_reward.dart';
import 'package:prototype/screens/quiz_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: const MainServiceNew(),
    );
  }
}
