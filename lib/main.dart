import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialsquad/core/l10n/all_locale.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:socialsquad/core/domain/providers/app_locator.dart';
import 'package:socialsquad/core/domain/providers/service_locator.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:socialsquad/core/router/router.dart';

import 'package:go_router/go_router.dart';
import 'package:socialsquad/features/auth/presentation/providers/auth_locator.dart';

import 'features/auth/presentation/providers/auth_locator_service.dart';
final ServiceAuthLocator colors = AuthLocator();
final ServiceLocator serviceLocator = AppLocator();
void main() {
  serviceLocator.init();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(serviceLocator.settingsProvider);

    return MaterialApp.router(

      locale: state.locale,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AllLocale.all,
      theme: state.theme,
      routerConfig: AppRouter.router,
    );
  }
}

