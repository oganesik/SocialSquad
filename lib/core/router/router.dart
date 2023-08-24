// ignore: depend_on_referenced_packages

import 'package:go_router/go_router.dart';
import 'package:socialsquad/core/router/routes.dart';
import 'package:socialsquad/core/router/screens.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:socialsquad/features/main/presentation/main_screen.dart';

class AppRouter {
  static final router = GoRouter(debugLogDiagnostics: true, routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.auth.name,
      builder: (context, state) => AuthScreen(
          textCenter: AppLocalizations.of(context).phoneNumber,
          textRight: AppLocalizations.of(context).nextButtonText,
          nextPage: "/code",
          currentPage: "/auth"),
    ),
    GoRoute(
      path: '/${AppRoutes.code.name}',
      name: AppRoutes.code.name,
      builder: (context, state) => AuthScreen(
        textCenter: AppLocalizations.of(context).acceptPhoneNumber,
        currentPage: "/code",
        textRight: null,
        nextPage: null,
      ),
    ),
    GoRoute(
      path: '/${AppRoutes.signup.name}',
      name: AppRoutes.signup.name,
      builder: (context, state) => AuthScreen(
        textCenter: AppLocalizations.of(context).signUp,
        currentPage: "/signup",
        textRight: AppLocalizations.of(context).nextButtonText,
        nextPage: "/mainScreen",
      ),
    ),
    GoRoute(
      path: '/${AppRoutes.mainScreen.name}',
      name: AppRoutes.mainScreen.name,
      builder: (context, state) => MainScreen(),
    ),
  ]);
}
