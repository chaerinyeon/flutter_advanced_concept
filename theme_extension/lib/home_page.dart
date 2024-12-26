import 'package:flutter/material.dart';
import 'package:theme_extension/app_theme_extension.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            height: 100,
            color: context.appColor.main,
          ),
          Container(
            height: 100,
            color: context.appColor.mainLight,
          ),
          Container(
            height: 100,
            color: context.appColor.sub,
          ),
        ],
      ),
    );
  }
}
