import 'package:flutter/material.dart';
import 'package:sebha/main_screen.dart';
import 'package:sebha/radio.dart';
import 'package:sebha/sebha.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
