import 'package:flutter/material.dart';
import 'package:kisukinen/theme/color.dart';

class Child extends StatelessWidget {
  const Child({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColor.white,
      body: Center(child: Text("Child"),),
    );
  }
}