import 'package:explict_animation/explict_animation_example.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ExplictAnimationExampleApp());

class ExplictAnimationExampleApp extends StatelessWidget {
  const ExplictAnimationExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AnimatedContainer Sample')),
        body: const ExplictAnimationExample(),
      ),
    );
  }
}
