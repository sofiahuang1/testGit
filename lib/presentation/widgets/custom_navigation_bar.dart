import 'package:flutter/material.dart';
import 'package:test_git/app/constants/app_colors.dart';

class CustomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: AppColors.primary,
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      selectedIndex: selectedIndex,
      onDestinationSelected: onItemTapped,
      destinations: const <Widget>[
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.star_rate),
          label: 'Epic',
        ),
        NavigationDestination(
          icon: Icon(Icons.rocket),
          label: 'Rover',
        ),
      ],
    );
  }
}
