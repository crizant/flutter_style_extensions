import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_style_extensions/flutter_style_extensions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: const Text("Welcome to Flutter")
          .margin(const EdgeInsets.all(8.0))
          .backgroundColor(Colors.yellow)
          .opacity(0.8)
          .rotate(math.pi / 2)
          .center(),
    );
  }
}
