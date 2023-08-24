import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:socialsquad/core/theme/theme.dart';
import 'package:go_router/go_router.dart';

class PinCodeWidget extends StatelessWidget {
  const PinCodeWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      onCompleted: (value) {
        GoRouter.of(context).push("/signup");
      },
      autoDismissKeyboard: false,
      mainAxisAlignment: MainAxisAlignment.start,
      length: 6,
      onChanged: (value) {},
      appContext: context,
      enableActiveFill: true,
      autoFocus: true,
      cursorWidth: 1,
      cursorHeight: Const.ratioW * size.width * 20,
      showCursor: false,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      keyboardType: TextInputType.phone,
      cursorColor: Const.white,
      textStyle: Const.fontSize24,
      animationType: AnimationType.none,
      pinTheme: PinTheme(
        fieldOuterPadding:
            EdgeInsets.fromLTRB(0, 0, Const.ratioW * size.width * 14, 0),
        inactiveColor: Const.phiol,
        inactiveFillColor: Const.phiol,
        selectedFillColor: Const.phiol,
        selectedColor: Const.phiol,
        activeFillColor: Const.phiol,
        activeColor: Const.phiol,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(12),
        fieldHeight: Const.ratioW * size.width * 40,
        fieldWidth: Const.ratioW * size.width * 40,
      ),
    );
  }
}
