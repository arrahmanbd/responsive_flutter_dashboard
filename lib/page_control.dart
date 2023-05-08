import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/utils/not_found.dart';
import 'package:flutter_dashboard/views/auth/auth.dart';
import 'package:flutter_dashboard/views/home/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controller/navigation_controller.dart';
import 'views/config/settings.dart';
import 'views/feed/news_feed.dart';
import 'views/profile/profile.dart';

class PageControl extends ConsumerWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const PageControl({
    super.key,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var page = ref.watch(navigationProvider);
    switch (page) {
      case 0:
        return HomePage(scaffoldKey: scaffoldKey);
      case 1:
        return TimeLine() ;
      case 2:
        return ProfileView();
      case 3:
        return AuthPage()  ;
      case 4:
        return SettingsPage();
      default:
        const Center(child: CircularProgressIndicator());
    }
    return const NotFound();
  }
}
