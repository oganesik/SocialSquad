import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialsquad/core/l10n/all_locale.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final localeProvider = StateProvider((ref) => 0);
void main() {
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
    final localeIndex = ref.watch(localeProvider);
    return MaterialApp(
      locale: AppLocalizations.supportedLocales[localeIndex],
      title: 'Flutter Demo',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AllLocale.all,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const Start(),
    );
  }
}

class Start extends ConsumerStatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  ConsumerState<Start> createState() => _StartState();
}

class _StartState extends ConsumerState<Start> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(l10n.appName),
      ),
      body: Column(
        children: [
          Text(l10n.codeSendOnPhoneNumber("+7(918)991-83-10")),
          Row(
            children: [
              FloatingActionButton(
                child: const Text("EN"),
                onPressed: () {
                  ref.read(localeProvider.notifier).update((state) => 0);
                },
              ),
              FloatingActionButton(
                backgroundColor: Colors.red,
                child: const Text("RU"),
                onPressed: () {
                  ref.read(localeProvider.notifier).update((state) => 1);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
