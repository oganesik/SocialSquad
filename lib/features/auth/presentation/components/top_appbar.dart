import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialsquad/core/router/router.dart';
import 'package:socialsquad/core/theme/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialsquad/features/auth/presentation/auth_screen.dart';
import 'package:socialsquad/main.dart';
import 'package:go_router/go_router.dart';

class TopAppBar extends ConsumerWidget {
  String textCenter;
  String? textRight;
  Color colorRightText;
  String? nextPage;

  TopAppBar(
      {super.key,
      required this.textCenter,
      this.textRight,
      this.nextPage,
      required this.colorRightText});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    final color = ref.watch(colors.color);

    return Row(
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).pop();
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(Const.margin5,
                    size.height * Const.ratioH * 20, Const.margin5, 0),
                child: SvgPicture.asset(
                  "assets/icons/Vector.svg",
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding:
                  EdgeInsets.fromLTRB(0, size.height * Const.ratioH * 20, 0, 0),
              child: Text(
                textCenter,
                style: Const.fontSize16,
              ),
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                color == colors.colorUseCase.buttonActiveColor &&
                        nextPage != null
                    ? GoRouter.of(context).push(nextPage!)
                    : null;
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(Const.margin5,
                    size.height * Const.ratioH * 20, Const.margin5, 0),
                child: Text(
                  textRight ?? "",
                  style: Const.fontSize16.copyWith(color: colorRightText),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
