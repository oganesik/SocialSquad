import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialsquad/core/theme/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:socialsquad/core/ui/components/numberTextField/custom_line_container.dart';
import 'package:socialsquad/core/ui/components/numberTextField/numberTextField.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:socialsquad/features/auth/presentation/components/pin_code_widget.dart';

class GetNickName extends ConsumerWidget {
  const GetNickName({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    final l10n = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding:
              EdgeInsets.fromLTRB(0, size.height * Const.ratioH * 108, 0, 0),
          child: Text(
            l10n.yourNickName,
            style: Const.fontSize24,
          ),
        ),
        Padding(
          padding:
              EdgeInsets.fromLTRB(0, Const.ratioH * size.height * 44, 0, 0),
          child: TextFormField(
            textAlign: TextAlign.center,
            style: Const.fontSize24,
            onChanged: (value) {},
            onEditingComplete: () {},
            enableInteractiveSelection: false,
            autofocus: true,
            showCursor: false,
            decoration: InputDecoration(
              hintStyle: Const.fontSize16.copyWith(color: Const.white),
              contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
              isDense: true,
              border: InputBorder.none,
              counterText: "",
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
          child: CustomBottomLine(),
        ),
      ],
    );
  }
}
