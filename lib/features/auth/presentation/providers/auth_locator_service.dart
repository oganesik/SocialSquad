import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:socialsquad/core/domain/states/settings_state.dart';
import 'package:socialsquad/core/domain/states/settings_notifier.dart';
import 'package:go_router/go_router.dart';
import 'package:socialsquad/features/auth/usecases/auth_usecases/auth_change_nextButton.dart';

abstract class ServiceAuthLocator {
  // abstract final StateNotifierProvider<AuthenticationStateNotifier, AuthenticationState> authenticationStateNotifier;
  abstract ChangeButton colorUseCase;
  abstract final StateProvider<Color> color;
}
