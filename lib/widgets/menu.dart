import 'package:flutter/material.dart';
import 'package:flutter_dashboard/Responsive.dart';
import 'package:flutter_dashboard/controller/navigation_controller.dart';
import 'package:flutter_dashboard/model/menu_list.dart';
import 'package:flutter_dashboard/model/menu_modal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../core/animation/animation_provider.dart';

class AppMenu extends ConsumerWidget {
  List<MenuModel> menu = menuItem;
  final GlobalKey<ScaffoldState> scaffoldKey;
  AppMenu({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selected = ref.watch(navigationProvider);
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Responsive.isMobile(context) ? 40 : 80,
            ),
            for (var i = 0; i < menu.length; i++)
              Container(
                 padding: const EdgeInsets.all(5.0),
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  color: selected == i
                      ? Colors.primaries[5]
                      : Colors.transparent,
                ),
                child: InkWell(
                  onTap: () {
                    ref.read(scaleAnimation.notifier).scaleAnimate();
                    ref.read(navigationProvider.notifier).selection(i);
                    scaffoldKey.currentState!.closeDrawer();
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 8),
                        child: SvgPicture.asset(
                          menu[i].icon,
                          height: 22,
                          width: 22,
                          color: selected == i ? Colors.white : Colors.grey,
                        ),
                      ),
                      Text(
                        menu[i].title,
                        style: TextStyle(
                            fontSize: 16,
                            color: selected == i ? Colors.white : Colors.grey,
                            fontWeight: selected == i
                                ? FontWeight.w600
                                : FontWeight.normal),
                      )
                    ],
                  ),
                ),
              ),
          ],
        )),
      ),
    );
  }
}
