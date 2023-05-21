import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialsquad/core/l10n/all_locale.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:socialsquad/core/domain/providers/app_locator.dart';
import 'package:socialsquad/core/domain/providers/service_locator.dart';
import 'package:socialsquad/core/router/router.dart';
import 'package:socialsquad/core/theme/theme.dart';

late final ServiceLocator serviceLocator;
void main() {
  serviceLocator = AppLocator();
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
      title: 'Flutter Demo',
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

// class StartScreen extends ConsumerStatefulWidget {
//   const StartScreen({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _StartScreenState();
// }

// class _StartScreenState extends ConsumerState<StartScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final l10n = AppLocalizations.of(context);
//     final settingsProvider = ref.watch(serviceLocator.settingsProvider);
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(l10n.appName),
//       ),
//       body: Column(
//         children: [
//           Text(
//             l10n.codeSendOnPhoneNumber("+7(918)991-83-10"),
//             style: Const.fontSize10,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               FloatingActionButton(
//                 child: Text(l10n.l10n),
//                 onPressed: () {
//                   ref
//                       .read(serviceLocator.settingsProvider.notifier)
//                       .changeLocale(settingsProvider.locale);
//                 },
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
