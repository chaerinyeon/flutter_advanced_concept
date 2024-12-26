
import 'package:animated_container/animated_container_example.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AnimatedContainerExampleApp());

class AnimatedContainerExampleApp extends StatelessWidget {
  const AnimatedContainerExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AnimatedContainer Sample')),
        body: const AnimatedContainerExample(),
      ),
    );
  }
}

