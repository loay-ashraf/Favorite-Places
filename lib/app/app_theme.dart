import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData light() {
    final ColorScheme kColorScheme = ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: const Color.fromARGB(255, 102, 6, 247),
      background: const Color.fromARGB(255, 56, 49, 66),
    );

    return ThemeData().copyWith(
      scaffoldBackgroundColor: kColorScheme.background,
      colorScheme: kColorScheme,
      textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
        titleSmall: GoogleFonts.ubuntuCondensed(
          fontWeight: FontWeight.bold,
        ),
        titleMedium: GoogleFonts.ubuntuCondensed(
          fontWeight: FontWeight.bold,
        ),
        titleLarge: GoogleFonts.ubuntuCondensed(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static ThemeData dark() {
    final ColorScheme kColorScheme = ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: const Color.fromARGB(255, 102, 6, 247),
      background: const Color.fromARGB(255, 56, 49, 66),
    );

    return ThemeData().copyWith(
      scaffoldBackgroundColor: kColorScheme.background,
      colorScheme: kColorScheme,
      textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
        titleSmall: GoogleFonts.ubuntuCondensed(
          fontWeight: FontWeight.bold,
        ),
        titleMedium: GoogleFonts.ubuntuCondensed(
          fontWeight: FontWeight.bold,
        ),
        titleLarge: GoogleFonts.ubuntuCondensed(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
