import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialsquad/core/theme/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:socialsquad/core/ui/components/numberTextField/custom_line_container.dart';
import 'package:socialsquad/core/ui/components/numberTextField/numberTextField.dart';

class NumberAuthBody extends ConsumerWidget {
  const NumberAuthBody({super.key});

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
            l10n.yourPhoneNumber,
            style: Const.fontSize16,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
              Const.margin5, size.height * Const.ratioH * 20, 0, 0),
          child: SizedBox(
            width: size.width * Const.ratioW * 160,
            child: CustomTextField(),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(Const.margin5, 1, 0, 0),
          child: CustomBottomLine(),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
              Const.margin5,
              size.height * Const.ratioH * 9,
              size.height * Const.ratioW * 40,
              0),
          child: Text(
            l10n.descriptionPhoneNumberField,
            style: Const.fontSize15,
          ),
        )
      ],
    );
  }
}
