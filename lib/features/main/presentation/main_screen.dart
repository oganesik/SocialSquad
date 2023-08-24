import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialsquad/core/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialsquad/features/main/presentation/components/categories_slide_bar.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.fromLTRB(16, size.height * Const.ratioH * 57, 0, 0),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: SvgPicture.asset("assets/icons/marker.svg"),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                  child: Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text("Краснодар", style: Const.fontSize16),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: SvgPicture.asset("assets/icons/look.svg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      3, 0, size.width * Const.ratioW * 15, 0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: SvgPicture.asset("assets/icons/settings.svg"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, size.height * Const.ratioH * 35, 0,
                size.height * Const.ratioH * 15),
            child: Container(
              height: size.height * Const.ratioH * 27,
              child: CategoriesSlideBar(),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Const.darkBackground,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(26))),
            ),
          )
        ],
      ),
    );
  }
}
