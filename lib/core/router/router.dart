// ignore: depend_on_referenced_packages
import 'package:go_router/go_router.dart';
import 'package:socialsquad/core/router/routes.dart';
import 'package:socialsquad/core/router/screens.dart';

class AppRouter {
  static final router = GoRouter(debugLogDiagnostics: true, routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.splash.name,
      builder: (context, state) => const SplashScreenScreen(),
    ),
    GoRoute(
      path: '/${AppRoutes.auth.name}',
      name: AppRoutes.auth.name,
      builder: (context, state) => const AuthScreen(),
    ),
    GoRoute(
      path: '/${AppRoutes.test.name}',
      name: AppRoutes.test.name,
      builder: (context, state) => const StartScreen(),
    ),
  ]);
}
