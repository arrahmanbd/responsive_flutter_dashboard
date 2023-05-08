import 'package:flutter/material.dart';

import '../constants/colors.dart';

class AppTheme {
  AppTheme._();

  static final lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: MaterialColor(
      primaryColorCode,
      <int, Color>{
        50: const Color(primaryColorCode).withOpacity(0.1),
        100: const Color(primaryColorCode).withOpacity(0.2),
        200: const Color(primaryColorCode).withOpacity(0.3),
        300: const Color(primaryColorCode).withOpacity(0.4),
        400: const Color(primaryColorCode).withOpacity(0.5),
        500: const Color(primaryColorCode).withOpacity(0.6),
        600: const Color(primaryColorCode).withOpacity(0.7),
        700: const Color(primaryColorCode).withOpacity(0.8),
        800: const Color(primaryColorCode).withOpacity(0.9),
        900: const Color(primaryColorCode).withOpacity(1.0),
      },
    ),
    scaffoldBackgroundColor: Color.fromARGB(255, 239, 246, 250),
    cardColor: Color.fromARGB(255, 246, 254, 255),
    cardTheme: CardTheme(elevation: 1),
     dividerColor: cardBackgroundColor,
    fontFamily: 'IBMPlexSans',
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF1976D2),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFD1E4FF),
      onPrimaryContainer: Color(0xFF001D36),
      secondary: Color(0xFF535F70),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFD7E3F7),
      onSecondaryContainer: Color(0xFF101C2B),
      surface: Color(0xFF1976D2),
      onSurface: Color(0xFF1A1C1E),
      surfaceTint: Color(0xFFFFFFFF),
      surfaceVariant: Color(0xFF646870),
      onSurfaceVariant: Color(0xFF001D36),
      error: Color(0xFFBA1A1A),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFFFDAD6),
      onErrorContainer: Color(0xFF001D36),
      brightness: Brightness.light,
      tertiary: Color(0xFF6B5778),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFF2DAFF),
      onTertiaryContainer: Color(0xFF251431),
      outline: Color(0xFF1976D2),
      shadow: Color(0xFF1976D2),
    ),
    brightness: Brightness.light,
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    cardColor:cardBackgroundColor,
    dividerColor: cardBackgroundColor,
    primaryColor: MaterialColor(
      primaryColorCode,
      <int, Color>{
        50: const Color(primaryColorCode).withOpacity(0.1),
        100: const Color(primaryColorCode).withOpacity(0.2),
        200: const Color(primaryColorCode).withOpacity(0.3),
        300: const Color(primaryColorCode).withOpacity(0.4),
        400: const Color(primaryColorCode).withOpacity(0.5),
        500: const Color(primaryColorCode).withOpacity(0.6),
        600: const Color(primaryColorCode).withOpacity(0.7),
        700: const Color(primaryColorCode).withOpacity(0.8),
        800: const Color(primaryColorCode).withOpacity(0.9),
        900: const Color(primaryColorCode).withOpacity(1.0),
      },
    ),
    scaffoldBackgroundColor: Color(0xFF171821),
    
    fontFamily: 'IBMPlexSans',
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF9ECAFF),
      onPrimary: Color.fromARGB(255, 18, 124, 206),
      primaryContainer: Color(0xFF00497D),
      onPrimaryContainer: Color(0xFFD1E4FF),
      secondary: Color(0xFFBBC7DB),
      onSecondary: Color(0xFF253140),
      secondaryContainer: Color(0xFF3B4858),
      onSecondaryContainer: Color(0xFFD7E3F7),
      surface: Color(0xFF17191B),
      onSurface: Color(0xFFE2E2E6),
      surfaceTint: Color(0xFFDADDE2),
      surfaceVariant: Color(0xFFB0B3BA),
      onSurfaceVariant: Color(0xFFD1E4FF),
      error: Color(0xFFFFB4AB),
      onError: Color(0xFF690005),
      errorContainer: Color(0xFF410002),
      onErrorContainer: Color(0xFFD1E4FF),
      brightness: Brightness.dark,
      tertiary: Color(0xFFD6BEE4),
      onTertiary: Color(0xFF3B2948),
      tertiaryContainer: Color(0xFF4A3956),
      onTertiaryContainer: Color(0xFFF2DAFF),
      outline: Color(0xFF9ECAFF),
      shadow: Color(0xFF9ECAFF),
    ),
    brightness: Brightness.dark,
  );
}
