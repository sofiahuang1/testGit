import 'package:flutter/material.dart';
import 'package:test_git/app/constants/app_constants.dart';

import 'app/routes/app_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConstants.appName,
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
