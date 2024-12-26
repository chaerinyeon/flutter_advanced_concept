import 'package:flutter/material.dart';
import 'package:hero/heor_example.dart';

void main() => runApp(const HeroExampleApp());

class HeroExampleApp extends StatelessWidget {
  const HeroExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AnimatedContainer Sample')),
        body: const HeroExample(),
      ),
    );
  }
}
