import 'package:flutter/material.dart';
import 'package:flutter_dashboard/core/constants/colors.dart';
import 'package:flutter_dashboard/dashboard.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/theme/app_theme.dart';
import 'core/theme/theme_provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool toggle = ref.watch(themeProvider);
    return MaterialApp(
      title: 'Flutter Responsive Dashboard',
      debugShowCheckedModeBanner: false,
      themeMode: toggle?ThemeMode.dark:ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      // ThemeData(
      //     primaryColor: MaterialColor(
      //       primaryColorCode,
      //       <int, Color>{
      //         50: const Color(primaryColorCode).withOpacity(0.1),
      //         100: const Color(primaryColorCode).withOpacity(0.2),
      //         200: const Color(primaryColorCode).withOpacity(0.3),
      //         300: const Color(primaryColorCode).withOpacity(0.4),
      //         400: const Color(primaryColorCode).withOpacity(0.5),
      //         500: const Color(primaryColorCode).withOpacity(0.6),
      //         600: const Color(primaryColorCode).withOpacity(0.7),
      //         700: const Color(primaryColorCode).withOpacity(0.8),
      //         800: const Color(primaryColorCode).withOpacity(0.9),
      //         900: const Color(primaryColorCode).withOpacity(1.0),
      //       },
      // ),
      // scaffoldBackgroundColor: Color(0xFF171821),
      // fontFamily: 'IBMPlexSans',
      // brightness: Brightness.dark),
      home: DashBoard(),
    );
  }
}
