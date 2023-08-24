import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialsquad/core/theme/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:socialsquad/core/ui/components/numberTextField/numberTextField.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:socialsquad/features/auth/presentation/components/pin_code_widget.dart';

class CodeAuthBody extends ConsumerWidget {
  const CodeAuthBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    final l10n = AppLocalizations.of(context);

    // final routerProvider = ref.watch(serviceLocator.routerProvider!);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              Const.margin5, size.height * Const.ratioH * 114, 0, 0),
          child: Text(
            l10n.enterCode,
            style: Const.fontSize16,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
              Const.margin5, size.height * Const.ratioH * 20, 0, 0),
          child: PinCodeWidget(size: size),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
              Const.margin5,
              size.height * Const.ratioH * 0,
              size.height * Const.ratioW * 90,
              0),
          child: Text(
            l10n.codeSendOnPhoneNumber('+7 (918) 991-83-10'),
            style: Const.fontSize15,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
              Const.margin5,
              size.height * Const.ratioH * 20,
              size.height * Const.ratioW * 40,
              0),
          child: Text(
            l10n.resendCodeVia("25"),
            style: Const.fontSize15,
          ),
        )
      ],
    );
  }
}
