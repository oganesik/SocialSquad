import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:socialsquad/core/theme/theme.dart';

import 'package:socialsquad/features/auth/presentation/components/code_body.dart';
import 'package:socialsquad/features/auth/presentation/components/nickname.dart';
import 'package:socialsquad/features/auth/presentation/components/number_body.dart';
import 'package:socialsquad/features/auth/presentation/components/top_appbar.dart';

import 'package:socialsquad/main.dart';

class AuthScreen extends ConsumerStatefulWidget {
  String textCenter = "enterCode";
  String? textRight;
  String? nextPage;
  String currentPage = "code/auth";

  AuthScreen(
      {required this.textCenter,
      this.textRight,
      required this.nextPage,
      required this.currentPage,
      super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthScreenState();
}

class _AuthScreenState extends ConsumerState<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final color = ref.watch(colors.color);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Const.darkBackground,
        body: Column(
          children: [
            TopAppBar(
              textCenter: widget.textCenter,
              textRight: widget.textRight,
              nextPage: widget.nextPage,
              colorRightText: color,
            ),
            conditionalWidget(widget.currentPage),
          ],
        ),
      ),
    );
  }
}

Widget conditionalWidget(String currentPage) {
  switch (currentPage) {
    case '/auth':
      return const NumberAuthBody();
    case '/code':
      return const CodeAuthBody();
    case '/signup':
      return const GetNickName();
    // case 3:
    //   return Text("three widget");
    default:
      return const Text("HELLO MOTHEFUCKER");
  }
}
