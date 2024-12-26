import 'package:animated_positioned/animated_positioned_example.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AnimatedPositionedExampleApp());

class AnimatedPositionedExampleApp extends StatelessWidget {
  const AnimatedPositionedExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AnimatedContainer Sample')),
        body: const AnimatedPositionedExample(),
      ),
    );
  }
}
