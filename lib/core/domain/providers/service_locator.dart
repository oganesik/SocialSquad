import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:socialsquad/core/domain/states/settings_state.dart';
import 'package:socialsquad/core/domain/states/settings_notifier.dart';
import 'package:go_router/go_router.dart';


abstract class ServiceLocator {
  // abstract final StateNotifierProvider<AuthenticationStateNotifier, AuthenticationState> authenticationStateNotifier;

  abstract final StateNotifierProvider<SettingsStateNotifier, SettingsState>
      settingsProvider;

  Future<void> init();
}
