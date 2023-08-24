import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:socialsquad/features/auth/presentation/providers/auth_locator_service.dart';
import 'package:socialsquad/features/auth/usecases/auth_usecases/auth_change_nextButton.dart';
import 'package:socialsquad/features/auth/usecases/auth_usecases/auth_change_nextButton_impl.dart';

class AuthLocator implements ServiceAuthLocator {
  @override
  ChangeButton colorUseCase = ChangeNextButton();
  @override
  late final StateProvider<Color> color =
      StateProvider<Color>((ref) => colorUseCase.buttonColor);
}
