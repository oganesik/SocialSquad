import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:socialsquad/core/domain/providers/app_locator.dart';
import 'package:socialsquad/core/router/screens.dart';
import 'package:socialsquad/core/theme/theme.dart';
import 'package:go_router/go_router.dart';

class StartScreen extends ConsumerStatefulWidget {
  const StartScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StartScreenState();
}

class _StartScreenState extends ConsumerState<StartScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final settingsProvider = ref.watch(serviceLocator.settingsProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(l10n.appName),
      ),
      body: Column(
        children: [
          Text(
            l10n.codeSendOnPhoneNumber("+7(918)991-83-10"),
            style: Const.fontSize10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                child: Text(l10n.l10n),
                onPressed: () {
                  ref
                      .read(serviceLocator.settingsProvider.notifier)
                      .changeLocale(settingsProvider.locale);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
