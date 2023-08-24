
import 'package:flutter/material.dart';
import 'package:socialsquad/core/theme/theme.dart';

class CustomBottomLine extends StatelessWidget {
  const CustomBottomLine({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Const.phiol,
        borderRadius: BorderRadius.circular(12),
      ),
      width: size.width * Const.ratioW * 160,
      height: 3,
    );
  }
}