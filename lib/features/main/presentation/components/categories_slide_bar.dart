import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialsquad/core/theme/theme.dart';
import 'package:socialsquad/features/main/presentation/providers/categories_active_slide_bar.dart';

class CategoriesSlideBar extends ConsumerStatefulWidget {
  const CategoriesSlideBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CategoriesSlideBarState();
}

class _CategoriesSlideBarState extends ConsumerState<CategoriesSlideBar> {
  @override
  Widget build(BuildContext context) {
    const List<String> items = [
      "Все",
      "Концерты",
      "Театр",
      "Спорт",
      "Кино",
      "Бар",
      "StandUP"
    ];
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          ref.watch(active.notifier).useAction(index);
        },
        child: Padding(
          padding:
              EdgeInsets.fromLTRB(0, 0, size.height * Const.ratioH * 25, 0),
          child: ref.read(active) == index
              ? Text(
                  items[index],
                  style: Const.fontSize16,
                )
              : Text(items[index], style: Const.fontSize14),
        ),
      ),
    );
  }
}
