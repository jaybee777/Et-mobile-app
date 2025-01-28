import 'package:flutter/material.dart';

class EtColors {
  EtColors._();

  // App basic colors
  static const primary = Color(0xFF4b68ff);
  static const secondary = Color(0xFFFFE24B);
  static const offset = Color(0xff4b68ff);

  // Gradient Colors
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xffff9a9e),
      ]);

  // Text Colors
  static const textprimary = Color(0xFF333333);
  static const textsecondary = Color(0xFF6C7570);
  static const textwhite = Colors.white;

  // Background Colors
  static const light = Color(0xFFF6F6F6);
  static const dark = Color(0xFF272727);
  static const primaryBackground = Color(0xFFF3F5FF);

  // // Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = EtColors.light;

  // Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Error and Validation Color
  static const Color error = Color(0xFFD32F2F);
  static const Color succes = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkergrey = Color(0xFF4F4F4F);
  static const Color darkgrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softgrey = Color(0xFFF4F4F4);
  static const Color lightgrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
