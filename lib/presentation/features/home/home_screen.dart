import 'package:flutter/material.dart';
import 'package:test_git/presentation/features/feature_epic/feature_epic.dart';
import 'package:test_git/presentation/features/feature_rover/feature_rover.dart';
import 'package:test_git/presentation/features/home/home_content.dart';
import 'package:test_git/presentation/widgets/custom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(_selectedIndex),
      bottomNavigationBar: CustomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return const HomeContent();
      case 1:
        return const FeatureEpic();
      case 2:
        return const FeatureRover();
      default:
        return Container();
    }
  }
}
