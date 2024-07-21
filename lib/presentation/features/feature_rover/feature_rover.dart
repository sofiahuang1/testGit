import 'package:flutter/material.dart';

class FeatureRover extends StatelessWidget {
  const FeatureRover({super.key});
  static String name = 'rover';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Rover')),
    );
  }
}
