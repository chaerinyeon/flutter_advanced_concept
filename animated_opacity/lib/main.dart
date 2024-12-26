import 'package:animated_opacity/animated_opacity_example.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [AnimatedOpacityExample].

void main() => runApp(AnimatedOpacityExampleApp());

class AnimatedOpacityExampleApp extends StatelessWidget {
  const AnimatedOpacityExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AnimatedOpacity Sample')),
        body: const AnimatedOpacityExample(),
      ),
    );
  }
}
