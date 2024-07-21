import 'package:go_router/go_router.dart';
import 'package:test_git/presentation/features/home/home_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
      routes: const [],
    ),
  ],
);
