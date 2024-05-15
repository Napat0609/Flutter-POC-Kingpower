import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poc_kingpower/core/style/theme_const.dart';

ThemeData lightTheme(BuildContext context) => FlexThemeData.light(
      colors: const FlexSchemeColor(
        primary: Color(0xFF0062A0),
        primaryContainer: Color(0xFFD0E4FF),
        secondary: Color(0xFF00629F),
        secondaryContainer: Color(0xFFCFE4FF),
        tertiary: Color(0xFF00658E),
        tertiaryContainer: Color(0xFFC7E7FF),
        error: Color(0xFFBA1A1A),
        errorContainer: Color(0xFFFFDAD6),
      ),
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 7,
      subThemesData: const FlexSubThemesData(
        useTextTheme: true,
        useM2StyleDividerInM3: true,
      ),
      keyColors: const FlexKeyColors(
        keepPrimary: true,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
      textTheme: GoogleFonts.montserratTextTheme(),
      primaryTextTheme: GoogleFonts.montserratTextTheme(),
    );

ThemeData darkTheme(BuildContext context) => FlexThemeData.dark(
      colors: const FlexSchemeColor(
        primary: Color(0xFF9CCAFF),
        primaryContainer: Color(0xFF00497A),
        secondary: Color(0xFF9ACBFF),
        secondaryContainer: Color(0xFF004A79),
        tertiary: Color(0xFF84CFFF),
        tertiaryContainer: Color(0xFF004C6C),
        error: Color(0xFFFFB4AB),
        errorContainer: Color(0xFF93000A),
      ),
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 13,
      subThemesData: const FlexSubThemesData(
        useTextTheme: true,
        useM2StyleDividerInM3: true,
      ),
      keyColors: const FlexKeyColors(
        keepTertiary: true,
        keepSecondaryContainer: true,
        keepTertiaryContainer: true,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
      textTheme: GoogleFonts.montserratTextTheme(),
      primaryTextTheme: GoogleFonts.montserratTextTheme(),
    );

ThemeMode currentTheme(String? theme) {
  switch (theme) {
    case null:
      return ThemeMode.light;
    case kLight:
      return ThemeMode.light;
    case kDark:
      return ThemeMode.dark;
    default:
      return ThemeMode.system;
  }
}
