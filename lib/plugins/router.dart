import 'package:go_router/go_router.dart';
import 'package:mobile_starter_kit/screens/detail_screen.dart';
import 'package:mobile_starter_kit/screens/home_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: "/detail",
      builder: (context, state) => const DetailScreen(),
    )
  ],
);
