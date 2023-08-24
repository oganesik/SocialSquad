import 'package:flutter/material.dart';
import 'package:socialsquad/core/theme/theme.dart';
import 'package:socialsquad/core/ui/maskconst.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialsquad/main.dart';

class CustomTextField extends ConsumerWidget {
  CustomTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void nextCollor(value) {
      if (value.length == 18) {
        ref
            .read(colors.color.notifier)
            .update((state) => colors.colorUseCase.buttonActiveColor);
      } else {
        ref
            .read(colors.color.notifier)
            .update((state) => colors.colorUseCase.buttonColor);
      }
    }

    return TextFormField(
      onChanged: (value) {
        nextCollor(value);
      },
      keyboardType: TextInputType.number,
      inputFormatters: [
        MaskConst.maskNumberField,
      ],
      enableInteractiveSelection: false,
      autofocus: true,
      showCursor: false,
      decoration: InputDecoration(
        hintText: "+7",
        hintStyle: Const.fontSize16.copyWith(color: Const.white),
        contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
        isDense: true,
        border: InputBorder.none,
        counterText: "",
      ),
    );
  }
}
