import 'package:flutter/material.dart';
import 'package:socialsquad/features/auth/usecases/auth_usecases/auth_change_nextButton.dart';
import 'package:socialsquad/core/theme/theme.dart';

class ChangeNextButton extends ChangeButton {
  @override
  Color buttonActiveColor = Const.white;
  @override
  Color buttonColor = Const.disabledText;
}
