import 'package:flutter/material.dart';

class FeatureEpic extends StatelessWidget {
  const FeatureEpic({super.key});
  static String name = 'epic';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Epic')),
    );
  }
}
