import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/animation/animation_provider.dart';
import 'package:flutter_dashboard/page_control.dart';
import 'package:flutter_dashboard/widgets/menu.dart';
import 'package:flutter_dashboard/Responsive.dart';
import 'package:flutter_dashboard/widgets/profile/profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashBoard extends ConsumerWidget {
  DashBoard({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double animate = ref.watch(scaleAnimation);
    return Scaffold(
        key: _scaffoldKey,
        drawer: !Responsive.isDesktop(context)
            ? SizedBox(width: 250, child: AppMenu(scaffoldKey: _scaffoldKey))
            : null,
        endDrawer: Responsive.isMobile(context)
            ? SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Profile())
            : null,
        body: SafeArea(
          child: Row(
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 3,
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: AppMenu(scaffoldKey: _scaffoldKey)),
                ),
              Expanded(
                flex: 8,
                child: AnimatedScale(
                    duration: const Duration(milliseconds: 350),
                    scale: animate,
                    child: PageControl(scaffoldKey: _scaffoldKey)),
              ),
              if (!Responsive.isMobile(context))
                const Expanded(
                  flex: 4,
                  child: Profile(),
                ),
            ],
          ),
        ));
  }
}
